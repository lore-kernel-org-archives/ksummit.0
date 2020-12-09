Return-Path: <SRS0=vIOH=FN=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C5D7C19425
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 08:45:12 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 87F3723AA8
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 08:45:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 87F3723AA8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D935D86968;
	Wed,  9 Dec 2020 08:45:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9J2G7BFtvd7o; Wed,  9 Dec 2020 08:45:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 524D886813;
	Wed,  9 Dec 2020 08:45:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2427EC0FA7;
	Wed,  9 Dec 2020 08:45:10 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1C007C013B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 187BA86880
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:45:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ewIalxyMXkQV
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:45:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AABA486813
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:45:06 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 33E76AC94;
 Wed,  9 Dec 2020 08:45:04 +0000 (UTC)
To: Dan Carpenter <dan.carpenter@oracle.com>, Joe Perches <joe@perches.com>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
 <20201203093458.GA16543@unreal>
 <CAMuHMdVcPELarE=eJEc-=AdyfmhhZQsYtUggWCaetuEdk=VpMQ@mail.gmail.com>
 <20201203104047.GD16543@unreal> <X8ku1MmZeeIaMRF4@kroah.com>
 <202012081619.6593C87D3@keescook>
 <13d04c4cc769ebd1dd58470f4d22ada5c9cd28e7.camel@perches.com>
 <20201209075849.GD2767@kadam>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <a6dfe760-c3b4-8bc4-3c7f-cc1208b626fa@suse.cz>
Date: Wed, 9 Dec 2020 09:45:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201209075849.GD2767@kadam>
Content-Language: en-US
Cc: Greg KH <gregkh@linuxfoundation.org>,
 Colin Ian King <colin.king@canonical.com>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>
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

On 12/9/20 8:58 AM, Dan Carpenter wrote:
> On Tue, Dec 08, 2020 at 09:01:49PM -0800, Joe Perches wrote:
>> On Tue, 2020-12-08 at 16:34 -0800, Kees Cook wrote:
>> 
>> > If not "Adjusted-by", what about "Tweaked-by", "Helped-by",
>> > "Corrected-by"?
>> 
>> Improved-by: / Enhanced-by: / Revisions-by: 
>> 
> 
> I don't think we should give any credit for improvements or enhancements,

Well, some are actually useful and not about reviewer's preferred style :) But
if an author redoes the patch as a result, it's their choice to mention useful
improvements in the next version's change log.

> only for fixes.  Complaining about style is its own reward.

Right, let's focus on fixes and reports of bugs, that would have resulted in a
standalone commit, but don't.

> Having to redo a patch is already a huge headache.  Normally, I already
> considered the reviewer's prefered style and decided I didn't like it.
> Then to make me redo the patch in an ugly style and say thankyou on
> top of that???  Forget about it.  Plus, as a reviewer I hate reviewing
> patches over and over.
> 
> I've argued for years that we should have a Fixes-from: tag.  The zero

Standardizing the Fixes-from: tag (or any better name) would be a forward
progress, yes.

> day bot is already encouraging people to add Reported-by tags for this
> and a lot of people do.

"Reported-by:" becomes ambiguous once the bugfix for the reported issue in the
patch is folded, as it's no longer clear whether the bot reported the original
issue the patch is fixing, or a bug in the fix. So we should have a different
variant. "Fixes-reported-by:" so it has the same prefix?

> regards,
> dan carpenter
> 

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
