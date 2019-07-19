Return-Path: <christian@brauner.io>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D99D42426
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 19 Jul 2019 09:35:58 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2437DF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 19 Jul 2019 09:35:58 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id a15so28122569wmj.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 19 Jul 2019 02:35:58 -0700 (PDT)
Date: Fri, 19 Jul 2019 11:35:54 +0200
From: Christian Brauner <christian@brauner.io>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190719093538.dhyopljyr5ns33qx@brauner.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [Ksummit-discuss]  [TECH TOPIC] seccomp
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hey everyone,

I would like to discuss approaches to enabling deep argument inspection
with seccomp and if we reach an agreement am also happy to do the work
and implement it.

Recently we landed seccomp support for SECCOMP_RET_USER_NOTIF which
enables a process (watchee) to retrieve a fd for its seccomp filter.
This fd can then be handed to another (usually more privileged)
process (watcher).
The watcher will then be able to receive seccomp messages about the
syscalls having been performed by the watchee.

I have integrated this feature into userspace. We currently make heavy
use of this to intercept mknod() syscalls in user namespaces aka in
containers.
If the mknod() syscall matches a device in a pre-determined whitelist
the privileged watcher will perform the mknod syscall in lieu of the
unprivileged watchee and report back to the watchee on the success or
failure of its attempt. If the syscall does not match a device in a
whitelist we simply report an error.

We recently also started to intercept the setxattr() syscall to allow
the creation of various, well-known xattrs including
trusted.overlay.opaque.

The mknod() syscall can be easily filtered based on dev_t. This allows
us to only intercept a very specific subset of mknod() syscalls.
Furthermore, mknod() is not possible in user namespaces toto coelo and
so intercepting and denying syscalls that are not in the whitelist on
accident is not a big deal. The watchee won't notice a difference.

In contrast to mknod(), setxattr() and many other syscalls that we would
like to intercept suffer from two major problems:
1. they are not easily filterable like mknod() because they have pointer
   arguments
2. some of them might actually succeed in user namespaces already (e.g.
   fscaps etc.)

The 1. problem is not specific to SECCOMP_RET_USER_NOTIF but also
apparently affects future system call design.
We recently merged the clone3() syscall into mainline which moves the
flag from a register argument into a dedicated extensible struct
clone_args to lift the flag limit from legacy clone() and allowing for
extensions while supporting all legacy workloads.

One of the counter arguments leveraged against my design early on was
that this means clone3() cannot be easily filtered by seccomp due to 1.
This argument was fortunately not seen as defeating.
I would argue that there sure is value in trying to design syscalls that
can be handled by seccomp nicely but that seccomp can't become a burden
on designing extensible syscalls.
The openat2() syscall proposed currenly also does use a dedicated
argument struct which contains flags and the seccomp argument popped
back up again.

In light of all this, I would argue that we should seriously look into
extending seccomp to allow filtering on pointer arguments.

There is a close connection between 1. and 2. When a watcher intercepts
a syscall from a watchee and starts to inspect its arguments it can -
depending on the syscall rather often actually - determine whether or
not the syscall would succeed or fail. If it knows that the syscall will
succeed it currently still has to perform it in lieu of the watchee
since there is no way to tell the kernel to "resume" or actually perform
the syscall. It would be nice if we could discuss approaches to enabling
this feature as well.

I'm happy to lead this session and can also illustrate how this feature
is heavily used and how we run into its limitations.

Thanks!
Christian
