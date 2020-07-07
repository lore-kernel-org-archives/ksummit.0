Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FF7C433E0
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 06:49:45 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 84A1F20675
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 06:49:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 84A1F20675
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4E9FD2563C;
	Tue,  7 Jul 2020 06:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Pa4sCFNIyv8; Tue,  7 Jul 2020 06:49:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 0EB68279FC;
	Tue,  7 Jul 2020 06:49:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7525C0891;
	Tue,  7 Jul 2020 06:49:32 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 72F2BC016F;
 Tue,  7 Jul 2020 06:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F6E389674;
 Tue,  7 Jul 2020 06:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2LmcXyOMMKU8; Tue,  7 Jul 2020 06:49:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AD47A89654;
 Tue,  7 Jul 2020 06:49:30 +0000 (UTC)
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0676VDxF113440; Tue, 7 Jul 2020 02:49:28 -0400
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.102])
 by mx0b-001b2d01.pphosted.com with ESMTP id 324fdgxa0j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jul 2020 02:49:28 -0400
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
 by ppma06ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0676lC5m016610;
 Tue, 7 Jul 2020 06:49:26 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com
 (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
 by ppma06ams.nl.ibm.com with ESMTP id 322h1h32gp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jul 2020 06:49:26 +0000
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 0676nOGT58130548
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 7 Jul 2020 06:49:24 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4A2A34204C;
 Tue,  7 Jul 2020 06:49:24 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 805C842041;
 Tue,  7 Jul 2020 06:49:23 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.202.169])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue,  7 Jul 2020 06:49:23 +0000 (GMT)
Date: Tue, 7 Jul 2020 09:49:21 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20200707064921.GA9411@linux.ibm.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CALCETrXewAK4_fpaJNDHJVDK9mUcjghA5HwYvZFQNYVfC9M+OQ@mail.gmail.com>
 <202007062234.A90F922DF@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202007062234.A90F922DF@keescook>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-07-07_02:2020-07-07,
 2020-07-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0
 clxscore=1011 lowpriorityscore=0 priorityscore=1501 phishscore=0
 cotscore=-2147483648 suspectscore=0 bulkscore=0 spamscore=0 mlxscore=0
 mlxlogscore=999 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2007070047
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

On Mon, Jul 06, 2020 at 10:56:17PM -0700, Kees Cook wrote:
> On Mon, Jul 06, 2020 at 09:29:46AM -0700, Andy Lutomirski wrote:
> > Is most contexts where 'whitelist' or 'blacklist' might be used, a
> > descriptive phrase could be used instead.  For example, a seccomp
> > filter could have a 'list of allowed syscalls' or a 'list of
> > disallowed syscalls', and just lists could be the 'allowed' or
> > 'accepted' lists and the 'disallowed', 'rejected', or 'blocked' lists.
> > If a single word replacement for 'whitelist' or 'blacklist' is needed,
> > 'allowlist', 'blocklist', or 'denylist' could be used.
> 
> Yup. See:
> https://lore.kernel.org/lkml/202007041703.51F4059CA@keescook/
> specifically the terminology for seccomp is already "allow-list" and
> "deny-list":
> https://github.com/mkerrisk/man-pages/commit/462ce23d491904a0b46252dc97c8cb42391c093e (last year)
> https://github.com/seccomp/libseccomp/commit/0e762521d604612bb4dca8867d4a428a5e6cae54 (last month)
> 
> > Second, I realize that I grew up thinking that 'whitelist' and
> > 'blacklist' are the common terms for lists of things to be accepted
> > and rejected and that this biases my perception of what sounds good,
> > but writing a seccomp "denylist" or "blocklist" doesn't seem to roll
> > off the tongue.  Perhaps this language would be better:
> 
> I have struggled with this as well. The parts of speech change, and my
> grammar senses go weird. whitelist = adjective noun. allow-list = verb
> noun. verbing the adj/noun combo feels okay, but verbing a verb/noun is
> weird.
> 
> And just using "allowed" and "denied" doesn't impart whether it refers
> to a _single_ instance or a _list_ of instances.
> 
> But that's all fine. The change is easy to do and is more descriptive
> even if I can't find terms that don't collide with my internal grammar
> checker. ;)

How about yeslist and nolist? ;-)

> -- 
> Kees Cook
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

-- 
Sincerely yours,
Mike.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
