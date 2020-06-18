Return-Path: <SRS0=98tQ=77=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48FC5C433DF
	for <ksummit-discuss@archiver.kernel.org>; Thu, 18 Jun 2020 09:04:59 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0BAA121548
	for <ksummit-discuss@archiver.kernel.org>; Thu, 18 Jun 2020 09:04:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0BAA121548
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4210886E6;
	Thu, 18 Jun 2020 09:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKjsn6gXtF7C; Thu, 18 Jun 2020 09:04:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1BC84886E8;
	Thu, 18 Jun 2020 09:04:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DB137C07FF;
	Thu, 18 Jun 2020 09:04:57 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E4AD2C016E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 09:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DFBBA204FE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 09:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id huVsAPO3Tqz5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 09:04:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by silver.osuosl.org (Postfix) with ESMTPS id 14F5420023
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 18 Jun 2020 09:04:54 +0000 (UTC)
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05I93QUb049585; Thu, 18 Jun 2020 05:04:50 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31r446a08u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jun 2020 05:04:50 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
 by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05I8xrkw005420;
 Thu, 18 Jun 2020 09:04:47 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com
 (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
 by ppma03ams.nl.ibm.com with ESMTP id 31quax8s02-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jun 2020 09:04:47 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 05I94jhp64094480
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Jun 2020 09:04:45 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id F26DCA4055;
 Thu, 18 Jun 2020 09:04:44 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5A7E3A4040;
 Thu, 18 Jun 2020 09:04:44 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.204.36])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu, 18 Jun 2020 09:04:44 +0000 (GMT)
Date: Thu, 18 Jun 2020 12:04:42 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20200618090442.GF6493@linux.ibm.com>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <20200612090706.GF2051223@linux.ibm.com>
 <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
 <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
 <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-18_04:2020-06-17,
 2020-06-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxscore=0
 bulkscore=0 phishscore=0 suspectscore=2 impostorscore=0
 cotscore=-2147483648 lowpriorityscore=0 spamscore=0 mlxlogscore=722
 clxscore=1011 malwarescore=0 adultscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006180065
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

Hi Joe,

On Sat, Jun 13, 2020 at 09:51:44AM -0700, Joe Perches wrote:
> On Sat, 2020-06-13 at 18:42 +0200, Julia Lawall wrote:
> > I tried collecting information about missing or incorrectly formatted
> > function documentation using Coccinelle.  Here is an example of the
> > output:
> > 
> > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: extra names mod, f_isr, h_src_arg
> > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: missing name isr_cb
> > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: missing name module
> > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: missing name src_arg
> > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: return comment but no return value
> > drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: extra names mod
> > drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: missing name module
> > drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: return comment but no return value
> > drivers/net/ethernet/freescale/fman/fman.c:2355 fman_get_revision: return comment but no return value
> > drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: extra names dev
> > drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: missing name fm_dev
> > drivers/net/ethernet/freescale/fman/fman.c:2527 fman_has_errata_a050385: no comment for fman_has_errata_a050385
> 
> just fyi: scripts/kernel-doc already does:
> 
> $ ./scripts/kernel-doc drivers/net/ethernet/freescale/fman/fman.c > /dev/null
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function parameter or member 'module' not described in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function parameter or member 'isr_cb' not described in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function parameter or member 'src_arg' not described in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function parameter 'mod' description in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function parameter 'f_isr' description in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function parameter 'h_src_arg' description in 'fman_register_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2105: warning: Function parameter or member 'module' not described in 'fman_unregister_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2105: warning: Excess function parameter 'mod' description in 'fman_unregister_intr'
> drivers/net/ethernet/freescale/fman/fman.c:2356: warning: Function parameter or member 'fman' not described in 'fman_get_revision'
> drivers/net/ethernet/freescale/fman/fman.c:2356: warning: Function parameter or member 'rev_info' not described in 'fman_get_revision'
> drivers/net/ethernet/freescale/fman/fman.c:2521: warning: Function parameter or member 'fm_dev' not described in 'fman_bind'
> drivers/net/ethernet/freescale/fman/fman.c:2521: warning: Excess function parameter 'dev' description in 'fman_bind'
 
Can this be somehow reported by checkpatch.pl?

What I mean is that if a patch breaks the sync between the code and the
kerneldoc can it be detected by checkpatch.pl?

-- 
Sincerely yours,
Mike.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
