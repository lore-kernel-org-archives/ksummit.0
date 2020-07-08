Return-Path: <SRS0=cq3z=AT=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B8EEC433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 04:13:19 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D4B6206BE
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 04:13:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20150623.gappssmtp.com header.i=@networkplumber-org.20150623.gappssmtp.com header.b="t6fZeMX0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D4B6206BE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=networkplumber.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B51988935B;
	Wed,  8 Jul 2020 04:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VZXKDsu8CbaO; Wed,  8 Jul 2020 04:13:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 626358830F;
	Wed,  8 Jul 2020 04:13:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3D35AC0893;
	Wed,  8 Jul 2020 04:13:17 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7CF8BC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 04:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6AFA023B9B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 04:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SEKrNaibGRmx
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 04:13:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 34F852033B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 04:13:15 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id k23so45498476iom.10
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 07 Jul 2020 21:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=huCwa23AMBbOfz7D5+DWlXxIEbfsNsvNBEXQRuLMwlg=;
 b=t6fZeMX0SuGD02kfuUqZAfKh9q4fz3iVtxNq+H87jk1hEds2JAhgCUWwrZxjTnXmiz
 fmW50gkTZG5FLCo7cjsmg46AzwNJ9RW6NCpPYU5fYssxzMEpzI8LY3pjyF6pjFxM0Imp
 R8NwZnr7SUDea0/AZ/HO5D/TMJTdBkx7xuxXVZcTGGv/9PBdswjSAzv6cy0A17XduNa8
 UWkA19hZw5OJ0eCD5ezpuifSnN5rTrwwFCC6HW44PRvMoa/0jLBjrW3WwiDn51THfOU4
 kZZLlhoNWq0euVHdBHK5bCTX3nynwwKYukndYUUEsKCKvzmkF83jlDXTb+rhp3vBUpYe
 dRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=huCwa23AMBbOfz7D5+DWlXxIEbfsNsvNBEXQRuLMwlg=;
 b=KX0u5taxNCj4b+IRRuas2OBezDVXf6OcEQBO6FotCefE0eqnqfoN6HjbA3dKVSBt2k
 52G9MS+qkRCVOGHEF8ijwkIdL2TCwCmib7ADh+Ri4Uw52b4JWyNgNg6lW8ykxH8nPtfy
 l6O9RBv2UkXkbhkcqiZglnT+Qh7xp448cMMb/yH0XJrmlKE0ZHxmBW3stmbUAXgW4CY2
 LS5CChDvdymLjL2bXuljQicLM3jJrFUKIEnSj3W0wO5rwuVTYKV7B1tzu9tpB7vgNaHZ
 A3crLnDt2jMeO3pp8LGC6hBzMRvEQcqXcfkKYQCjo6EW6kX4F2T33fxugoYuQltu8vr9
 xRHA==
X-Gm-Message-State: AOAM530D8LBNFxIdk+KJn9q1QRk7hJSgBgrEP4jQTcE/RBPA/M44QOoF
 DxLDmA/vgyutw508Tv2NPZ04GpQG1a8/vg==
X-Google-Smtp-Source: ABdhPJymDdsaLbNFhW83EpDlAYtnJyl4/MgTzUzkHhkKSUVvG0xV5Z5g86EB4pW841dZ2DMEqlZFmQ==
X-Received: by 2002:a63:d10a:: with SMTP id k10mr48115685pgg.382.1594179772295; 
 Tue, 07 Jul 2020 20:42:52 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id t184sm24228651pfd.49.2020.07.07.20.42.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 20:42:51 -0700 (PDT)
Date: Tue, 7 Jul 2020 20:42:41 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <20200707204241.36bea66a@hermes.lan>
In-Reply-To: <4592008a-16ee-d8c4-4ec3-5e36a268e5d6@gmail.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <1cceba0f-c8ad-260d-9a09-5417bee32d50@gmail.com>
 <20200706181052.174c290a@oasis.local.home>
 <717030b7-ecba-2ca4-39ff-6a5a04a732d4@gmail.com>
 <20200706182819.3467fa32@oasis.local.home>
 <4592008a-16ee-d8c4-4ec3-5e36a268e5d6@gmail.com>
MIME-Version: 1.0
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 ksummit-discuss@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
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

On Tue, 7 Jul 2020 02:03:36 +0300
Pavel Begunkov <asml.silence@gmail.com> wrote:

> On 07/07/2020 01:28, Steven Rostedt wrote:
> > On Tue, 7 Jul 2020 01:17:47 +0300
> > Pavel Begunkov <asml.silence@gmail.com> wrote:
> >   
> >> Totally agree with you! But do we care then whether two _devices_ or _objects_
> >> are slave-master? Can't see how it fundamentally differs.  
> > 
> > The term slave carries a lot more meaning than subordinate. I replied to
> > someone else but later realized that the person sent me their reply
> > offlist, so my reply to them was also offlist. What I told them was,
> > back in college (decades ago), when I first mentioned "master/slave" in
> > conversation (I think it was about hard drives), a person in that
> > conversation stated that those were not very nice terms to use. I blew
> > it off back then, but after listening to more people, I found that
> > using "slave" even to describe a device is not something that people
> > care to hear about.  
> 
> That's cultural, but honestly I've never seen such a person. I still
> don't understand, why having secondary or subordinate object belittling
> the owned side by not providing it the same rights and freedom is OK,
> but slave/master objects are not. Where is the line?
> 
> 
> > 
> > And in actuality, does one device actually enslave another device? I
> > think that terminology is misleading to begin with.  
> 
> As mentioned, I do like good clear terminology, and if it conveys the idea
> better, etc., then it's worth to try. And IMHO that's the right reasoning
> that should be behind. Otherwise, for almost every word we can find a person
> seeing something subjectively offensive or at least bad in it.

Wherever possible the kernel should use the same terminology as the current
standard in that area. Many of the master/slave references in the networking
code are for protocols based on IEEE 802 standards (unfortunately paywalled).
The current version of those standards do not use this kind of wording and the
standards committees are also actively working on inclusive language statemets.

As far as the use of master/slave for bonding, bridge, team etc, it
looks like Linux just invented using those terms since I don't see it
any other vendors implementations Cisco/Juniper/Arista/... Linux terms
are different than industry norms in networking, this is not a good
thing. But changing human expectations is hard.


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
