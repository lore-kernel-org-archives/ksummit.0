Return-Path: <SRS0=2co7=7C=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A3D3C433E0
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 16:17:50 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0108120671
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 16:17:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="j3G466cH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0108120671
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 829EF24BEA;
	Wed, 20 May 2020 16:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r-WbdQ-oey5G; Wed, 20 May 2020 16:17:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 56F6D24AFE;
	Wed, 20 May 2020 16:17:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 183AFC088A;
	Wed, 20 May 2020 16:17:46 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 29C5CC0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 16:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2659C86EB7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 16:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oN90NRHeMKt7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 16:17:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 977A486DE4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 16:17:44 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id w19so1517935ply.11
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 09:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=tcDJEOMkZcAT2u/TYgoU8j6qIz1x1t6alBZvjfiAYCA=;
 b=j3G466cH1fGVq1pdHmafXXI+dnIAYWX7eRVltujT59Bvm+CiFkMp4L8jc7/j6LCKgf
 46dW7YwoGSi80cpG4L2HprW/xxNVX2riinSwMMPIQkkYyPtUV5vZqXY/NYkW+qii6vcU
 vBtytMvnMeW9WCCMPXm/bpP/2pA/HosMmapj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=tcDJEOMkZcAT2u/TYgoU8j6qIz1x1t6alBZvjfiAYCA=;
 b=HUveoXmb5Ob6+IQO0yK1EHE8+JjSpN+Q1f44S9KItg0UYEc+iRponp68GR02HaPPud
 Kh40yQGEE6WLPffZWUTI5wSfaiVdZYhfSCp7lKe9w+JjtCPyC9rGjES1woSHZafLHOgB
 plGriwAPS/7YgxTLgA+6+xfHCB7e2qv0fqPSAORl70lBxrE9jL/YkPelQWbTZSufcE//
 zhjpT4fbRyBArYj/RRnFzd6OAyf/l54Ds3lRKqR9wOWHxp0/Az0RuK0duVC0chyvMzDH
 tiBV02QUuhuOulG13mPhkDJNdDlmv3oeN0P0bOeGgff0MJyafuhcOxW1jlfddyXz7Ztj
 i1+w==
X-Gm-Message-State: AOAM531JUkX/WxV/L40De3Hlsn5x8TfaOgnJ/JAHKCav/skgGwdVhWQV
 jb21j7qJw7n7PfPhiH61AEx0+3hIfXvkIg==
X-Google-Smtp-Source: ABdhPJxqhTZXyPQbrRwGbuNVK4h39bFzDNy6xuKqb3PRM+QbwXPlNWXgK9Puw4HGzOowxhvzcsjHzw==
X-Received: by 2002:a17:902:8c8c:: with SMTP id
 t12mr5345134plo.285.1589991463652; 
 Wed, 20 May 2020 09:17:43 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id l1sm2158102pgj.48.2020.05.20.09.17.42
 for <ksummit-discuss@lists.linuxfoundation.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 09:17:42 -0700 (PDT)
Date: Wed, 20 May 2020 09:17:41 -0700
From: Kees Cook <keescook@chromium.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <202005200917.71E6A5B20@keescook>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Ksummit-discuss] [TECH TOPIC] seccomp feature development
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

As recently outlined[1], there are are a number of seccomp topics that
need discussion:

 - fd passing
 - deep argument inspection
 - changing structure sizes
 - syscall bitmasks

Specifically, seccomp needs to grow the ability to inspect Extensible
Argument syscalls, which requires that it inspect userspace memory
without Time-of-Check/Time-of-Use races and without double-copying.
Additionally, since the structures can grow and be nested, there needs
to be a way to deal with flattening the arguments into a linear buffer
that can be examined by seccomp's BPF dialect. All of this also needs to
be handled by the USER_NOTIF implementation. Finally, fd passing needs
to be finished, and there needs to be an exploration of syscall bitmasks
to augment the existing filters to gain back some performance.

-Kees

(This has been submitted to the LPC site as well[2].)

[1] https://lore.kernel.org/lkml/202005181120.971232B7B@keescook/
[2] https://linuxplumbersconf.org/event/7/abstracts/596/

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
