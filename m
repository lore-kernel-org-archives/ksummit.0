Return-Path: <SRS0=cq3z=AT=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C1C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 04:08:17 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 65859206BE
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 04:08:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cimSHl5L"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 65859206BE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EDE8B23455;
	Wed,  8 Jul 2020 04:07:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xA6xQtqn3+FM; Wed,  8 Jul 2020 04:07:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 57A75246FD;
	Wed,  8 Jul 2020 04:07:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1380BC0895;
	Wed,  8 Jul 2020 04:07:06 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1C58AC016F;
 Tue,  7 Jul 2020 23:54:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0AF4D87752;
 Tue,  7 Jul 2020 23:54:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kBMQ8xbPzfro; Tue,  7 Jul 2020 23:54:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 339BE8772C;
 Tue,  7 Jul 2020 23:54:11 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id p20so48479965ejd.13;
 Tue, 07 Jul 2020 16:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4ld5yvYpZk3zrDDeHii0Vpu7Nclpj2nEfal4+E6ydBE=;
 b=cimSHl5Lyez14li/0K2of8HcC6aVDRfdr9xZWOModnFxJTJgDRf2ZiJqxCsmDRAGNY
 BaBL+Em7jQFwAq8pJDeqxFtL/ltLdrdBiGoPar4NS97JPfcZe7ahhJBRNHWxCgXR0Dmw
 /ikwBXIUuSt2w52ZYWKt3HGoC8Z/M0eoQoqBqFDaqHTrW3AEpV1RAi7/5mdulV1E7Y/P
 JsLxPW9x0XVi1ZeOVf1YjHh2Ks5S6CT2c97mTKQ69x3JyEy1g5qAMNhYDPt9+OLXuk3q
 ONr7sibqVU+YpiZRxEZ0pzcNYzLWaVd/Hf8GQmr14Gyf5Wm/UNXnOciOQLFeSDSmN7ZK
 GnAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4ld5yvYpZk3zrDDeHii0Vpu7Nclpj2nEfal4+E6ydBE=;
 b=eY0sT9GPVsV1nfvORIbOfQyAipRBxPldhfgsuOfbN2HG8icLrMOeN61dkU5jB+NoG3
 vfr30OYu3jgLH4fadR37/USOZoN9JcOY2bu0nXJGTRT3WmuI+WdrChly3iqaSRn4bWH0
 8vfSaSD9qSaH5mmIWSJjizDzQa9nFwVF4igt2rpM37NWpSDRnecNU0FyP/nhob4+a0pt
 iXPg1Fv+wEUClPraI9shQ3l+KH2yn10AzmwiltV2hSIUHu6lP/M5vBLcxWLGFWKouY1M
 GxhArGAY6KsiZqPDhPHaRicUR8QJ78EFQmExb/KKzY0Q5aD2aWuzkb7KG5fm7SG0ByCG
 cnTA==
X-Gm-Message-State: AOAM531Htq3lDXSHIrc9hVW7NNy0pi0rN1HtaNs8u/fg9tRLKTQW1nv4
 k7+IrRgaQKmElAS+Vl0/DIeJ+e4c
X-Google-Smtp-Source: ABdhPJxyZ3NKJqQ4cGl9aGGZXkS+m/XXZWLYmC8ClxCAZoxLQg8sSzUvIXhl8E/KxRDs85vX9sK7Pw==
X-Received: by 2002:a17:906:469a:: with SMTP id
 a26mr46852677ejr.198.1594166049386; 
 Tue, 07 Jul 2020 16:54:09 -0700 (PDT)
Received: from [192.168.50.2] (178-164-237-246.pool.digikabel.hu.
 [178.164.237.246])
 by smtp.gmail.com with ESMTPSA id m2sm1066081ejg.7.2020.07.07.16.54.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jul 2020 16:54:08 -0700 (PDT)
From: Tibor Raschko <tibrasch@gmail.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
References: <20200706191555.GD6176@sirena.org.uk>
 <44713cf0-db41-bdd0-a41e-d710c346be12@gmail.com>
 <20200707212641.GA1575320@rani.riverdale.lan>
Message-ID: <cafbd1f4-b03b-077d-8a4e-d7b9bcaa070d@gmail.com>
Date: Wed, 8 Jul 2020 01:54:07 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200707212641.GA1575320@rani.riverdale.lan>
Content-Language: en-US
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

> Blacklist most definitely has a negative connotation in technical use.
> You blacklist devices that don't work properly, you blacklist drivers
> that don't work for your hardware, you blacklist domains that are
> sending spam or trying to mount network attacks on your servers. Things
> on the blacklist are "bad" in one way or the other, that's the reason
> they're on it.
> 

Of course, we put "bad" things on a blacklist. But in computing, only technical
things, not black people. What I meant with "blacklist has no negative
connotation" was that when we use the word "blacklist", nobody actually thinks
about people or skin color. Blocking bad IP addresses or faulty devices is
surely non-offensive.

If you argue that instead of this, what we really care about is "black" things
generally meaning something "bad", then forbidding "blacklist" will not get us
any closer to our goal. This is because we have a hundred other "black" phrases
in our language: black economy, black sheep, black market, to blacken, a
blackleg, a blackguard, a black mark ... only a couple of examples from the top
of my head.

My point is we will never get rid of the bad connotations in "black". "Black" is
always going to assume and remain something "unwanted", even after 2020. This is
why I think this whole campaign of removing "blacklist" is utterly ridiculous
and ineffective.

The real problem is that a group of people have been marked and
labeled with such a negative word. If we want to remove the negative association
from black people, we should stop calling them black. That'd be productive in
the long run, since afro-americans then wouldn't be associated with something
"bad" anymore.

But all the supporters of the campaign keep calling them something ba" by
calling them black, and hope to make a difference by banning 2 or 3 totally
unrelated phrases out of probably 50. The whole campaign is pointless and rides
on emotion and media attention instead of rational thinking.

I support avoiding references to master, slave, and to slavery in general.
I oppose avoiding blacklist.

Raschko T.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
