Return-Path: <SRS0=oZFN=AK=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C41C433DF
	for <ksummit-discuss@archiver.kernel.org>; Mon, 29 Jun 2020 09:25:59 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2149B233F6
	for <ksummit-discuss@archiver.kernel.org>; Mon, 29 Jun 2020 09:25:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=google.com header.i=@google.com header.b="Ge8WvGqY"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2149B233F6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lists.linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C8F3875BB;
	Mon, 29 Jun 2020 09:25:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bpdCDRdHHytF; Mon, 29 Jun 2020 09:25:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C1A687589;
	Mon, 29 Jun 2020 09:25:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 49D38C07FF;
	Mon, 29 Jun 2020 09:25:58 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 88646C016E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 29 Jun 2020 09:25:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 76E7925D30
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 29 Jun 2020 09:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MQ+UetnwZByh
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 29 Jun 2020 09:25:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by silver.osuosl.org (Postfix) with ESMTPS id DF5332051D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 29 Jun 2020 09:25:56 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id a127so7632499pfa.12
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 29 Jun 2020 02:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=cXp6h0mtiH81GPWkMGqiOdFq0v0ZMw+HINSy0j5Xmjo=;
 b=Ge8WvGqYm/lQ97Xa036ZdlNnb7uo4r5QK/8x+7VObKPW7V+cazJkl/7zgnuhxhuwg2
 3QWhdY+dZuiQzjFGg+eNXmQV+llQ33Gl3pUF7Ys6Aiyq3RLY7ijb8EpQ0lIWEUp02/XT
 9Clpmqpe2i6KtPupd19WDEudWf06JXHm42ukp2jrNgLzuNrK++UHZ7okd4RwHQJ3OdbE
 42Mn8WUqRN0rdlbr22Mwpx9SX6bhmH7uT0vMbWl5IOACWj9BlYHAeNhdLz+JrLjZSZ+5
 BuUe22Y4GE+9UG/kQ1pxMzSHwHz75uoZ5VE/MPTgnAJQoMxr4PvWOPn+l1X5juiaMXuY
 YkJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=cXp6h0mtiH81GPWkMGqiOdFq0v0ZMw+HINSy0j5Xmjo=;
 b=Xi2k9/e7OI9/Zj0Gz6g/vpReahbqEzMN0K1S5a8QVFED7bvINrcuHrzLBT4QArlSnS
 xdP0+Os66B1rk5zh0wNhKG/eE9JlIqGFLZx6YmP+aUO0/MlaHthsw6rG9UI6XGDKqcPs
 EbREZrUYTtTLt+BGUjevw77GK1LVFsl1bI8W13LQl4xcQFpMB0UkTI483el/0sqUbWeI
 sTona2hjuUVVxRyZP6BaXD0AK5V1wbDG0I9z2HxxhvHCPJS8MRHc5xUoVGbMOc7THaLC
 pNwdE5+CZXqi4DqvbAY6slSCXKsN3M5WwxE6/E+kanWrDiHKvV2Er+j0VTVoBiClOsh7
 +EGg==
X-Gm-Message-State: AOAM532vjr5cpeME40lSf0/uC+W6tceCYynX+bxR6zoQhcX+WTR1biat
 dbNY9z1lQzI+E7k4j/PD1DjfljlRiwA=
X-Google-Smtp-Source: ABdhPJwz7wITyOImJYmUMqOEJ16rvBRGvMhXgk/uE16VFK1iX9QoxmhucL1e1ArRPxY+T9PR9g9PwQ==
X-Received: by 2002:a63:d911:: with SMTP id r17mr9224782pgg.202.1593422756042; 
 Mon, 29 Jun 2020 02:25:56 -0700 (PDT)
Received: from google.com (124.190.199.35.bc.googleusercontent.com.
 [35.199.190.124])
 by smtp.gmail.com with ESMTPSA id g4sm11070811pfi.68.2020.06.29.02.25.55
 for <ksummit-discuss@lists.linuxfoundation.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 02:25:55 -0700 (PDT)
Date: Mon, 29 Jun 2020 09:25:51 +0000
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20200629092551.GA673684@google.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Ksummit-discuss] [TECH TOPIC] Inline Encryption Support and new
	related features
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
From: Satya Tangirala via Ksummit-discuss
 <ksummit-discuss@lists.linuxfoundation.org>
Reply-To: Satya Tangirala <satyat@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

I gave a talk about file based encryption and the proposed inner workings
of inline encryption at last year's LPC. Since then, the patchset has gone
through almost 10 revisions, and the block layer patches have been merged
a little while ago into Linux v5.8 (and the remaining patches are being
targeted for the v5.9 release). There have been many changes in the design
and implementation over the past 10 revisions, some of which are likely
worth going over.

An older version of the implementation has also been checked into Android
for more than half a year now, and new changes and features have been
proposed and implemented on top of the base inline encryption patchset,
and are currently being maintained out of tree in Android like
 - hardware wrapped key support
 - device mapper support
 - UFS crypto variant operations to support non-standard hardware
 - eMMC inline encryption support
 - direct I/O support for fscrypt
 - metadata encryption
These are all features we'd like to see upstreamed soon. I'd like to
talk about and discuss some of these features and what we'd like to
propose upstream for them.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
