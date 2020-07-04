Return-Path: <SRS0=o/nk=AP=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26FC7C433DF
	for <ksummit-discuss@archiver.kernel.org>; Sat,  4 Jul 2020 23:39:47 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF53320772
	for <ksummit-discuss@archiver.kernel.org>; Sat,  4 Jul 2020 23:39:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kup5Q35r"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF53320772
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA0B6875DA;
	Sat,  4 Jul 2020 23:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 47ugBimzDQFK; Sat,  4 Jul 2020 23:39:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E40E987542;
	Sat,  4 Jul 2020 23:39:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C54A3C088C;
	Sat,  4 Jul 2020 23:39:44 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 41AC1C0733;
 Sat,  4 Jul 2020 23:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 304EF88B4E;
 Sat,  4 Jul 2020 23:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VrPVXWszDhOR; Sat,  4 Jul 2020 23:39:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 905D888B10;
 Sat,  4 Jul 2020 23:39:42 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id d18so25704785edv.6;
 Sat, 04 Jul 2020 16:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wiOQQZ02XFm/BV4L3Jk1shIvr/SgSyC6/7/Nw0lQ+ZA=;
 b=kup5Q35rKbLnb1mEjO8X6MKkJrcWslIPp6mdkMvRY0G1dR/BCUgniv2XMdUgQx8BP0
 WdqSljKF6PIRc+5Q5lO0Q3uBGpO7GjIrgaIaeNHJyDnaQkmMJQeGlF9rT2UJXyErJ8EJ
 0NiEJ0pu6U74hLy+C1UpY2QxTCIQSUH7362ciYBgckTfc7auJkrziYcZmVBweBxWyPwa
 mC6xVATf6Vp4gS4WRuTtPM8aHV7dA9K6+GeNdqWUfzDUtHlI2edaTooIYe1QZp5BVdvD
 QnQchV6QQJKykJE9sWiUSF5lW6Th9AQe2GMYD4g0PuITzvM9Mv2qVkWh75Edu5Ov9yt/
 0DOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wiOQQZ02XFm/BV4L3Jk1shIvr/SgSyC6/7/Nw0lQ+ZA=;
 b=JbH1T8yDhL/e15jQrbwPLLkKYiiVC5swhPOi5tnFjqLywFOgoSA8FonYQlgwenEXE9
 F7Gs2kQzZ6PL93E4VelPxAlXEY+DtvzBA8kv9o0QeViSDCOXHiXFa7sfDpq4nKaa1s2C
 GFf4I6YyC3DkAMAsmRk5tL4fsGx4v1uqEIIyUOoENFE93neyCri6YfxV7ITaxUFRCp0F
 DIE8NpnmJxq+srOnWO4ECYgXXaT3HJsdoGfXqlrBoTC3rpxhBUUNJWKq6ovZAGK973eW
 yGRAlOr4/KfEZaY0yTSLNlTndauX0X2XqOXgr4MwXx1SG08eLJC6T57JkikMP/MFaVJZ
 GSwA==
X-Gm-Message-State: AOAM531RD+/TAIBCThhKdpLGZGa/My7hqmsjSb3jWokeaZUAHl0YcT4R
 4NoLBJfp4D7KfMTrSrqhsD9oUyiEmu8bNP/TWj4=
X-Google-Smtp-Source: ABdhPJzbei+YhbyxBBky+9dDKnl8xs2AYHFFXGBEnxjE+lcFPY0N5s9i6KJs6PQtIT40TdEoIG90VJW5+1F1Of5ao3E=
X-Received: by 2002:a50:f08c:: with SMTP id v12mr47055813edl.119.1593905981048; 
 Sat, 04 Jul 2020 16:39:41 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <1593897917.7058.11.camel@HansenPartnership.com>
In-Reply-To: <1593897917.7058.11.camel@HansenPartnership.com>
From: Dave Airlie <airlied@gmail.com>
Date: Sun, 5 Jul 2020 09:39:29 +1000
Message-ID: <CAPM=9tyjdzU-O2nAWFngGSE=aSfUsaRer9x3bk8hpyhCOX0Bew@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
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

On Sun, 5 Jul 2020 at 07:25, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Sat, 2020-07-04 at 13:02 -0700, Dan Williams wrote:
> [...]
> > diff --git a/Documentation/process/inclusive-terminology.rst
> > b/Documentation/process/inclusive-terminology.rst
> > new file mode 100644
> > index 000000000000..a8eb26690eb4
> > --- /dev/null
> > +++ b/Documentation/process/inclusive-terminology.rst
>
> Could we just lose this entire document?  The one thing we should learn
> from recent history is that we really want prevent people distracting
> from the good inclusive (and technically more accurate) terminology
> will do.  One way the detractors do this by engaging in ultimately
> pointless arguments about historical accuracy of supporting statements.
>   By making pejorative statements about history (which are open to
> challenge on several fronts), this document acts as a magnet for such
> attention.  Simply leave it out and the detractors will have nothing to
> attack except the bald statement of desiring more inclusive language.
> I'd much rather defend why we want inclusive and more descriptive
> language than get into a pointless argument over whether the Ottoman
> slave trade was more or less evil than the American one.

I don't totally agree on that, because like the CoC discussion, people
need concrete examples. People need reasons, saying simply "be
inclusive" doesn't work.

You say "be inclusive" people don't think about it, they just go "I'm
inclusive" and proceed, never questioning what it means to be
inclusive, they normalise inclusivity to their self image and within
their lives where they might never confront anything like this.

I don't doubt we get the American/Ottoman/Barbery coast people and the
correct answer to those people is to tell them to examine why they
suddenly care about Barbery slavery now when they have never even
heard or worried about it before. Why haven't they submitted patches
removing slavery terminology from the kernel before?

Dave.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
