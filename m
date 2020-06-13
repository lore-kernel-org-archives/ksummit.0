Return-Path: <SRS0=LYn9=72=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD772C433DF
	for <ksummit-discuss@archiver.kernel.org>; Sat, 13 Jun 2020 16:57:56 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5256E2078A
	for <ksummit-discuss@archiver.kernel.org>; Sat, 13 Jun 2020 16:57:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5256E2078A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D426B882FC;
	Sat, 13 Jun 2020 16:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pjT0cS-PfEAd; Sat, 13 Jun 2020 16:57:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A512882EB;
	Sat, 13 Jun 2020 16:57:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3292FC0888;
	Sat, 13 Jun 2020 16:57:54 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1F61EC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 16:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 07F0A882EB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 16:57:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nXIrYHAkjB6v
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 16:57:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0065.hostedemail.com
 [216.40.44.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D54E1882C7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 16:57:51 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 57F5518021475
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 16:51:49 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id CA7CE181D341E;
 Sat, 13 Jun 2020 16:51:46 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-HE-Tag: tent74_6305e5526de6
X-Filterd-Recvd-Size: 4262
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Sat, 13 Jun 2020 16:51:45 +0000 (UTC)
Message-ID: <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@inria.fr>, Shuah Khan
 <skhan@linuxfoundation.org>
Date: Sat, 13 Jun 2020 09:51:44 -0700
In-Reply-To: <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <20200612090706.GF2051223@linux.ibm.com>
 <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
 <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
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

On Sat, 2020-06-13 at 18:42 +0200, Julia Lawall wrote:
> I tried collecting information about missing or incorrectly formatted
> function documentation using Coccinelle.  Here is an example of the
> output:
> 
> drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: extra names mod, f_isr, h_src_arg
> drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: missing name isr_cb
> drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: missing name module
> drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: missing name src_arg
> drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: return comment but no return value
> drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: extra names mod
> drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: missing name module
> drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: return comment but no return value
> drivers/net/ethernet/freescale/fman/fman.c:2355 fman_get_revision: return comment but no return value
> drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: extra names dev
> drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: missing name fm_dev
> drivers/net/ethernet/freescale/fman/fman.c:2527 fman_has_errata_a050385: no comment for fman_has_errata_a050385

just fyi: scripts/kernel-doc already does:

$ ./scripts/kernel-doc drivers/net/ethernet/freescale/fman/fman.c > /dev/null
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function parameter or member 'module' not described in 'fman_register_intr'
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function parameter or member 'isr_cb' not described in 'fman_register_intr'
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function parameter or member 'src_arg' not described in 'fman_register_intr'
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function parameter 'mod' description in 'fman_register_intr'
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function parameter 'f_isr' description in 'fman_register_intr'
drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess function parameter 'h_src_arg' description in 'fman_register_intr'
drivers/net/ethernet/freescale/fman/fman.c:2105: warning: Function parameter or member 'module' not described in 'fman_unregister_intr'
drivers/net/ethernet/freescale/fman/fman.c:2105: warning: Excess function parameter 'mod' description in 'fman_unregister_intr'
drivers/net/ethernet/freescale/fman/fman.c:2356: warning: Function parameter or member 'fman' not described in 'fman_get_revision'
drivers/net/ethernet/freescale/fman/fman.c:2356: warning: Function parameter or member 'rev_info' not described in 'fman_get_revision'
drivers/net/ethernet/freescale/fman/fman.c:2521: warning: Function parameter or member 'fm_dev' not described in 'fman_bind'
drivers/net/ethernet/freescale/fman/fman.c:2521: warning: Excess function parameter 'dev' description in 'fman_bind'



_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
