Return-Path: <SRS0=jAhB=BK=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 803B8C433DF
	for <ksummit-discuss@archiver.kernel.org>; Fri, 31 Jul 2020 15:00:38 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 585D02072A
	for <ksummit-discuss@archiver.kernel.org>; Fri, 31 Jul 2020 15:00:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 585D02072A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=arndb.de
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3051888538;
	Fri, 31 Jul 2020 15:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rtAjPZDLeQDb; Fri, 31 Jul 2020 15:00:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28698886C1;
	Fri, 31 Jul 2020 15:00:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EE0ACC004F;
	Fri, 31 Jul 2020 15:00:35 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 66B27C004D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 15:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F290886C1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 15:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rsSI8tAK4H0B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 15:00:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DA78188538
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 15:00:32 +0000 (UTC)
Received: from mail-qt1-f173.google.com ([209.85.160.173]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MTANt-1kCIJW41AV-00UdX7 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 17:00:30 +0200
Received: by mail-qt1-f173.google.com with SMTP id t23so20004278qto.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 08:00:29 -0700 (PDT)
X-Gm-Message-State: AOAM532CHUMh1gLpgOngbQ9ZDimnIhhPp3M/9zJRsErKiN+ah1BybPcu
 kgW2Ew8BBig3pOLizNE/lmJUKuSZ65q4UPmeMVs=
X-Google-Smtp-Source: ABdhPJzO/erL08bCGwMduOM/V0DeqInBOr6E8Io9U9J6HsgWZw3VlesVETo5I46uVVvCLprU6rHevJnFSzTp7PNQoVU=
X-Received: by 2002:ac8:5195:: with SMTP id c21mr4078600qtn.304.1596207628426; 
 Fri, 31 Jul 2020 08:00:28 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 Jul 2020 17:00:12 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2PK_bC5=3wcWm43=y5xk-Dq5-fGPExJMnOrNfGfB1m1A@mail.gmail.com>
Message-ID: <CAK8P3a2PK_bC5=3wcWm43=y5xk-Dq5-fGPExJMnOrNfGfB1m1A@mail.gmail.com>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>, 
 Mike Rapoport <rppt@linux.ibm.com>, linux-arch <linux-arch@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Provags-ID: V03:K1:VrofbhoJLiHh/36/AtEluLcSahHhMpjZ1cyokYDo1MtpzwvOrPE
 kb0n8B8XkSTXLU/VT27Z3+CTzu3K2S3hdrevw0WhEDoSxlN4yr1bvzZ/MFOeJQeBlj22KRb
 qpMcPs2nIhCQesSDdGmjHpZZiQp+2rJrxrLxC7q/hvZ/p0fnc+3Uy+rl8+KN505kTNMOGMT
 MiHvL9zKYg0hTLK6unv1w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:gVtMiZ2fv88=:jh4hAwVocj/xJ0r0/Eaou7
 M38M60Fc4Qf5mxxqW5JaTqENegumkP2liz4sfMfzOvDb5cyDHiZgqCGWVUzWeVMcJosf1ms/Z
 xDwf02yzAY3dFP6QWoT13lHaN0prH9cknljb7S2UeAtm6SoV/Cj9PxsJy6Aj6K4O2gTuLqstr
 cxHDaSErPbpMD9X2VjJ6vFYomskuXqgqMlsmlznY4y1kNeCMqk8Hz4w0BGuVfepCkhxViLc7h
 ZrL5R8l4aMdBheh4JhxyFX6r1VwxPS+QTAHL+jHfgh0kPotAlsR6wrWUqJ9FQNW2inXlqgnhT
 EaPZF94LNnWOEPDUI2e9QLtdddOmAsSLs1KPltqvQjvf+F2p6TihRhZ2ZG9hKHyc51g4QmwmI
 OV8Rc3OTbXq+/gHB8oP3XnhDYE0C93lM33yJLBgwZaPbsrinOdDUTwqSBqFeGOvAva4gmA6d7
 BYTH5/74lE7tHd3I4tfQQK5Ju40Muk54kgtYRrOjHXKl09DVxcfndC0eJd1nC8Jdd8GVP1ruM
 B3gZt8O7xHjybt/+8sKKnz0PVEklL1Qzpa7QNEHqS5MDzW3ByHLHc+b2EOnpBZmLYgAS1feob
 031vTpn/nWw1R4QfufguwgfQngr+R8dpyLyUOmlAAY21XmN4A2tHTpTU0GEq5Rv7kOXKza4y6
 TW2ya79uz6kSWFtBkrKxyLGczYccbQqco/VrIn3xy9BZfuneBFFpP7XagatCVLrxolPkInB9/
 g1DVde2+socSb+bxaw1sp0XlI1Q2RPy9acYSusOq+7YRTA4RtPYLg0f5aBV+/9q+/6IdMa8VW
 hRtNqE0Yc9mtEVrcQz8Va7lqzFpXb+pXX+4oKuJt/8VuCkcAD17L02AyGT1DTM9iQ4SJVcX
Subject: [Ksummit-discuss] [TECH TOPIC] Planning code obsolescence
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

I have submitted the below as a topic for the linux/arch/* MC that Mike
and I run, but I suppose it also makes sense to discuss it on the
ksummit-discuss mailing list (cross-posted to linux-arch and lkml) as well
even if we don't discuss it at the main ksummit track.

     Arnd

8<---
The majority of the code in the kernel deals with hardware that was made
a long time ago, and we are regularly discussing which of those bits are
still needed. In some cases (e.g. 20+ year old RISC workstation support),
there are hobbyists that take care of maintainership despite there being
no commercial interest. In other cases (e.g. x.25 networking) it turned
out that there are very long-lived products that are actively supported
on new kernels.

When I removed support for eight instruction set architectures in 2018,
those were the ones that no longer had any users of mainline kernels,
and removing them allowed later cleanup of cross-architecture code that
would have been much harder before.

I propose adding a Documentation file that keeps track of any notable
kernel feature that could be classified as "obsolete", and listing
e.g. following properties:

* Kconfig symbol controlling the feature

* How long we expect to keep it as a minimum

* Known use cases, or other reasons this needs to stay

* Latest kernel in which it was known to have worked

* Contact information for known users (mailing list, personal email)

* Other features that may depend on this

* Possible benefits of eventually removing it

With that information, my hope is that it becomes easier to plan when
some code can be removed after the last users have stopped upgrading
their kernels, while also preventing code from being removed that is
actually still in active use.

In the discussion at the linux/arch/* MC, I would hope to answer these
questions:

* Do other developers find this useful to have?

* Where should the information be kept (Documentation/*, Kconfig,
MAINTAINERS, wiki.kernel.org, ...)

* Which information should be part of an entry?

* What granularity should this be applied to -- only high-level features
like CPU architectures and subsystems, or individual drivers and machines?
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
