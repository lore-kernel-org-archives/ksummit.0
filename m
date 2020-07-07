Return-Path: <SRS0=cq3z=AT=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 453FAC433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 04:07:30 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 15F11206BE
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 04:07:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="REr80juD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 15F11206BE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=alum.mit.edu
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81C63881D0;
	Wed,  8 Jul 2020 04:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u4G6gPAMTDmH; Wed,  8 Jul 2020 04:07:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0EB3C87DFF;
	Wed,  8 Jul 2020 04:07:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D092BC07FF;
	Wed,  8 Jul 2020 04:07:04 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 10656C016F;
 Tue,  7 Jul 2020 21:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F177988EA9;
 Tue,  7 Jul 2020 21:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZHT2Tdwd8yc; Tue,  7 Jul 2020 21:26:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 400FE88E2C;
 Tue,  7 Jul 2020 21:26:44 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id x62so32956146qtd.3;
 Tue, 07 Jul 2020 14:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0huEUzYXA/GGYX5cduiY4exKC/PaSEcRPcqWa+ZwYFA=;
 b=REr80juDXRALebLkMrnwFOFOGJ4dV88o4rqAdC2cmyAwlETmOxJIjyBd8GLtZ+jRE8
 lMVzMkOOlJSLf+vE0eZZJzH7aMrse+BOKTz6R/U3hXQkZ+eVRMg/B0KAF1yk35Ibas37
 aiLYM3OIw9MKD9xhBAcspmb23w/Az1DFqUXnUwK1d4CtGditLu2xitN+DA1fPTkyur0B
 eb0mkvs5JBgS980el5Dec3jJZe5/puri/tjr6VWLZyyjk8yQc9fwTz5HpOR//LSLHpzO
 Fc/D5pGSXk2f4EuGmfmOLQG/mfh17vsN7Ck3jPymI2Vq3neKgmv5E+nZBcU8zR5SQeK/
 EhSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=0huEUzYXA/GGYX5cduiY4exKC/PaSEcRPcqWa+ZwYFA=;
 b=G9KWgg4oHwLmCrAhJFNXihto0dCIiI0VPZtJ4XanRuu+Y2t0095KgzMDCBLBQ8tvMa
 bNx54AlJfb+pSk9o+5hnNZ5aRyfcMyMgm9Plsc7clmYRxAqBJxKZg4gxL84g2wrSh450
 P2tAYfuP3RsIOJjrgJ/ABfdjwoXQr06XPS4ZZ7v+OMyGInOHkjtZbVXiVyXDIVb2ulhs
 /ZrCQzF7BOzHJLBHE9A4T5EoWNE1NFtNi/QklLpi1EyoKH3yMVDcgnPikJ4lc4X0wAvP
 58Y5j4xJmbloKVUmP1ZhNxk/efUps7KW/TwlnguUUdWBcGm0ArVPgUA1j5JtLrXbI0kv
 QEUw==
X-Gm-Message-State: AOAM531oGHq7x1GXAcoBM8sz0ClYG7kJE4m6n0sK6/Njov2wh6Z3XjFg
 gzvcpWZs64FTEMwrFdjJOm8=
X-Google-Smtp-Source: ABdhPJycxBI3L6mHLW9ZeEhqJ97T1JwvRZzRT2q282phik7lUgrm8zzQ/btIIqB+Py2upRI1cSHPUw==
X-Received: by 2002:ac8:134a:: with SMTP id f10mr58330231qtj.131.1594157203241; 
 Tue, 07 Jul 2020 14:26:43 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id f4sm26775479qtv.59.2020.07.07.14.26.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 14:26:42 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Tue, 7 Jul 2020 17:26:41 -0400
To: Tibor Raschko <tibrasch@gmail.com>
Message-ID: <20200707212641.GA1575320@rani.riverdale.lan>
References: <20200706191555.GD6176@sirena.org.uk>
 <44713cf0-db41-bdd0-a41e-d710c346be12@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44713cf0-db41-bdd0-a41e-d710c346be12@gmail.com>
X-Mailman-Approved-At: Wed, 08 Jul 2020 04:07:03 +0000
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org
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

On Tue, Jul 07, 2020 at 02:48:25AM +0200, Tibor Raschko wrote:
> > More generally etymological arguments are just not super relevant here
> > anyway, the issues people have are around current perceptions rather
> > than where things came from.
> 
> This is where ignoring etymology in this case falls apart, claiming that the
> current meaning is more important than the historical one. Yes it should be more
> important, but it suggests that the current meaning is negative, which it is
> not. In computer science (context!) these words do not have any negative
> perception or connotation, and people in this field know this. Yes, outsiders
> might not know this and could misunderstand them. But since when do experts in
> computer science (or in any field of science for the matter) care if a layman
> can correctly understand the field's technical terms? We never did and never
> will, except in this particular case for some odd reason.
> 
> Be honest: "blacklist" is a technical term where the actual meaning has no
> negative connotation despite what people outside the field might think. But
> apparently we don't care about the actual meaning. We also don't care about the
> historical meaning or etymology. We only care about... well if not about the
> meaning in the past or present, then I don't know what. Looking good in the media?

Blacklist most definitely has a negative connotation in technical use.
You blacklist devices that don't work properly, you blacklist drivers
that don't work for your hardware, you blacklist domains that are
sending spam or trying to mount network attacks on your servers. Things
on the blacklist are "bad" in one way or the other, that's the reason
they're on it.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
