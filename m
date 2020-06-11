Return-Path: <SRS0=9Kf/=7Y=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F33CAC433E0
	for <ksummit-discuss@archiver.kernel.org>; Thu, 11 Jun 2020 14:48:38 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A64A9206C3
	for <ksummit-discuss@archiver.kernel.org>; Thu, 11 Jun 2020 14:48:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AHu9aoMD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A64A9206C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F8B387A58;
	Thu, 11 Jun 2020 14:48:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zbY86wlMmEsv; Thu, 11 Jun 2020 14:48:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B272A87A5E;
	Thu, 11 Jun 2020 14:48:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 829EBC0178;
	Thu, 11 Jun 2020 14:48:37 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 313CDC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 14:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1BFFE88530
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 14:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jpma7j03E04Z
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 14:48:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 115E88837C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 14:48:35 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id z206so3664164lfc.6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 07:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SsjapID2C1+lzEI0Y6+LBgYZpWcvqWg5SYqB6L2wQ6M=;
 b=AHu9aoMD765gN68lPkrjapQwmVS4siD7pRJQ1NSA6SmFU6wEeF0p0VlceKMlqKp8qy
 9I24yPcPxTIVmrJAQwZ1jo0MMgdn9vEy+/KrKBDELZLL8eRTgulutB2yDHDGU+3S++pA
 V6G00fy6LLRoBFjbbIveGStuZxWqH33FhrKbKDq2SoB3Ys3i4vv3kJ6zrmdAY8tIKgKV
 SKqwgfXo93DOtnh9pBhYhCTDsQfYpvxbGA1YSOaxu4OEihCScRieWDhj8PwLiF2kijSB
 lLh8KQbmQwrIbjUiA9NKlOhNtWCKUEU934EzXr7Q8t4fLslvtqpReJgYtI+XuI0x2Hgl
 TaiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SsjapID2C1+lzEI0Y6+LBgYZpWcvqWg5SYqB6L2wQ6M=;
 b=U9ChGogarK52mXYTAVvLxvOVQ2NrYgApjik+BaCzPcrhBIcKuzDQugh4a1TAN0G9Ea
 5TVo5k0PtDKPWHvLk4YR4sMUjfFj0QGaCSiKjYW7wAPIsK/OdH3P28V5Dc12XS/fo1HF
 bm+7MC95M5XCqcxJOJSa1tNIgtxUNgAEPeReVidgmM+PpwxQyjrhWQnPGu8QKdt/INNP
 BvpqeiaBJXehV6sCCKWweMm8Z3kOf40E46QzBZN99LbqrtwkPguAg5Jj1Bpq1HwcU3a8
 N0mtHQOp+e4XwgCK4cQse1wEhauGZd/idD7mnAhkfbrYUi7orKrLNYsrPzqU1CFcid0g
 ewYQ==
X-Gm-Message-State: AOAM531XapV3IMyk7TUuXW54IX8b0AWgRx86cIh//UTvL7Q79qTauuHG
 2EanHmTiVAfoMBcs4d/lQt+G0map2fwJMKcNAg2kmr2TXB308g==
X-Google-Smtp-Source: ABdhPJzhkKyGb+eeg0r4vO4g3q4Ce1s0kZXRl239HrjTgaLRTxZhzXrcR8IRVv4YRHMBv5x+RcoyUZ2CrWKY9gYK+eM=
X-Received: by 2002:ac2:5cd1:: with SMTP id f17mr4250509lfq.4.1591886912776;
 Thu, 11 Jun 2020 07:48:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200609145353.628a342d@lwn.net>
In-Reply-To: <20200609145353.628a342d@lwn.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 11 Jun 2020 16:48:21 +0200
Message-ID: <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
To: Jonathan Corbet <corbet@lwn.net>
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

On Tue, Jun 9, 2020 at 10:54 PM Jonathan Corbet <corbet@lwn.net> wrote:

> What are the next steps for kernel documentation?  What would we really
> like our docs to look like, and how might we find the resources to get
> them to that point?

We have a whole slew of quite basic introductory materials to the very
fundamental kernel data structures that are scattered all over the planet
and in the LWN kernel archive. All in often slightly dated variants.
Examples:
https://www.kernel.org/doc/gorman/html/understand/understand006.html
http://vger.kernel.org/~davem/skb_data.html

I suppose technical writers could benefit from a global TODO list with
this kind of subjects such as "document the basic arch interface",
"document what an skb is", "document how the page directory works".

Right now it is a mixture of read the code, "everybody knows how that
works" and random sources on the Internet, which isn't very helpful
to newcomers.

I second Vetters point to tie this documentation in tightly with the code
implementing it even pretty substantial text chunks IMO, the idea can be
attributed to Donald Knuth's book on literate programming from 1984,
and while he was a bit enthusiastic the idea isn't bad at all.

Yours,
Linus Walleij
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
