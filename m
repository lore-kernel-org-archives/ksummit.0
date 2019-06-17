Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2E046C77
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 13:50:37 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B03E97DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 13:50:36 +0000 (UTC)
Date: Mon, 17 Jun 2019 09:50:32 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190617135032.GA20586@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] [TECH TOPIC] Memory management bits in arch/*
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Mike Rapoport <rppt@linux.ibm.com>

[ Note: The following abstract was submitted via the Linux Plumbers
  Conference website.  Per the instructions that were posted for the
  Maintainer's / Kernel Summit Call for Proposals[1], the proposal
  should also be posted on the ksummit-discuss list, so that people
  can comment on the proposal, and perhaps start a discussion before
  the summit.

  [1] https://lwn.net/Articles/788378/

  Please note that topic proposals for both the Kernel Summit and the
  Maintainer's Summit are still welcome, although if you submit to the
  Kernel Summit track at this point, please note that you will need to
  have a registration to the Linux Plumbers Conference to attend.  -- Ted ]

There is a lot of similar and duplicated code in architecture specific
bits of memory management.

For instance, most architectures have

	#define PGALLOC_GFP (GFP_KERNEL | __GFP_ZERO)

for allocating page table pages and many of them use similar, if not
identical, implementation of pte_alloc_one*().

But that's only the tip of the iceberg.

There are several early_alloc() or similarily called routines that do

	if (slab_is_available())
	    return kzalloc();
	else
	    return memblock_alloc();

Some other trivial examples are free_initmem(), free_initrd_mem()
which were nearly identical accross many architectures until very
recently.

More complex cases are per-cpu initialization, passing of memory
topology to the generic MM, reservation of crash kernel, mmap of vdso
etc. They are not really duplicated, but still are very similar in at
least several architectures.

While factoring out the common code is an obvious step to take, I
believe there is also room for refining arch <-> mm interface to avoid
adding extra HAVE_ARCH_NO_BOOTMEM^w^wWHAT_NOT and then searching for the
ways to get rid of them.
