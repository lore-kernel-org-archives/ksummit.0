Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_2 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B487C433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 13:55:45 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C6892070C
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 13:55:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=wowana.me header.i=@wowana.me header.b="Ye8SGNdc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1C6892070C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=wowana.me
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7A5FC25DFC;
	Mon,  6 Jul 2020 13:55:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E2IJHcSTAPSc; Mon,  6 Jul 2020 13:55:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 3823C25E18;
	Mon,  6 Jul 2020 13:55:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E5443C08A9;
	Mon,  6 Jul 2020 13:55:35 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1EFE0C016F;
 Sun,  5 Jul 2020 18:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C9D788661;
 Sun,  5 Jul 2020 18:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wtn92Cg5evZY; Sun,  5 Jul 2020 18:00:10 +0000 (UTC)
X-Greylist: delayed 00:09:25 by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.volatile.bz (mx1.volatile.bz [185.163.46.101])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D82438853D;
 Sun,  5 Jul 2020 18:00:09 +0000 (UTC)
Received: from mahin.wowana.me (unknown [IPv6:2001:67c:2db8:301:1845::2])
 by mx1.volatile.bz (Postfix) with ESMTPSA id B94DF4E7;
 Sun,  5 Jul 2020 17:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=wowana.me; s=default;
 t=1593971441; bh=bSmlbJyHSCXLfi+Y6gH6+D6+oj2SR366tyTPTaadWy4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=Ye8SGNdcjLPDZsaSQcm65BclPp1Q4z1zdGR4HRjwcDJ+MQFHZDa53Jilbamfb8Wtw
 3XZunKgbB2GzDEcOsoWWXDz8y0DJMXU4SjyVGvluekEX0eVVauHG8NHqTaomq6Zq5R
 AC2DvGzMSPl42Sd9FAp9uRtjySWuCXzNShDb5TKY=
Date: Sun, 5 Jul 2020 17:50:31 +0000
From: opal hart <opal@wowana.me>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <20200705175031.4d7fa711@mahin.wowana.me>
In-Reply-To: <CAPM=9tyjdzU-O2nAWFngGSE=aSfUsaRer9x3bk8hpyhCOX0Bew@mail.gmail.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <1593897917.7058.11.camel@HansenPartnership.com>
 <CAPM=9tyjdzU-O2nAWFngGSE=aSfUsaRer9x3bk8hpyhCOX0Bew@mail.gmail.com>
Organization: Volatile
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-Face: &TPnio^VF7_~k^se; yA:fep*U;
 :Kzv1Q3'cYEY/#q"NyebT}po2wD}dNr}JF,f?%"Dh}(dq1C(0[dS`.(SJ2CDil=W'B9>O7p^P-+|v6Tj}|EJg8.&>YXtniHyR:=nf1,HE(NWu#C.GW
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 06 Jul 2020 13:55:33 +0000
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
 Inclusive Terminology
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

On Sun, 5 Jul 2020 09:39:29 +1000
Dave Airlie <airlied@gmail.com> wrote:

> I don't totally agree on that, because like the CoC discussion, people
> need concrete examples. People need reasons, saying simply "be
> inclusive" doesn't work.

Which people? because so far the only people I've seen take these
terminologies out of computing context, are those who are only voicing
their "concern" out of bad faith, as well as those who fall for the
concern-trolling bait. The meta-discussion serves to stir up noise and
waste time that's better spent on other things.

History pains, sure, but I believe it serves no justice to erase every
trace of bad things that happened in history. That includes use of
words tangentially related to such events.

-- 
wowaname <https://wowana.me/pgp.xht>
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
