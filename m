Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E408C433E0
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 20:56:39 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C94D4206F6
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 20:56:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="byd/f9TO"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C94D4206F6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A324388250;
	Tue,  7 Jul 2020 20:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EA5GE4Jig-rn; Tue,  7 Jul 2020 20:56:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0772A88072;
	Tue,  7 Jul 2020 20:56:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CC447C0893;
	Tue,  7 Jul 2020 20:56:36 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C8CC6C0893
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 20:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B61BC89172
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 20:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ShW246s1wt-i
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 20:56:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5D37C8914A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 20:56:33 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id g67so19668199pgc.8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 07 Jul 2020 13:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=w+KZo1sPWTutiATsxk3Uy2pZjCjintgvyK96Yf9RfKc=;
 b=byd/f9TOVQc3JmoxGzurellv8qYNwshDPxpudLMSpoQM9PXIdnFsKaJ9zv8+LjHkWt
 Leo4c50JOA4qXA0q3+rtKY0nYEcZ9d1mYgf/2BrCcZp2+Uw1v+MgX5geDMjo26ahQ/Xq
 WG2e0WGcuRqGJCLCZE9qF8ctnON5a8fs64ZRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=w+KZo1sPWTutiATsxk3Uy2pZjCjintgvyK96Yf9RfKc=;
 b=Wplzxne4cYA/KaAVaS7msohUhRvIkBRYNUwd1X0PPXHAyjBRDO2Ujtp6VgNN7HcOeI
 MbXGIOgLoRFRbubAcBOWOxlzCBoNpk/7OXXeiW6NlSn2Qsro29bo/B8b6GYbuVugqSAc
 QR5zT3Ewuy4sty/OpBQFE81TSWYWewS5VTvygKwkWHejvOah67t6zVUjQD+EY2HPvViD
 +NWJpaZhdoIE3P6ZFzR6FlJxR9u01tt3Fu3uSc6UggSWyMqAYrwIafImoqqt/cN7HFRG
 w81GGf/chi0TUy/MlAyKN7gh4h31RYAsiZNj2TFyRmQY59Y0614+TrtOY2QGFHZsscD9
 O7IA==
X-Gm-Message-State: AOAM532QilDCLCDVzO0Sw4QEmFtVil5Z6zn17cB90YIIwr25jCPKt0ii
 F8QjqykQPsMErv5KSD+TXKvYEQ==
X-Google-Smtp-Source: ABdhPJxVvLhi5KAqgk+fO2zPVpbTI4B38DeQ3QOZndyWiKG1akDQwEeglJUxopKEbgdAvRuSbH353g==
X-Received: by 2002:a62:ce46:: with SMTP id y67mr47587752pfg.118.1594155392908; 
 Tue, 07 Jul 2020 13:56:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k100sm3315034pjb.57.2020.07.07.13.56.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:56:32 -0700 (PDT)
Date: Tue, 7 Jul 2020 13:56:30 -0700
From: Kees Cook <keescook@chromium.org>
To: Mike Rapoport <rppt@linux.ibm.com>
Message-ID: <202007071346.F123B0A57@keescook>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CALCETrXewAK4_fpaJNDHJVDK9mUcjghA5HwYvZFQNYVfC9M+OQ@mail.gmail.com>
 <202007062234.A90F922DF@keescook>
 <DM6PR06MB3836FBAD65096AF63ACD3DB3EE660@DM6PR06MB3836.namprd06.prod.outlook.com>
 <202007070137.3ADBEDC@keescook>
 <20200707094147.213e0a82@oasis.local.home>
 <20200707144542.GD9411@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200707144542.GD9411@linux.ibm.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>, Chris Mason <clm@fb.clm>
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

On Tue, Jul 07, 2020 at 05:45:42PM +0300, Mike Rapoport wrote:
> On Tue, Jul 07, 2020 at 09:41:47AM -0400, Steven Rostedt wrote:
> > On Tue, 7 Jul 2020 01:54:23 -0700
> > Kees Cook <keescook@chromium.org> wrote:
> > 
> > > "I will whitelist the syscall" -- sounds correct to me (same for
> > > "it is whitelisted" or "it is in whitelisting mode").
> > > 
> > > "I will allow-list the syscall" -- sounds wrong to me (same for
> > > "it is allow-listed" or "it is in allow-listing mode").
> > 
> > That's because we can't just make "allow-list" a drop in replacement
> > for "whitelist" as I too (native English speaker) find it awkward. But
> > then we don't need to make it a drop in replacement.
> > 
> > "I will whitelist the syscall" will become "I will add the syscall to
> > the allow-list", which sounds perfectly fine, and even better than
> > saying "I will add the syscall to the whitelist".
> 
> I will allow the syscall?

Kind of, but it's this change to verb-noun from adj-noun that confuses the
resulting language: the verb form of the verb-noun doesn't distinguish
between its stand-alone action ("allowed") or its combined action
("allow-list-ed") in the same way that the verb form of the adj-noun does
(the verbed adj-noun is its own word). To me to looks like "allowed" and
"whitelisted" mean distinct things (as in, a single allowance vs being
added to the persistent list of allowances).

So "I will allow this system call once" and "I will allow all instances
of this syscall", or we just get used to using the verb-noun as a whole,
and embrace "I allowlisted the syscall."

But yes, as I and others come back to: it's fine. We'll just use different
surrounding constructs to avoid confusion. But it is an odd characteristic
of English's grammar (or lack of appropriately descriptive adjectives) to
not have a drop-in replacement. (Which is where I think the master/slave
replacements fair far better -- the whitelist replacement is more complex,
but it's mostly just English glitchiness.)

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
