Return-Path: <jiangshanlai@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C685945E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 25 Jul 2015 15:39:51 +0000 (UTC)
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 080CAEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 25 Jul 2015 15:39:50 +0000 (UTC)
Received: by iehx8 with SMTP id x8so38079344ieh.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 25 Jul 2015 08:39:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <87twst8pd3.fsf@x220.int.ebiederm.org>
References: <28240.1437753683@warthog.procyon.org.uk>
	<22483.1437754245@warthog.procyon.org.uk>
	<87twst8pd3.fsf@x220.int.ebiederm.org>
Date: Sat, 25 Jul 2015 23:39:50 +0800
Message-ID: <CAJhGHyA8SAk25t9V-Jg6-zwnZrHthQN_FjkWeG6a6GZ9gnqh-w@mail.gmail.com>
From: Lai Jiangshan <jiangshanlai@gmail.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org,
	"Serge E. Hallyn" <serge@hallyn.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Overlays and file(system)
	unioning issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 25, 2015 at 12:58 AM, Eric W. Biederman
<ebiederm@xmission.com> wrote:
> David Howells <dhowells@redhat.com> writes:
>
>> [With Mikl=C3=B3s's email address fixed]
>>
>> I would like to propose a technical session on filesystem unioning.  The=
re are
>> a number of issues:
>>
>>  (1) Whiteouts.
>>
>>      Linus's idea that a union layer or overlay mounted not as part of a=
 union
>>      but separately, should expose whiteouts as 0,0 chardevs.  Whilst th=
is
>>      might indeed make the backup tools easier as things like tar can th=
en use
>>      the stat() and mknod() interfaces rather than having to use special
>>      ioctls or syscalls, Mikl=C3=B3s's idea to implement them as actual =
0,0
>>      chardevs in the underlying filesystem incurs some problems:
>>
>>      (a) It's slow and resource intensive.
>>
>>        Every whiteout requires an inode to represent it.  This means tha=
t if
>>        you, say, have a directory in the lower layer that has a few thou=
sand
>>        inodes in it and you delete them all, you then eat up inode table
>>        space in the upper layer.
>>
>>        Further, every chardev inode has to be stat'd to see if it is rea=
lly
>>        a whiteout.
>>
>>      (b) It has provided lock ordering issues in overlayfs directory rea=
ding
>>        because overlayfs has to stat each chardev from within the direct=
ory
>>        iterator.
>>
>>      I have patches to make Ext2 and JFFS2 use special directory entries
>>      labelled with DT_WHITEOUT and no inode.  This is more space efficie=
nt and
>>      faster and can be extended to Ext3 and Ext4.  XFS has constants def=
ined
>>      for doing similar.
>>
>>      I would propose that we change overlayfs to do this.
>>
>>      Unfortunately, we would still have to support the then obsolete 0,0
>>      chardevs on disk.
>>
>>      The stat() and mknod() syscalls would then have to present these ob=
jects
>>      to the user as 0,0 chardevs rather than ENOENT errors.  To do this =
it
>>      might be necessary to have a special mount flag to turn off the
>>      translation to DENTRY_WHITEOUT_TYPE dentries and record them as
>>      DENTRY_SPECIAL_TYPE instead with an in-memory inode struct showing =
it to
>>      be 0,0 chardevs.
>>
>>      David Woodhouse did make an additional suggestion that would make 0=
,0
>>      chardevs less space inefficient - and that's to hard link a reserve=
d
>>      inode.
>
>
>>  (2) Opaque inodes.
>>
>>      Should we use an xattr to mark inodes as opaque or should we use an=
 inode
>>      flag?  I have patches to add such an inode flag for Ext2 and JFFS2.
>>      Marking the inode would be more space and time efficient.
>>
>>  (3) Fall-through markers.
>>
>>      Unionmount - and possibly other filesystem unioning systems - perfo=
rm
>>      directory integration on disk.  (Note that overlayfs maintains this=
 in
>>      memory for the lifetime of a directory inode).
>>
>>      With unionmount, an integrated directory is marked as being opaque =
with
>>      special directory entries of type DT_FALLTHRU indicating where ther=
e is
>>      stuff in lower layers that can be accessed.
>>
>>      Should we, perhaps, declare that the user sees such markers as 0,1
>>      chardevs when the layer is not mounted as part of a union?
>>
>>  (4) Unionmount and other filesystem unioning systems.
>>
>>      Do we want to add other filesystem unioning systems into the kernel=
?
>>      I've brought in a lot of the stuff for unionmount to help support
>>      overlayfs.  Unfortunately, overlayfs interferes with some of the st=
uff
>>      that unionmount wants to do (e.g. doing whiteouts differently and i=
n an
>>      awkward manner).
>>
>>  (5) Lack of POSIX characteristics.
>>
>>      There have been complaints that overlayfs isn't sufficiently POSIX =
like.
>>      Now, this is by design on the part of overlayfs and I agree with th=
e
>>      Mikl=C3=B3s that this is the right way to do it.  However, some mit=
igation
>>      might be required.
>>
>>      One of the most annoying features is the fact that if you do:
>>
>>       fd1 =3D open("foo", O_RDONLY);
>>       fd2 =3D open("foo", O_RDWR);
>>
>>      then fd1 and fd2 don't necessarily point to the same file.
>>
>>      I have been given patches by Ratna Bolla that speculatively copy th=
e file
>>      into the overlayfs file inode as the pages are accessed and direct =
file
>>      accesses to the overlay inode rather than one of the two layers.  I=
 saw a
>>      number of problems with the approach, but it's possible his latest =
patch
>>      fixes them.
>>
>>  (6) File-by-file waiver of unioning.
>>
>>      Jan Olszak has requested that it be possible to mark files in one o=
f the
>>      layers to suppress copy up on that file and to direct writes to the=
 lower
>>      layer.  This causes problems with rename however.
>>
>>  (7) File locking and notifications.
>>
>>      These are similar issues.  IIRC, we decided at the Filesystem Summi=
t that
>>      you get to take locks on the union inode only and that the notifica=
tions
>>      only follow changes to the upper layer.  This means that you don't =
get
>>      union/union interactions through a common lower layer.
>>
>>      However, we've since had complaints that tail doesn't follow change=
s made
>>      to the lower layer (from James Harvey).
>>
>>  (8) LSMs and unions/overlays.
>>
>>      Path-based LSMs should just work now that file->f_path points to th=
e
>>      union layer inode, though they may require namespace awareness.
>>
>>      Label-based LSMs are another matter.  file->f_path.dentry->d_inode =
points
>>      to the top layer label and file->f_inode points to the lower layer =
label.
>>      Currently the user of the overlay can 'see through' the overlay and
>>      access lower files in terms of the labels from the lower layer when=
 doing
>>      file operations, but uses the label from the upper layer when doing=
 inode
>>      operations.  I think this should be consistent and should only use =
the
>>      upper layer label.  I'm working on patches to get this to work, but=
 there
>>      is dissension over which label should be seen.
>>
>>      Further, mandating that the upper label should be seen does cause
>>      unionmount a problem as there's no upper inode to hang the label of=
f.
>>      This means that the label must be forged anew each time it is requi=
red
>>      until at such time a copy-up is effected.
>>
>
> (9) Unprivileged mounts
>
>     As there are no backing store issues it should be a tractable
>     problem to get the semantics right to allow containers to use
>     overlayfs.  A naive attempt was made by Serge Hallyn and he ran
>     into security issues with copy-up.  Can copy-up be made safe if
>     unprivileged users (AKA user namespace root users) mount overlayfs?
>
>     I think that also intersects with your LSM label handling issues.

(10) Big File copy-up
       Small modification to a big file causes copy-up and eat a lot of
       space in the uper layer fs.

(11) size-optimization diff
       size-optimization diff helps to reduce the network traffic.

thanks,
Lai


>
> Eric
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
