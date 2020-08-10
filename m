Return-Path: <SRS0=i7h4=BU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B6CDC433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon, 10 Aug 2020 19:20:41 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4CC922080C
	for <ksummit-discuss@archiver.kernel.org>; Mon, 10 Aug 2020 19:20:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="oQWMo6Kd"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4CC922080C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 389E72038D;
	Mon, 10 Aug 2020 19:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4dfsnfFLRPU2; Mon, 10 Aug 2020 19:20:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 8A14620349;
	Mon, 10 Aug 2020 19:20:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 445E6C0864;
	Mon, 10 Aug 2020 19:20:35 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B499BC004D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 10 Aug 2020 19:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9DA7785B09
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 10 Aug 2020 19:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ICgw-x0s_Yp
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 10 Aug 2020 19:20:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6119185AE4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 10 Aug 2020 19:20:32 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id v15so5404769pgh.6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 10 Aug 2020 12:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=brRffC2D+O+bKeRJFtmbMv6N9AG9xz/t4QY513T7iU4=;
 b=oQWMo6KdYGbLXop05UlvoySt1KyxHj+CgRIpvrKCStHfzQ5xL2Brx8wV/Zcr0Nx0vD
 E+aawVzS9Id4uotl+3aTRYy92jM9fkHfv/lB4V5DssJpbAHOyNROH2pzD5YbZ1CSDwAY
 J2AdtqniLGAxzaOBlkD6j5eCpUpKHXyLuOKT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=brRffC2D+O+bKeRJFtmbMv6N9AG9xz/t4QY513T7iU4=;
 b=eKN2f/X8jJ4dPtNx9YSJhYkT6Dq30ajhItYyu4466cqY36bKI5JvwwXHG0PJ2TrsYq
 pwtezEKAlVl3p6FAI3zZwcvbOP2cxiGCfeFlaDfKI3NK0G96ridehfssAquOIWlrKGcV
 BmlCW9t4kSJEBg7mketj9oQdQ0zhVg8QgfLLNf12D0BN3+B8T42w0lVFxoFxlBvs8lSz
 ZZucn9qSJT5so1vcGmqY7iGIZRQUlnZ1Dyi6tGEsJEM86J5WGS0na4F4clvPvEYIf0HH
 Q7K3NidFKSFnga/+/kxwQe0EdacefV3V8ot9JZo5NLrJgIs6BLLiz8K8De/WbbNOPOlw
 Wang==
X-Gm-Message-State: AOAM5333C3u0FstZwUFV54HJbUExq6Or6TcVfBlyyJWr1Degj+tME1oh
 cdMMGO9lloJxKbyNfPSF2yMOWvMfv88=
X-Google-Smtp-Source: ABdhPJyxXjfd7iD+8iuCN2a0XWPO4htyfDbK4wrWYlL2yjOm/z6vzSZIS2QyLA6bpjrZEkFK2BragA==
X-Received: by 2002:aa7:94bd:: with SMTP id a29mr2505143pfl.280.1597087231433; 
 Mon, 10 Aug 2020 12:20:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k23sm18811069pgb.92.2020.08.10.12.20.30
 for <ksummit-discuss@lists.linuxfoundation.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Aug 2020 12:20:30 -0700 (PDT)
Date: Mon, 10 Aug 2020 12:20:29 -0700
From: Kees Cook <keescook@chromium.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <202008101110.E14843431@keescook>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Ksummit-discuss] Self-nomination for 2020 TAB election
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

I'm volunteering again to stand for election to the Technical Advisory
Board.

My primary concern for the kernel is security. I've been a member of
the security@kernel.org response team for 7 years, and I've been
herding cats with the Kernel Self-Protection Project[0] for 5 years. I
have frequently worked kernel-wide across many subsystems (or many
architectures) when helping land various security defenses. This
cross-maintainer work is a unique social and technical challenge, and
the topic of "security" is a similarly wide and unique challenge. I'd
like to continue to represent both of these concerns on the TAB.

In addition to being an active kernel developer and maintainer[1], I also
bring several "downstream" perspectives on how the kernel is consumed.
I understand the concerns of a general purpose-distro, having worked
on Ubuntu for 5 years. More recently, I know the demands of special
purpose device vendors, having worked on Chrome OS, Brillo, and
Android over the last 9 years.

In the last 2 years on the TAB I've supported the move to expanding the
TAB voting to online participation, and more recently spent time trying to
focus[2] the discussion of inclusive language into something productive
where we could still actually make meaningful changes in existing
subsystems[3], upstream projects[4], and, obviously, Coding Style[5].

Thanks for your consideration,

-Kees

[0] https://kernsec.org/wiki/index.php/Kernel_Self_Protection_Project
[1] https://lore.kernel.org/lkml/?q=f%3A%22Kees+Cook%22+s%3A%22GIT+PULL%22
[2] https://lore.kernel.org/netdev/202006091312.F91BB4E0CE@keescook/
[3] https://git.kernel.org/linus/8d87ae48ced2dffd5e7247d19eb4c88be6f1c6f1
[4] https://github.com/acpica/acpica/commit/660a40adae4e192a7559fcf3484ad46663971c5b
[5] https://git.kernel.org/linus/a5f526ecb075a08c4a082355020166c7fe13ae27

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
