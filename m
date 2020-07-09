Return-Path: <SRS0=TU90=AU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21621C433DF
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 17:31:10 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E355A20767
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 17:31:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E355A20767
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9343787692;
	Thu,  9 Jul 2020 17:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p8xw8vPf8X8T; Thu,  9 Jul 2020 17:31:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C768987648;
	Thu,  9 Jul 2020 17:31:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 976DBC077B;
	Thu,  9 Jul 2020 17:31:08 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C2C0BC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 17:31:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 712A887658
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 17:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BGhjN-5Esy64
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 17:29:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 761E5876A5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 17:29:23 +0000 (UTC)
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 069H2Png066932; Thu, 9 Jul 2020 13:29:21 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 325n5xys89-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jul 2020 13:29:21 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 069HPJVO019922;
 Thu, 9 Jul 2020 17:29:19 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com
 (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
 by ppma04ams.nl.ibm.com with ESMTP id 325u410sa2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jul 2020 17:29:19 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 069HTHjP3342688
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 9 Jul 2020 17:29:17 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4D113AE051;
 Thu,  9 Jul 2020 17:29:17 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B34B0AE056;
 Thu,  9 Jul 2020 17:29:16 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.204.222])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  9 Jul 2020 17:29:16 +0000 (GMT)
Date: Thu, 9 Jul 2020 20:29:14 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20200709172914.GH781326@linux.ibm.com>
References: <20200612090706.GF2051223@linux.ibm.com>
 <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
 <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
 <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
 <20200618090442.GF6493@linux.ibm.com>
 <1f7ace6cd84dfc83f91a8150f396074b05d06b97.camel@perches.com>
 <20200709122118.0ffaea91@coco.lan>
 <60434f00e5bc55d2ceac14bb6a8c00d4d17c4e96.camel@perches.com>
 <20200709121136.GG781326@linux.ibm.com>
 <193e456a55a880b0f6755a3974f780bffbd8f19c.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <193e456a55a880b0f6755a3974f780bffbd8f19c.camel@perches.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-07-09_08:2020-07-09,
 2020-07-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 mlxlogscore=833 clxscore=1011 phishscore=0 spamscore=0
 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007090120
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 "Valdis.Kletnieks" <Valdis.Kletnieks@vt.edu>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, Jul 09, 2020 at 09:59:46AM -0700, Joe Perches wrote:
> On Thu, 2020-07-09 at 15:11 +0300, Mike Rapoport wrote:
> > On Thu, Jul 09, 2020 at 04:42:58AM -0700, Joe Perches wrote:
> > > On Thu, 2020-07-09 at 12:21 +0200, Mauro Carvalho Chehab wrote:
> > > > Em Thu, 18 Jun 2020 07:40:22 -0700
> > > > Joe Perches <joe@perches.com> escreveu:
> > > > 
> > > > > On Thu, 2020-06-18 at 12:04 +0300, Mike Rapoport wrote:
> > > > > > if a patch breaks the sync between the code and the
> > > > > > kerneldoc can it be detected by checkpatch.pl?  
> > > > > 
> > > > > No, it can not.  Not directly.
> > > > 
> > > > Well, perhaps checkpatch.pl could run:
> > > > 
> > > > 	./scripts/kernel-doc -none
> > > > 
> > > > if it finds "/**" on a patch, showing the warnings produced by it, if any.
> > > 
> > > checkpatch runs on patches.
> > > Use the tools that are designed for this instead.
> > 
> > The problem is that people usually do run checkpatch and do not run
> > kernel-doc. That's where the idea to somehow put documentation checks
> > into checkpatch came from.
> 
> I much prefer this patch:
> https://lore.kernel.org/patchwork/patch/1260408/

I don't see how it will help reducing amount of the kernel-doc warnings
and how it'll make people to check if their patch introduces new ones...


-- 
Sincerely yours,
Mike.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
