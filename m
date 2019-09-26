Return-Path: <SRS0=WLkl=XV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B66C4360C
	for <ksummit-discuss@archiver.kernel.org>; Thu, 26 Sep 2019 15:53:14 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2082A222C6
	for <ksummit-discuss@archiver.kernel.org>; Thu, 26 Sep 2019 15:53:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EOV9nbdX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2082A222C6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 86732AF7;
	Thu, 26 Sep 2019 15:53:13 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0047FAF5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 15:53:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8B249844
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 15:53:12 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id t14so1808547pgs.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 08:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=x2ZtsiLZ+kw3/v3oYhsQVM4bKUJxpQ2h0TdonjKHc1k=;
	b=EOV9nbdXnQCKPBtCCBZmtnBDRzrPIfa5lsb1/TMYl39MUoQbGoSV446jt7o+yIgbSr
	IO8fnJ7V85D4cMjuINTd+MMR3Zb9XBlf8mBo66HWYmspjadLf3AffJnKpBan0E4iwuI3
	H5FXmF3ulhqsAGrTVrL6eSIjZGWk1o1zBRl+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=x2ZtsiLZ+kw3/v3oYhsQVM4bKUJxpQ2h0TdonjKHc1k=;
	b=rbC4ybDFlPa6kzWu2AU65JE2MeQsZxK/YhQAHgBbiOJpmza9TUFIA6MJ6g0gBT3pGI
	OYYaQd3t7TCPxhl1pbqex1/3gUA9vRktJOM6cSU5toTeVHyrEgUh7CUupmg9esCIEiuu
	SOwtBAYvHxYDpNA5hUNn6vLqSxI0s2UBoNE+BW0V9ZL+EpXXMhgwpXwtHAyvUYHTbFnr
	9cuLaR379W7uKRP5zf/AGnbrXTD0OTQzQEd2p/RbzB5llca82V4FpSw9Im8bkczO35qk
	Nsl0mxWfYueQ8PTy0LwYOJhqLoKpzoHj4IkugEhGULKw1AfyF+v/Rd6Tyelwf0Nz7ewL
	jqqQ==
X-Gm-Message-State: APjAAAUFcKziKlz1JEcTjoRmkYuyj0x+X6+B1gZ4rrifFIgaf2ZTwQNO
	OPiVLm30EeapHDK7amHtnhvsHQ==
X-Google-Smtp-Source: APXvYqwbQdqxbvH0rRx4Ow/CbsOjuecD+mffAid+26LrGXvPQ5t5wv4MXwXa+V0zJfK5dso7v7G32Q==
X-Received: by 2002:aa7:8bcc:: with SMTP id s12mr4417785pfd.93.1569513192061; 
	Thu, 26 Sep 2019 08:53:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id
	22sm2655117pfo.131.2019.09.26.08.53.10
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 26 Sep 2019 08:53:11 -0700 (PDT)
Date: Thu, 26 Sep 2019 08:53:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Message-ID: <201909260848.B429B7DF@keescook>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<5d71311232fd6d4aa0fab038512eab933c13a722.camel@perches.com>
	<201909251127.D0C517171E@keescook>
	<4eca5297a213357995c05b90c74a8bc638f54f02.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4eca5297a213357995c05b90c74a8bc638f54f02.camel@perches.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] media: add a subsystem profile
 documentation
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
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
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Thu, Sep 26, 2019 at 08:14:03AM -0700, Joe Perches wrote:
> On Wed, 2019-09-25 at 11:40 -0700, Kees Cook wrote:
> > Is "6" a safe lower bound here? I thought 12 was the way to go?
> []
> > $ git log | egrep 'Fixes: [a-f0-9]{1,40}' | col2 | awk '{print length }' | sort | uniq -c | sort -n | tail
> >     238 8
> >     300 7
> >     330 14
> >     344 6
> >     352 11
> >     408 40
> >     425 10
> >     735 16
> >    1866 13
> >   31446 12
> > 
> > Hmpf, 6 is pretty high up there...
> 
> Yes, but your grep then col2 isn't right.
> You are counting all the 'Fixes: commit <foo>' output
> as 6 because that's the length of 'commit'.

the [a-f0-9]{1,40} already excludes "commit".

> I also think the length of the hex commit value doesn't
> matter much as it's got to be a specific single commit
> SHA1 anyway, otherwise the commit id lookup will fail.

Fail enough. We do already have 6-digit SHA1 collisions, so it seemed
like using more than 6 would be nicer? *shrug* I don't have a strong
opinion. :)

> 
> > > > @@ -1031,6 +1040,7 @@ MAINTAINER field selection options:
> > >      --roles => show roles (status:subsystem, git-signer, list, etc...)
> > >      --rolestats => show roles and statistics (commits/total_commits, %)
> > >      --file-emails => add email addresses found in -f file (default: 0 (off))
> > > +    --fixes => for patches, add signatures of commits with 'Fixes: <commit>' (default: 1 (on))
> > 
> > Should "Tested-by" and "Co-developed-by" get added to @signature_tags ?
> 
> All "<foo>-by:" signatures are added.

Ah, I'd missed where that happened. I do note that's only when
git-all-signature-types is set, which is default 0. (/me goes to add
this to his invocations...)

my $email_git_all_signature_types = 0;
...
    if ($email_git_all_signature_types) {
        $signature_pattern = "(.+?)[Bb][Yy]:";
    } else {
        $signature_pattern = "\(" . join("|", @signature_tags) . "\)";
    }

> > @commit_authors is unused?
> 
> Yes, authors are already required to sign-off so
> it's just duplicating already existing signatures.

Sure, it just seemed odd to populate it if it wasn't going to be used.

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
