Return-Path: <SRS0=vt9t=AC=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAB1C433E0
	for <ksummit-discuss@archiver.kernel.org>; Sun, 21 Jun 2020 09:05:56 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DCAFD2076E
	for <ksummit-discuss@archiver.kernel.org>; Sun, 21 Jun 2020 09:05:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DCAFD2076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 98CE488E33;
	Sun, 21 Jun 2020 09:05:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RpIeZZ806FS3; Sun, 21 Jun 2020 09:05:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 831E289342;
	Sun, 21 Jun 2020 09:05:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 54E58C07FF;
	Sun, 21 Jun 2020 09:05:52 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0C15AC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 21 Jun 2020 09:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E522B86AE1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 21 Jun 2020 09:05:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gyCLDLQo1TWI
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 21 Jun 2020 09:05:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 231D286AE0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 21 Jun 2020 09:05:49 +0000 (UTC)
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05L931A9110610; Sun, 21 Jun 2020 05:05:46 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 31svhc0sqj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 21 Jun 2020 05:05:46 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
 by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05L901Jn006685;
 Sun, 21 Jun 2020 09:05:45 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com
 (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
 by ppma03ams.nl.ibm.com with ESMTP id 31sa381kwu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 21 Jun 2020 09:05:44 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 05L95g1V45809760
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 21 Jun 2020 09:05:42 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 944414C046;
 Sun, 21 Jun 2020 09:05:42 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E7FE94C044;
 Sun, 21 Jun 2020 09:05:41 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.202.246])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sun, 21 Jun 2020 09:05:41 +0000 (GMT)
Date: Sun, 21 Jun 2020 12:05:39 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20200621090539.GM6493@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-21_03:2020-06-19,
 2020-06-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 clxscore=1015 mlxlogscore=955 spamscore=0 cotscore=-2147483648
 phishscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006210069
Cc: Marius Hillenbrand <mhillenb@amazon.de>,
 Alexandre Chartre <alexandre.chartre@oracle.com>
Subject: [Ksummit-discuss]  [TECH TOPIC] restricted kernel address spaces
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

Hi,

This proposal is recycled from the one I've suggested to LSF/MM/BPF [0]. 
Unfortunately, LSF/MM/BPF was cancelled, but I think it is still
relevant.

Restricted mappings in the kernel mode may improve mitigation of hardware
speculation vulnerabilities and minimize the damage exploitable kernel bugs
can cause.

There are several ongoing efforts to use restricted address spaces in
Linux kernel for various use cases:
* speculation vulnerabilities mitigation in KVM [1]
* support for memory areas with more restrictive protection that the
  defaults ("secret", or "protected" memory) [2], [3], [4]
* hardening of the Linux containers [ no reference yet :) ]

Last year we had vague ideas and possible directions, this year we have
several real challenges and design decisions we'd like to discuss:

* "Secret" memory userspace APIs

  Should such API follow "native" MM interfaces like mmap(), mprotect(),
  madvise() or it would be better to use a file descriptor , e.g. like
  memfd-create does?

  MM "native" APIs would require VM_something flag and probably a page flag
  or page_ext. With file-descriptor VM_SPECIAL and custom implementation of
  .mmap() and .fault() would suffice. On the other hand, mmap() and
  mprotect() seem better fit semantically and they could be more easily
  adopted by the userspace.

* Direct/linear map fragmentation

  Whenever we want to drop some mappings from the direct map or even change
  the protection bits for some memory area, the gigantic and huge pages
  that comprise the direct map need to be broken and there's no THP for the
  kernel page tables to collapse them back. Moreover, the existing API
  defined in <asm/set_memory.h> by several architectures do not really
  presume it would be widely used.

  For the "secret" memory use-case the fragmentation can be minimized by
  caching large pages, use them to satisfy smaller "secret" allocations and
  than collapse them back once the "secret" memory is freed. Another
  possibility is to pre-allocate physical memory at boot time.

  Yet another idea is to make page allocator aware of the direct map layout.

* Kernel page table management

  Currently we presume that only one kernel page table exists (well,
  mostly) and the page table abstraction is required only for the user page
  tables. As such, we presume that 'page table == struct mm_struct' and the
  mm_struct is used all over by the operations that manage the page tables.

  The management of the restricted address space in the kernel requires
  ability to create, update and remove kernel contexts the same way we do
  for the userspace.

  One way is to overload the mm_struct, like EFI and text poking did. But
  it is quite an overkill, because most of the mm_struct contains
  information required to manage user mappings.

  My suggestion is to introduce a first class abstraction for the page
  table and then it could be used in the same way for user and kernel
  context management. For now I have a very basic POC that slitted several
  fields from the mm_struct into a new 'struct pg_table' [5]. This new
  abstraction can be used e.g. by PTI implementation of the page table
  cloning and the KVM ASI work.

[0] https://lore.kernel.org/linux-mm/20200206165900.GD17499@linux.ibm.com/ 
[1] https://lore.kernel.org/lkml/20200504145810.11882-1-alexandre.chartre@oracle.com
[2] https://lore.kernel.org/lkml/20190612170834.14855-1-mhillenb@amazon.de/
[3] https://lore.kernel.org/lkml/20200130162340.GA14232@rapoport-lnx/
[4] https://lore.kernel.org/lkml/20200522125214.31348-1-kirill.shutemov@linux.intel.com
[5] https://git.kernel.org/pub/scm/linux/kernel/git/rppt/linux.git/log/?h=pg_table/v0.0

-- 
Sincerely yours,
Mike.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
