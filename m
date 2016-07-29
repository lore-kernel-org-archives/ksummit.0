Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D7159950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 17:57:41 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 73990181
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 17:57:41 +0000 (UTC)
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6THtXgb108530 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 13:57:41 -0400
Received: from e28smtp04.in.ibm.com (e28smtp04.in.ibm.com [125.16.236.4])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24fcvy5md2-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 13:57:40 -0400
Received: from localhost
	by e28smtp04.in.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Fri, 29 Jul 2016 23:27:37 +0530
Received: from d28relay03.in.ibm.com (d28relay03.in.ibm.com [9.184.220.60])
	by d28dlp01.in.ibm.com (Postfix) with ESMTP id E3038E0040
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 23:31:50 +0530 (IST)
Received: from d28av01.in.ibm.com (d28av01.in.ibm.com [9.184.220.63])
	by d28relay03.in.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u6THvYkv6029704 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 23:27:34 +0530
Received: from d28av01.in.ibm.com (localhost [127.0.0.1])
	by d28av01.in.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u6THvWZ1000831 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 23:27:33 +0530
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Ben Hutchings <ben@decadent.org.uk>
Date: Fri, 29 Jul 2016 13:57:28 -0400
In-Reply-To: <1469796205.4176.85.camel@decadent.org.uk>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
	<1469796205.4176.85.camel@decadent.org.uk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <1469815048.23563.146.camel@linux.vnet.ibm.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fr, 2016-07-29 at 13:43 +0100, Ben Hutchings wrote:
> On Wed, 2016-07-27 at 12:36 -0400, James Bottomley wrote:
> > On Wed, 2016-07-27 at 12:28 -0400, James Bottomley wrote:

> 
> That would seem to open a large hole unless the initramfs can be
> verified as trusted (either by the boot loader or the kernel).

Commit b804def "kexec: replace call to copy_file_from_fd() with kernel
version"  adds support for measuring and verifying the kernel image and
initramfs signatures.

The next step would be to measure and verify file signatures within the
initramfs.  That work was started, but has not been upstreamed yet.

Mimi
