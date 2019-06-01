Return-Path: <rppt@linux.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59D92E51
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Jun 2019 19:53:15 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DB5BEE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Jun 2019 19:53:14 +0000 (UTC)
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x51Jpp4X132733 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 1 Jun 2019 15:53:13 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
	by mx0b-001b2d01.pphosted.com with ESMTP id 2sungdpr6j-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 01 Jun 2019 15:53:13 -0400
Received: from localhost
	by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<rppt@linux.ibm.com>; Sat, 1 Jun 2019 20:53:12 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
	[9.149.105.61])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id x51Jr9sP42401908
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK) for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 1 Jun 2019 19:53:09 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2360011C04A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Jun 2019 19:53:09 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 843F811C04C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Jun 2019 19:53:08 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.206.175])
	by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Jun 2019 19:53:08 +0000 (GMT)
Date: Sat, 1 Jun 2019 22:53:06 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Message-Id: <20190601195305.GB9609@rapoport-lnx>
Subject: [Ksummit-discuss] [TECH TOPIC] Memory management bits in arch/*
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

There is a lot of similar and duplicated code in architecture specific bits
of memory management.

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

Some other trivial examples are free_initmem(), free_initrd_mem() which
were nearly identical accross many architectures until very recently.

More complex cases are per-cpu initialization, passing of memory topology
to the generic MM, reservation of crash kernel, mmap of vdso etc. They are
not really duplicated, but still are very similar in at least several
architectures.

While factoring out the common code is an obvious step to take, I believe
there is also room for refining arch <-> mm interface to avoid adding extra
HAVE_ARCH_NO_BOOTMEM^w^wWHAT_NOT and then searching for the ways to get rid
of them.

-- 
Sincerely yours,
Mike.
