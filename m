Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 732D8982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 16:59:35 +0000 (UTC)
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A02BD20240
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 16:59:34 +0000 (UTC)
Received: by mail-la0-f48.google.com with SMTP id gl10so11522180lab.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 09:59:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140819173125.GA17432@linux.vnet.ibm.com>
References: <20140819173125.GA17432@linux.vnet.ibm.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Sun, 24 Aug 2014 09:59:12 -0700
Message-ID: <CALCETrW0Enh85-4+YC4Kk7snbEFQjgf5ttsA3GGr2+0SN9yHjA@mail.gmail.com>
To: Paul McKenney <paulmck@linux.vnet.ibm.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] On the off-chance that my mount() notes are
	at all useful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 19, 2014 at 10:31 AM, Paul E. McKenney
<paulmck@linux.vnet.ibm.com> wrote:
> o       Mount based on file descriptor.  Generated from openfs()
>         or some such.  Ted: Want mount(), remount(), bind(), as separate
>         things.
>
>         Have a mountf() for mounting an openfs()ed filesystem.
>
>         Al: Ouch.
>
>         Andy: Want to distinguish between this mount is read-only
>         and the underlying device will no longer be written to.
>
>         Al: Three piles of garbage, not two.  Need to take care about
>         userids and such.  Some of the per-superblock flags are not
>         entirely private to a given filesystem, some are visible
>         to the VFS layer.
>
>         Al: First syscall to start mounting could establish an open
>         descriptor.  But the descriptor would not be a root directory,
>         but rather a channel for talking to a filesystem driver.  Then
>         you can feed the parameters to the filesystem driver as needed,
>         rather than dumping them into the open() system call.
>
>         Al: If you want horrors, look at ncpfs (sp?).  This illustrates
>         why just getting the root directory is wrong.  Root directory
>         is initially empty, after some operations it suddenly has
>         files in it.
>
>         Al: Given that the syscalls are often followed by one another,
>         why have them separated?
>
>         Al: If we are going to have this FD, then we should keep the
>         FD around for the duration.  Closing it would get rid of
>         everything.  Use FD to talk to filesystem driver throughout.
>         Don't need a process to hang around.
>
>         Al: Note that unmount operates purely on the namespace.  You
>         might still have open files on the unmounted filesystem, so
>         the filesystem is still around.
>
>         Some discussion about getting the FD given a mounted filesystem.
>         Interaction between FD and shutdown.
>
>         Al: But if FD is around, someone might remount filesystem.
>         So some hair if using FD to wait for all files from the
>         filesystem to be closed.
>
>         Mount over symlinks?
>
>         Al: Need to be careful here.  Last I looked, this would be
>         extremely painful.  Easier to hide a directory with a symlink
>         than vice versa.
>
>         Discussion of an openat() and security holes.
>
>         Ted: Can pass a directory FD across a UNIX-domain socket and
>         then do openat(), so security issue already exists.  More
>         fun with mountat().
>
>         Al: Completely insane, greatly increases attack surface.
>
>         Ted: FS fuzzers giving bugs are first-class bugs.  But cloud
>         sysadmins might not like the attack surface.
>
>         Serge: Use fuse to mediate security.
>

Here are my notes on features that I want, augmented some by the discussion:

Requirements:

 - Syscalls that just affects mount points

 - Mount by fd.

 - Overmounting / should be useful (e.g. return an fd,
mount-and-chdir, etc.)  Currently, using mount(2) to mount on top of
'/' is mostly useless, because there is no way to chdir to the new
mount, to chroot to it, or to get an fd for it.

 - Cross-ns bind mount.  That is, I want to be able to mount a foreign
fd into my namespace.  This doesn't really need a new API, but it
would be a lot cleaner if we could use SCM_RIGHTS for this without
mucking with /proc/self/fd.

 - Don't follow symlinks, at least optionally.  Al Viro says that
mounting on top of certain types of objects might be impossible, but
I'd like to extend the set of possible overmounts.

 - Clear separation of superblock flags and mount flags.  The
read-only flag is somewhat special, but I think that it can be managed
cleanly.

 - Explicit set/clear mount flags.  Setting the read-only bit
shouldn't involve reading the old flags with a separate syscall.

 - Bind and set/clear flags at the same time.  (e.g. create a new
read-only bind mount atomically.)

 - Leave room for unions.  I'm not sure what this entails.


Here's a possible piece of a new API:

int mount_bind(int sourcefd, int destdfd, const char *destpath, int
opflags, int clearflags, int setflags);

opflags include BINDMNT_CHDIR, AT_NOFOLLOW, etc.  The setflags are
ored into the flags from the source, and the clearflags are cleared.
Other flags are left unchanged.  if (setflags & clearflags), -EINVAL
is returned.


int mount_changebindflags(int dfd, const char *path, int opflags, int
clearflags, int setflags);


Al Viro mentioned that, for a new fs (as opposed to a bind mount), we
want a control fd for a file system, on which we can send commands,
close (i.e. superblock shutdown), and change flags.

--Andy
