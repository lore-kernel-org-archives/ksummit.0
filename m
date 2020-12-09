Return-Path: <SRS0=vIOH=FN=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 686C0C4361B
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 17:45:14 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D0DB023C92
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 17:45:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D0DB023C92
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E21F8744B;
	Wed,  9 Dec 2020 17:45:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k-mRT12MR9G7; Wed,  9 Dec 2020 17:45:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E933986C95;
	Wed,  9 Dec 2020 17:45:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B7208C0893;
	Wed,  9 Dec 2020 17:45:12 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2C6F9C013B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 17:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0A71C86EB9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 17:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nL1h8-eG5qgd
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 17:45:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ED01D86EB8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 17:45:08 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id m19so3316843ejj.11
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 09 Dec 2020 09:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xRUcWLPWD+MQWDys7NMmqsjgoWT2S+ad/7Jyb66SJSU=;
 b=WlF9OJyFh/O8EkJLwzVnnIo9dtTlZZW6GJsxk7N6sKkFt73msw8+tS0wNJe/HyIjv+
 ANpjomLmo8OSqu6uvFvb8UYZ1Otygxl1gpx8wc4hmQMYi3+oX9cgBNUKb4cHItxzuggU
 QNgCoeohSgbajw9jo06JJVcn9B5tGPJNV+mif29nki1tehPOjfrKJTCokdD+WQH+jTRe
 WS7z9tTD7EwbX+GReWZIRttk/Kxm8hcNhjNm1HXVIMQEQUW0hGdY/l3N+Jj1n3WK13OC
 WGpBSgfxHbgIeEnTFLSRt2LwnEchHBYUgyVUaH9/xZLARlXyYw+WNhda+t0sE0qbZ4a3
 o+vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xRUcWLPWD+MQWDys7NMmqsjgoWT2S+ad/7Jyb66SJSU=;
 b=Do8tZxuXcgeUofvz24XjwTPoSpBPwef7ZKAVkShyEv+WBe35OIYENWmLY8WM7KQl7U
 99+XWwkNy0glFTW770mA+39Vdh/NZjnAroczhZQpgEJPPR25muKXn64Oph2kF0bL6usd
 by/PC5S6o6jgWiVzCfkcpMlG1zqBLgovgKaJ3uL9fzFr91ZH5cXeYTU8+Yj9AU0F7qkb
 k+ZfVWmaC/EDXS9AZQLABDJtoRhuF8JhcuqEqZD3EWnR/pp76ebzr8yFnyxBOMG1Al4t
 lOSsDMHsC72HM6j9zEaJVCsEgrPdGs+Y4Bqin6JdxcMl+iaaK1Y9msaO3pVCrhrUaK3F
 CkhA==
X-Gm-Message-State: AOAM532WT133I/s7zx531f8yzpsVc8FtBwnBxQ197UQ5oEPKIwYmBN8Q
 ZkAr9lmtu/KFZpCkVl/ZYrJd6/MULk4AjrRYgdFLGg==
X-Google-Smtp-Source: ABdhPJwkh60h0Y+VEqX94NdF9KgKWO30649UcfJJonX8/7IsI98fOi3wQuTBe4X5shmyOI6I2Oz3RKXbVxDLd87ji6g=
X-Received: by 2002:a17:906:a29a:: with SMTP id
 i26mr3008666ejz.45.1607535907410; 
 Wed, 09 Dec 2020 09:45:07 -0800 (PST)
MIME-Version: 1.0
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
 <20201203093458.GA16543@unreal>
 <CAMuHMdVcPELarE=eJEc-=AdyfmhhZQsYtUggWCaetuEdk=VpMQ@mail.gmail.com>
 <20201203104047.GD16543@unreal> <X8ku1MmZeeIaMRF4@kroah.com>
 <202012081619.6593C87D3@keescook>
 <13d04c4cc769ebd1dd58470f4d22ada5c9cd28e7.camel@perches.com>
 <20201209075849.GD2767@kadam>
 <42a599d0f5e4c677648b5e6de8083feb8723a558.camel@perches.com>
 <20201209103026.GF2767@kadam>
In-Reply-To: <20201209103026.GF2767@kadam>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 9 Dec 2020 09:45:04 -0800
Message-ID: <CAPcyv4gbgDMGBQ3t4q1EckELbMG5JXi10YuzLsMjFns67od=sw@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
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

On Wed, Dec 9, 2020 at 2:31 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Wed, Dec 09, 2020 at 12:54:30AM -0800, Joe Perches wrote:
> > On Wed, 2020-12-09 at 10:58 +0300, Dan Carpenter wrote:
> > > On Tue, Dec 08, 2020 at 09:01:49PM -0800, Joe Perches wrote:
> > > > On Tue, 2020-12-08 at 16:34 -0800, Kees Cook wrote:
> > > >
> > > > > If not "Adjusted-by", what about "Tweaked-by", "Helped-by",
> > > > > "Corrected-by"?
> > > >
> > > > Improved-by: / Enhanced-by: / Revisions-by:
> > > >
> > >
> > > I don't think we should give any credit for improvements or enhancements,
> > > only for fixes.
> >
> > Hey Dan.
> >
> > I do.  If a patch isn't comprehensive and a reviewer notices some
> > missing coverage or algorithmic performance enhancement, I think that
> > should be noted.
> >
> > > Complaining about style is its own reward.
> >
> > <chuckle, maybe so. I view it more like coaching...>
> >
> > I believe I've said multiple times that style changes shouldn't require
> > additional commentary added to a patch.
> >
> > I'm not making any suggestion to comment for style, only logic or defect
> > reduction/improvements as described above.
>
> How about we make the standard, "Would this fix be backported to stable?"
>
> >
> > > Having to redo a patch is already a huge headache.  Normally, I already
> > > considered the reviewer's prefered style and decided I didn't like it.
> >
> > Example please.  We both seem to prefer consistent style.
> >
>
> For example, if you have a signedness bugs:
>
>         ret = frob(unsigned_long_size);
> -       if (ret < unsigned_long_size)
> +       if (ret < 0 || ret < unsigned_long_size)
> vs:
> +       if (ret < (int)unsigned_long_size)
>                 goto whatever;
>
> To me, whoever fixes the bug gets to choose their prefered style but
> maybe some reviewers have strong feelings one way or the other.
>
> > > Then to make me redo the patch in an ugly style and say thank you on
> > > top of that???  Forget about it.
> >
> > Not a thing I've asked for.
> >
> > >  Plus, as a reviewer I hate reviewing patches over and over.
> >
> > interdiff could be improved.
> >
> > > I've argued for years that we should have a Fixes-from: tag.  The zero
> > > day bot is already encouraging people to add Reported-by tags for this
> > > and a lot of people do.
> >
> > It's still a question of what fixes means in any context.
> >
> > https://www.google.com/search?q=%27fixes-from%3A%27%20carpenter%20site%3Alore.kernel.org
> > gives:
> > It looks like there aren't many great matches for your search
> >
>
> No, I mean people add Reported-by tags for fixes to the original commit
> like in commit f026d8ca2904 ("igc: add support to eeprom, registers and
> link self-tests").

For after the fact post-processing of tags to generate summary
reports, is there a significant difference between Reported-by for
"original commit motivation" and Reported-by for "follow-on fixups"?
Especially since this practice of Reported-by for fixups is already
deployed in the tree (at least kbuild-robot credit reports and my
subsystems operate this way).

If the fix is a slightly late and needs to come as a follow-on patch
the tag will be Reported-by on that fix. I fail to perceive a benefit
in augmenting the tag to indicate the resolution of the race condition
of the commit making it upstream.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
