Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 732FC3EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 24 Jul 2015 16:10:50 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E01E879
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 24 Jul 2015 16:10:49 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <28240.1437753683@warthog.procyon.org.uk>
References: <28240.1437753683@warthog.procyon.org.uk>
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Jul 2015 17:10:45 +0100
Message-ID: <22483.1437754245@warthog.procyon.org.uk>
Subject: [Ksummit-discuss] [TECH TOPIC] Overlays and file(system) unioning
	issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


[With Mikl=C3=B3s's email address fixed]

I would like to propose a technical session on filesystem unioning.  There =
are
a number of issues:

 (1) Whiteouts.

     Linus's idea that a union layer or overlay mounted not as part of a un=
ion
     but separately, should expose whiteouts as 0,0 chardevs.  Whilst this
     might indeed make the backup tools easier as things like tar can then =
use
     the stat() and mknod() interfaces rather than having to use special
     ioctls or syscalls, Mikl=C3=B3s's idea to implement them as actual 0,0
     chardevs in the underlying filesystem incurs some problems:

     (a) It's slow and resource intensive.

     	 Every whiteout requires an inode to represent it.  This means that if
     	 you, say, have a directory in the lower layer that has a few thousand
     	 inodes in it and you delete them all, you then eat up inode table
     	 space in the upper layer.

	 Further, every chardev inode has to be stat'd to see if it is really
	 a whiteout.

     (b) It has provided lock ordering issues in overlayfs directory reading
     	 because overlayfs has to stat each chardev from within the directory
     	 iterator.

     I have patches to make Ext2 and JFFS2 use special directory entries
     labelled with DT_WHITEOUT and no inode.  This is more space efficient =
and
     faster and can be extended to Ext3 and Ext4.  XFS has constants defined
     for doing similar.

     I would propose that we change overlayfs to do this.

     Unfortunately, we would still have to support the then obsolete 0,0
     chardevs on disk.

     The stat() and mknod() syscalls would then have to present these objec=
ts
     to the user as 0,0 chardevs rather than ENOENT errors.  To do this it
     might be necessary to have a special mount flag to turn off the
     translation to DENTRY_WHITEOUT_TYPE dentries and record them as
     DENTRY_SPECIAL_TYPE instead with an in-memory inode struct showing it =
to
     be 0,0 chardevs.

     David Woodhouse did make an additional suggestion that would make 0,0
     chardevs less space inefficient - and that's to hard link a reserved
     inode.

 (2) Opaque inodes.

     Should we use an xattr to mark inodes as opaque or should we use an in=
ode
     flag?  I have patches to add such an inode flag for Ext2 and JFFS2.
     Marking the inode would be more space and time efficient.

 (3) Fall-through markers.

     Unionmount - and possibly other filesystem unioning systems - perform
     directory integration on disk.  (Note that overlayfs maintains this in
     memory for the lifetime of a directory inode).

     With unionmount, an integrated directory is marked as being opaque with
     special directory entries of type DT_FALLTHRU indicating where there is
     stuff in lower layers that can be accessed.

     Should we, perhaps, declare that the user sees such markers as 0,1
     chardevs when the layer is not mounted as part of a union?

 (4) Unionmount and other filesystem unioning systems.

     Do we want to add other filesystem unioning systems into the kernel?
     I've brought in a lot of the stuff for unionmount to help support
     overlayfs.  Unfortunately, overlayfs interferes with some of the stuff
     that unionmount wants to do (e.g. doing whiteouts differently and in an
     awkward manner).

 (5) Lack of POSIX characteristics.

     There have been complaints that overlayfs isn't sufficiently POSIX lik=
e.
     Now, this is by design on the part of overlayfs and I agree with the
     Mikl=C3=B3s that this is the right way to do it.  However, some mitiga=
tion
     might be required.

     One of the most annoying features is the fact that if you do:

	fd1 =3D open("foo", O_RDONLY);
	fd2 =3D open("foo", O_RDWR);

     then fd1 and fd2 don't necessarily point to the same file.

     I have been given patches by Ratna Bolla that speculatively copy the f=
ile
     into the overlayfs file inode as the pages are accessed and direct file
     accesses to the overlay inode rather than one of the two layers.  I sa=
w a
     number of problems with the approach, but it's possible his latest pat=
ch
     fixes them.

 (6) File-by-file waiver of unioning.

     Jan Olszak has requested that it be possible to mark files in one of t=
he
     layers to suppress copy up on that file and to direct writes to the lo=
wer
     layer.  This causes problems with rename however.

 (7) File locking and notifications.

     These are similar issues.  IIRC, we decided at the Filesystem Summit t=
hat
     you get to take locks on the union inode only and that the notificatio=
ns
     only follow changes to the upper layer.  This means that you don't get
     union/union interactions through a common lower layer.

     However, we've since had complaints that tail doesn't follow changes m=
ade
     to the lower layer (from James Harvey).

 (8) LSMs and unions/overlays.

     Path-based LSMs should just work now that file->f_path points to the
     union layer inode, though they may require namespace awareness.

     Label-based LSMs are another matter.  file->f_path.dentry->d_inode poi=
nts
     to the top layer label and file->f_inode points to the lower layer lab=
el.
     Currently the user of the overlay can 'see through' the overlay and
     access lower files in terms of the labels from the lower layer when do=
ing
     file operations, but uses the label from the upper layer when doing in=
ode
     operations.  I think this should be consistent and should only use the
     upper layer label.  I'm working on patches to get this to work, but th=
ere
     is dissension over which label should be seen.

     Further, mandating that the upper label should be seen does cause
     unionmount a problem as there's no upper inode to hang the label off.
     This means that the label must be forged anew each time it is required
     until at such time a copy-up is effected.

David
