Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC6FC433DF
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 18:05:24 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 86BF720708
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 18:05:24 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aEzU+QQi"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 86BF720708
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 410B888F50;
	Tue,  7 Jul 2020 18:04:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r3YE7GWNh-8A; Tue,  7 Jul 2020 18:04:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3013388F6D;
	Tue,  7 Jul 2020 18:04:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 01286C08A6;
	Tue,  7 Jul 2020 18:04:18 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 710EFC016F;
 Tue,  7 Jul 2020 00:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A26087C1A;
 Tue,  7 Jul 2020 00:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id baxqljEXiWe3; Tue,  7 Jul 2020 00:48:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4BAEB87BF6;
 Tue,  7 Jul 2020 00:48:29 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id f7so40293169wrw.1;
 Mon, 06 Jul 2020 17:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PHhv6qtDtZXzF49Da3FQ68J1JWwelrTuXT4MT+d/caU=;
 b=aEzU+QQiyO+d/C5msmDuI178ZOTJym6eHcWcEGm52D2TkuE15w4Favr3Bmo8UNSa+a
 Q3Ko5g10x7/KSJAU2uh3TiWW6wgJ6FzkZf9WP6HyhxQ5dPpxWVBb0VX5IOJFc2pWrXQK
 J00fuUHT50dNMcadHz8Y8+TAIKeMPZO8ANyynChAQNU7hz7oK7QMWqAlbJRxO1QZLAkf
 S+ONIZEwX+pThxzgzf993qF2Vy4ONBhs7hJT6OlB2wivKfWfTSI2jBAlHobrtHvLO4L2
 PiGgGfrDzCZ3q+Hbn0aaMxnYc4tx2U/bOgzWNnQhKfFGHr4mh3x2SiRVtS0PM8i2kYW5
 N7lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PHhv6qtDtZXzF49Da3FQ68J1JWwelrTuXT4MT+d/caU=;
 b=tdR2qsWQTdsyV5ZBMlpvriDf0qztSH5rkuscnkAiuQY7fqm/xXsa/8n+bqLFnGRk9d
 rVjv9W/h9J1518tK/YLkEbL6E9BFE/2d31SjO7eVpyZuZZMgzELObcFOmiGBs2bktvD2
 xa/TzfD07IAkcBeHHwUQ0eLQCjk1JASmvVoW3yLcyjpdULE/dpnxBJvN7HuS2PVwjrku
 ME53Mu6NKr7y1u1gqlVuwNQYFMomt6piQi4po3uciLyWdyq4ccP68dKet7uX+LF11rJp
 v51POsIwQUpJWqh0nIWTYLSN1Pv5XwgqVSG7fyoDxvDD+KEwFilsrTZCNiz+GQR1xT+y
 jpRg==
X-Gm-Message-State: AOAM530iAm8Us5rsGVdKwiFoAiKsMEtwERB7WQzLsfhZVcyRKUOod1G2
 aN/tw8LavZ0bORM7OURIHCZNx0mj
X-Google-Smtp-Source: ABdhPJwde4GyvWgcYR6EKHS35BJJTV4Sg2r0YwQEk95QDzSvGpZtN7Nu75tw//9+e+6qASAkVU/Iqw==
X-Received: by 2002:adf:f707:: with SMTP id r7mr50492428wrp.70.1594082907285; 
 Mon, 06 Jul 2020 17:48:27 -0700 (PDT)
Received: from [192.168.50.2] (178-164-237-246.pool.digikabel.hu.
 [178.164.237.246])
 by smtp.gmail.com with ESMTPSA id l18sm26362320wrm.52.2020.07.06.17.48.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jul 2020 17:48:26 -0700 (PDT)
From: Tibor Raschko <tibrasch@gmail.com>
To: linux-kernel@vger.kernel.org
References: <20200706191555.GD6176@sirena.org.uk>
Message-ID: <44713cf0-db41-bdd0-a41e-d710c346be12@gmail.com>
Date: Tue, 7 Jul 2020 02:48:25 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200706191555.GD6176@sirena.org.uk>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 07 Jul 2020 18:04:13 +0000
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 ksummit-discuss@lists.linuxfoundation.org
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

> More generally etymological arguments are just not super relevant here
> anyway, the issues people have are around current perceptions rather
> than where things came from.

This is where ignoring etymology in this case falls apart, claiming that the
current meaning is more important than the historical one. Yes it should be more
important, but it suggests that the current meaning is negative, which it is
not. In computer science (context!) these words do not have any negative
perception or connotation, and people in this field know this. Yes, outsiders
might not know this and could misunderstand them. But since when do experts in
computer science (or in any field of science for the matter) care if a layman
can correctly understand the field's technical terms? We never did and never
will, except in this particular case for some odd reason.

Be honest: "blacklist" is a technical term where the actual meaning has no
negative connotation despite what people outside the field might think. But
apparently we don't care about the actual meaning. We also don't care about the
historical meaning or etymology. We only care about... well if not about the
meaning in the past or present, then I don't know what. Looking good in the media?
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
