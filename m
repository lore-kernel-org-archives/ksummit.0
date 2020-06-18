Return-Path: <SRS0=98tQ=77=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4779CC433DF
	for <ksummit-discuss@archiver.kernel.org>; Thu, 18 Jun 2020 09:09:02 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 23355214DB
	for <ksummit-discuss@archiver.kernel.org>; Thu, 18 Jun 2020 09:09:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 23355214DB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AF68920133;
	Thu, 18 Jun 2020 09:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UwlnN4iwBb+u; Thu, 18 Jun 2020 09:09:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id DACF720242;
	Thu, 18 Jun 2020 09:08:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AE0D9C07FF;
	Thu, 18 Jun 2020 09:08:59 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6955FC016E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 09:08:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 58FDA887C1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 09:08:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D7SDcMumc9AH
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 09:08:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0C6F788748
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 09:08:56 +0000 (UTC)
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05I92irD051366; Thu, 18 Jun 2020 05:08:56 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 31r2vncmfw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jun 2020 05:08:55 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05I90Bd9017794;
 Thu, 18 Jun 2020 09:08:54 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com
 (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
 by ppma04ams.nl.ibm.com with ESMTP id 31qur60r4t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jun 2020 09:08:54 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 05I98pOk65732734
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Jun 2020 09:08:51 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 62406AE04D;
 Thu, 18 Jun 2020 09:08:51 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EEEC3AE053;
 Thu, 18 Jun 2020 09:08:50 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.204.36])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu, 18 Jun 2020 09:08:50 +0000 (GMT)
Date: Thu, 18 Jun 2020 12:08:48 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20200618090848.GG6493@linux.ibm.com>
References: <20200609145353.628a342d@lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609145353.628a342d@lwn.net>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-18_04:2020-06-17,
 2020-06-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0
 phishscore=0 impostorscore=0 malwarescore=0 adultscore=0 clxscore=1015
 mlxscore=0 mlxlogscore=774 cotscore=-2147483648 priorityscore=1501
 suspectscore=1 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006180065
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
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

On Tue, Jun 09, 2020 at 02:53:53PM -0600, Jonathan Corbet wrote:
> The long process of converting the kernel's documentation into RST is
> finally coming to an end...what has that bought us?  We have gone from a
> chaotic pile of incomplete, crufty, and un-integrated docs to a slightly
> better organized pile of incomplete, crufty, slightly better integrated
> docs.  Plus we have the infrastructure to make something better from here.
> 
> What are the next steps for kernel documentation?  What would we really
> like our docs to look like, and how might we find the resources to get
> them to that point?  What sorts of improvements to the build
> infrastructure would be useful?  I'll come with some ideas (some of which
> you've certainly heard before) but will be more interested in listening.

Antoher question I've been asking myself is what to do with good but old
guides. For instance, Documentation/virt/uml/user_mode_linux.rst
describes how to debug the kernel with gdb, but most of the code
references there are stale by now.

Another example is "Unreliable Guide To Hacking The Linux Kernel"
(Documentation/kernel-hacking/hacking.rst). It's really nicely written
by it is way too out of date.

> jon

-- 
Sincerely yours,
Mike.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
