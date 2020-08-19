Return-Path: <SRS0=WjLQ=B5=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03F90C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed, 19 Aug 2020 17:15:56 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C966C207FF
	for <ksummit-discuss@archiver.kernel.org>; Wed, 19 Aug 2020 17:15:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lixom-net.20150623.gappssmtp.com header.i=@lixom-net.20150623.gappssmtp.com header.b="0FjmoTfL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C966C207FF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lixom.net
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E831387CDE;
	Wed, 19 Aug 2020 17:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4lsjqrBfLVxH; Wed, 19 Aug 2020 17:15:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 650D486E88;
	Wed, 19 Aug 2020 17:15:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2CBFBC088B;
	Wed, 19 Aug 2020 17:15:54 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6EAEDC0051
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 19 Aug 2020 17:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6BA5C875E0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 19 Aug 2020 17:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lDtMXz48aNwP
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 19 Aug 2020 17:15:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com
 [209.85.166.179])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B9EC7875E2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 19 Aug 2020 17:15:51 +0000 (UTC)
Received: by mail-il1-f179.google.com with SMTP id c6so21274724ilo.13
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 19 Aug 2020 10:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=q0lUMrBBrQFKnfz34i+FGQHN9o+WFlClC5Ed/U865Rg=;
 b=0FjmoTfLCWqQcStHEBCPzB34yQFMzrZwwbnJzUG8kqXJeAv6wqFOZNKSoLyrO03P8t
 gDeCBZq7LwiPe0FaPsB4+STvNvbRCQc2X8jsTBZJf/cG1YW19PIdnjK+xiplHbeI7VmE
 /5r56hCYzH+US2AoYHohTwNmnWYfhq4E4cthg4TydgpG1oJ4c2ALWbPDOw9Yr+YbZpb2
 nMLsO084e1C+jmDUe9fiu90bltRI0a9XEvILMGGM5EmvYIz2O4gNFmwgcaa+zvs70w1P
 q4dh3M2o0enfIEjPKhPRNg2+3fwYC58B8b2sTIovfTkxP68msb9ejo+/I9Esgwen361F
 OWAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=q0lUMrBBrQFKnfz34i+FGQHN9o+WFlClC5Ed/U865Rg=;
 b=aqzk+3WfnR6d5bSuLFdAA6zTLUb+ctSj2oxbgCZe1ah3tsjJRTPCVGItxsHnze+Va6
 TpzP2GYT87j148kqMNZDA+ksHW6rh98hT6Las/YL+hsja9DT401j3lzDGvXIUI6Txp6b
 dgWj/yprhfHZ/Z+RR3SXRome88yz/UMDkiQo8pVTQBn31CvSg0GnhJN3/Oj4ZMkuEgVC
 yG8beHkq+fR7zGkRufnB1M0NwsJmVsVet/iLFDzw9Roy0Tk5iYUWNe9oThvMZAvCKxkN
 ztTyvZ4NqIs91+sQbJ3SEEegL1HFSknVvv4UT/NFaLjEOuiqlCCHwdVa043Sx4PTWDXl
 x+Fg==
X-Gm-Message-State: AOAM532JJ1t0G+hYh/dJgiLP1pRxL/4BK1ianFLXftDjqfIKkYDxVIuG
 huoNnZv2et0ND14yc1Mhxi5CWl4uU0S1YkJAyxAZ1uc/ni0=
X-Google-Smtp-Source: ABdhPJxReJJ+BkVb3bZ8O9rcQ/jL0eA+wvVWf3HNVOYUiXfo3fpZyGs8qZ0AYFdrcwffT4hYPyQBJicEshnhaYHTyks=
X-Received: by 2002:a92:90d:: with SMTP id y13mr2408762ilg.278.1597857350329; 
 Wed, 19 Aug 2020 10:15:50 -0700 (PDT)
MIME-Version: 1.0
From: Olof Johansson <olof@lixom.net>
Date: Wed, 19 Aug 2020 10:15:39 -0700
Message-ID: <CAOesGMgLevAS9x8bQitBaRQbTU7eeX4ayxGx4o2625AvVZtobA@mail.gmail.com>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>, 
 tech-board-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] Self-nomination for the 2020 TAB election
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

Hi,

I would like to stand for re-election for the Technical Advisory Board
this year. I have appreciated the opportunity to represent the kernel
community through the TAB over the last 4 years, and would like to
continue doing so.

Over the years, I've been involved in various areas of the kernel,
from PowerPC architecture and platform work, to SoC maintainer roles
(mostly focused on ARM-based ones), with the last one still being my
main contribution to the community these days. I'm also involved in a
few other embedded projects such as Zephyr, but probably with a bit
less visibility.

I enjoy engaging with vendors, in particular when we can find ways to
get them involved in the community as developers and maintainers. Some
of my proudest moments as a maintainer have been when we've been able
to bring in some of these companies into our community instead of
having them work in isolation.

I find it valuable to make sure we have representation of
embedded-focused viewpoints on the TAB, and making sure we have
continue to have strong connections to those communities.


-Olof
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
