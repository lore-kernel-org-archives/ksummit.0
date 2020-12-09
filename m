Return-Path: <SRS0=vIOH=FN=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39F06C433FE
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 08:54:42 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9386F23A6C
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 08:54:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9386F23A6C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1091786DCE;
	Wed,  9 Dec 2020 08:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SY2s8JhxApns; Wed,  9 Dec 2020 08:54:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5664C86D92;
	Wed,  9 Dec 2020 08:54:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2D4D3C0FA7;
	Wed,  9 Dec 2020 08:54:39 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E97CEC013B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D7FD086D92
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aQjcPDIhwhd8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:54:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0228.hostedemail.com
 [216.40.44.228])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9FA1386D73
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:54:36 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 8A5091801F0FC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:54:35 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 16D1B1802CCD2;
 Wed,  9 Dec 2020 08:54:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-HE-Tag: bikes20_0a0b5de273ee
X-Filterd-Recvd-Size: 3371
Received: from XPS-9350.home (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Wed,  9 Dec 2020 08:54:31 +0000 (UTC)
Message-ID: <42a599d0f5e4c677648b5e6de8083feb8723a558.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Wed, 09 Dec 2020 00:54:30 -0800
In-Reply-To: <20201209075849.GD2767@kadam>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
 <20201203093458.GA16543@unreal>
 <CAMuHMdVcPELarE=eJEc-=AdyfmhhZQsYtUggWCaetuEdk=VpMQ@mail.gmail.com>
 <20201203104047.GD16543@unreal> <X8ku1MmZeeIaMRF4@kroah.com>
 <202012081619.6593C87D3@keescook>
 <13d04c4cc769ebd1dd58470f4d22ada5c9cd28e7.camel@perches.com>
 <20201209075849.GD2767@kadam>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
 Colin Ian King <colin.king@canonical.com>, Vlastimil Babka <vbabka@suse.cz>
Subject: Re: [Ksummit-discuss] crediting bug reports and fixes folded into
 original patch
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

On Wed, 2020-12-09 at 10:58 +0300, Dan Carpenter wrote:
> On Tue, Dec 08, 2020 at 09:01:49PM -0800, Joe Perches wrote:
> > On Tue, 2020-12-08 at 16:34 -0800, Kees Cook wrote:
> > 
> > > If not "Adjusted-by", what about "Tweaked-by", "Helped-by",
> > > "Corrected-by"?
> > 
> > Improved-by: / Enhanced-by: / Revisions-by: 
> > 
> 
> I don't think we should give any credit for improvements or enhancements,
> only for fixes.

Hey Dan.

I do.  If a patch isn't comprehensive and a reviewer notices some
missing coverage or algorithmic performance enhancement, I think that
should be noted.

> Complaining about style is its own reward.

<chuckle, maybe so. I view it more like coaching...>

I believe I've said multiple times that style changes shouldn't require
additional commentary added to a patch.

I'm not making any suggestion to comment for style, only logic or defect
reduction/improvements as described above.

> Having to redo a patch is already a huge headache.  Normally, I already
> considered the reviewer's prefered style and decided I didn't like it.

Example please.  We both seem to prefer consistent style.

> Then to make me redo the patch in an ugly style and say thank you on
> top of that???  Forget about it.

Not a thing I've asked for.

>  Plus, as a reviewer I hate reviewing patches over and over.

interdiff could be improved.

> I've argued for years that we should have a Fixes-from: tag.  The zero
> day bot is already encouraging people to add Reported-by tags for this
> and a lot of people do.

It's still a question of what fixes means in any context.

https://www.google.com/search?q=%27fixes-from%3A%27%20carpenter%20site%3Alore.kernel.org
gives:
It looks like there aren't many great matches for your search

And I'm rather in favor of letting people make up their own
<whatever>-by: uses and not being too concerned about the specific
whatever word or phrase used.  Postel's law and such.


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
