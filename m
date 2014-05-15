Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8928D48E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 22:37:43 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 22A412010F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 22:37:43 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 15 May 2014 23:37:32 +0100
Message-ID: <1398.1400193452@warthog.procyon.org.uk>
Subject: [Ksummit-discuss] [CORE TOPIC] Further include file restructuring
	and cleanups
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


At the risk of raising Linus's ire, I would like to suggest that we consider
performing some further header file restructuring and cleanups to make the
compilation environment more amenable.

I previously laid out the following steps that I would like to see:

 (1) Split the Userspace API (UAPI) out of the kernel headers into its own
     header directories.

     Mostly done.  This was, by far, the trickiest step in that it had the most
     dependencies to deal with.  There are some cleanups still to be done:

     (*) __KERNEL__ shouldn't appear in any non-UAPI header, but there are
	 still some, eg:

		warthog>grep __KERNEL__ include/linux/*.h | wc -l
		97

	 The UAPI split ignored these if they weren't in an exported header
	 file.

     (*) __KERNEL__ ideally shouldn't appear in UAPI headers, but sometimes
	 that's unavoidable.  I've been occasionally looking at trying to fix
	 up some of these, but occasionally it involves things like changing
	 the contents of structures.

     (*) CONFIG_xxx symbols shouldn't appear in UAPI headers at all.

		warthog>grep -r [^_]CONFIG_ `find -name uapi -type d` | wc -l
		83

 (2) Move stuff out of the Kernel API (KAPI) headers that can be contained in
     individual directories as it is referenced by a single file or directory
     of files.

     procfs done.  Plenty of other stuff to do, I suspect.

 (3) Make coherent what can be found in commmon arch headers and disintegrate
     asm/system.h.

     asm/system.h has been disintegrated.  I think other people are gradually
     cohering the other arch headers.

 (4) Split some headers into definitions containers and inline function
     containers to clean up recursion problems.  The following headers at least
     should be looked at:

     (*) linux/sched.h

	 task_struct is quite icky because of the dependencies that that struct
	 has on a host of other things.  The issue is compounded by inline
	 functions in the same header.

     (*) linux/mm.h

	 Some of the stuff here is needed by filesystem code, but a lot of it
	 isn't and is used by the core/arch mm code.  This could be split along
	 those lines.

 (5) I'd like to split some headers to reduce the conditional recompilation
     burden, for example:

     (*) linux/sched.h

	 There's quite a lot in here that isn't relevant to code outside of the
	 process scheduler, but a lot of code outside of the core scheduler
	 needs the header because it contains the definition for task_struct.

	 This could be split to place some of the scheduler private stuff (in
	 particular inline functions) into a separate header.
    
     (*) linux/fs.h
    
	 This might be splittable between the "VFS API" and the "FS API" where
	 the VFS API is things like vfs_create() and vfs_mkdir() that are used
	 to drive the VFS and the FS API things that the VFS uses to talk to
	 filesystems.
    
     (*) linux/security.h
    
	 This should probably be split to put struct security_operations and
	 the manager functions for it into a separate header.  The security
	 layer is wangled from outside of the security code through API
	 functions that are all out of line if security is enabled.
    
     (*) linux/audit.h
    
	 This looks like it could be split to put the audit API that the rest
	 of the kernel sees in a separate header to the internal stuff.

 (6) Replace the traditional anti-reinclusion guards on header files with
     three-state anti-recursion guards that abort compilation if recursive
     inclusion is encountered.

 (7) Provide a script to go through and rejig the #includes of each source file
     to have just the ones that are actually required (a lot of cut'n'pasting
     goes on, and there are quite a few unnecessary #includes out there).

 (8) Provide a make target that tests all the KAPI and UAPI headers by simply
     passing them one at a time to the compiler and attempting to compile them.

A tool I'd really like is something that can trawl the header files and build
up a db of what's there and then trawl all source files and pick out what
header fragments are used by single files or single dirs.

David
