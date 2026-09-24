Received: from mail-vs2-f41.google.com (mail-vs2-f41.google.com [74.125.227.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9466F426416
	for <ksummit@lists.linux.dev>; Thu, 24 Sep 2026 06:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.227.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790233124; cv=none; b=QDl2xzlA2Cd9nWpypSWgFbiUo0wU3X2VKYjqi1TQaBVm93vUT+jPNPkdlUEz1h14ofB4LoEm9yopQeOKA1hKkjbB+ihMdeuJnrOJRmMvVfOAMdJGF0MbJgReqQZ0c3BEfH3YLUmem/Cn2JS+sSI+ThqQ0INRxkbfxDtg707pRf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790233124; c=relaxed/simple;
	bh=YDBDQKWwTnfXU0lY2HCpNNJNi8Swti4bu6+n9ynRa3o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QFKAPNI2DVHKoY4i9bun5gvmZw3GU4ZDJ2gyGlPIZ/dPB/SNi090BvP7r0Jf1bQmpRAR64ktFgIUg9fAMw+9hiH+8QxnKDdWquyetmKdOaVcdsvkJGLyqFY32LN/BtMppFVRsBLQ6xyN0u7ir0To+FwKRkwQ2UTHtODhHqt32gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.227.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs2-f41.google.com with SMTP id 71dfb90a1353d-5c67e4fff62so661801e0c.2
        for <ksummit@lists.linux.dev>; Wed, 23 Sep 2026 23:58:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790233111; x=1790837911;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=AsOD4kyt+hzzfCvEUTDpQS2kId2vwVUhayZZQ24X9EM=;
        b=Fc4e7d/DlEqcOBoKNiyUlfR/UPoQv75ENtrApzZtr1AGSYKRJwHxuo/ooLGzbx5/us
         P4rS6q1JOwxXRJKWW8yxzlnhhtR0l5ccXYJrDQDlypJ8Sry813a/tRVA7a3iDpGEV0eu
         7Xddfm2qSUHnprFWfQK69Bfv39jroTn8ERX5tWKFuMgiRHImWAePgsDlYfixs1k0Vl/f
         uPhieaMdpEpzzc7SOmA/M0xgnOOCpupsfIuXFAuNHFPAQKHl52WJ1uymNUJhNfFZlqsC
         ef9M2jXv88FMRqHhaRw+y39AtWPGAZHpInGONTtVRm46v3VnqgOdsC4V7+xWaK2Y6kbb
         M02A==
X-Forwarded-Encrypted: i=1; AKwUvBxijoPqv3jK3nbc2b5dhep4YKlM7dKVjbd0zuBrdXbtygdUU2BeTAvQHyJiaMkQZtsaaimZmwl0@lists.linux.dev
X-Gm-Message-State: AFuF++mK3l+qXWQypOw+yQYJQk7JffXDNMwhKObSJnN0r0tjaqWp5/ZT
	yCb5mi4gt8TDCS4zSqzfBSbWV1QyDkeOwh0f5QBr+4Od5DM0YDOTB//4yVF5htuUH3g=
X-Gm-Gg: AYBFou3UO5C4l3UO6K3PjoDfkjfRJSFTFus0Od9eHeQg6l8jeTlAW4LAG01A19l8m/6
	OY74u6OAMIZsRe9iiZIkXGHlRMoVdWyrKHfhathLwPPnyRD9drh0NZJg+FmdP0CIKC9MoS44KjM
	39YsEJ67/AnOpkgInPYaO4UlaYzo1jqNHKkoUJfjEb5+3oyqAUPEkT0NATyrweX/W3/21kQ5mCO
	gfWs4hQMLh1Gbs9Tz2rLkxJ+fjQIKWoT+aCpizgFp6TAR1Dzi75hVQA6aQr4g3Ri9+O+jAFWGLY
	Vp9U0E/m9v1oCBxiDGINT40WUn692P0kSVzrdYnb7H8K2QtIlxkvPWC8jOyjs5txsRgs/hcHayl
	XY+x5L+d/ssreFPmdMmcZ68+IV1D1rLedv5WgX00iD+uOUJR60P+shpm00Wo29V1P0uY/qrBkN2
	mK82N0NaUpKwSVzhHwgmvknMY98oFxjaRgndf8noBSD1fNtNQx0MQgB8rBSgRVIdPmA4YLT2DKA
	XZ1BSqJhCV0RRr2aFIuGuf3rT4+klewKVUe
X-Received: by 2002:a05:6102:38ce:b0:7a1:f7d2:e80c with SMTP id ada2fe7eead31-7af1eae9f87mr731053137.20.1790233110782;
        Wed, 23 Sep 2026 23:58:30 -0700 (PDT)
Received: from mail-vs2-f13.google.com (mail-vs2-f13.google.com. [74.125.227.13])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-7abf35bdfbcsm6876380137.1.2026.09.23.23.58.30
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2026 23:58:30 -0700 (PDT)
Received: by mail-vs2-f13.google.com with SMTP id ada2fe7eead31-795a0ab5227so650215137.1
        for <ksummit@lists.linux.dev>; Wed, 23 Sep 2026 23:58:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBwQQotJTS49RMT+36EYYALnJ3DNdkHx/8Q6DwHct67VDgvXYtaRQhTlzacN2YXym7vyfLI4Djh/@lists.linux.dev
X-Received: by 2002:a05:6102:6882:b0:7a7:19aa:f0d5 with SMTP id
 ada2fe7eead31-7af1f617c78mr814288137.34.1790233109776; Wed, 23 Sep 2026
 23:58:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <a7f69e8d-1140-44b5-baf8-bacb8c30c01a@kernel.org>
 <CAMuHMdXASe0VkAwaKedwA_4R3y9ob+n61JBVYODOEves62K_Fw@mail.gmail.com>
 <7d0497bd-3946-47e0-aba9-143e16ba2631@kernel.org> <202609231704.266C331@keescook>
In-Reply-To: <202609231704.266C331@keescook>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 24 Sep 2026 08:58:18 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW_wx4WND=di+eBmN0nPB0nnvHVOwteg1w7Qkxz=C8WmA@mail.gmail.com>
X-Gm-Features: AclHuK8tXqaMKPuAhaqhieCntJStySKV-kjaj8sQb60Som_2iWg0zcCafsFO45k
Message-ID: <CAMuHMdW_wx4WND=di+eBmN0nPB0nnvHVOwteg1w7Qkxz=C8WmA@mail.gmail.com>
Subject: Re: 2026 LF Technical Advisory Board election - call for candidates
To: Kees Cook <kees@kernel.org>
Cc: "David Hildenbrand (Arm)" <david@kernel.org>, tab-elections@lists.linux.dev, 
	tech-board-discuss@lists.linux.dev, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, ksummit@lists.linux.dev, 
	Dave Hansen <dave.hansen@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"

Hi Kees,

On Thu, 24 Sept 2026 at 02:05, Kees Cook <kees@kernel.org> wrote:
> On Fri, Sep 18, 2026 at 10:55:02AM +0200, David Hildenbrand (Arm) wrote:
> > >> The public minutes from TAB meetings can be found in this repository:
> > >>
> > >>     https://git.kernel.org/pub/scm/docs/tab/tab.git/
> > >
> > > No minutes since last election?
> >
> > Ugh, apparently Sasha uploaded the public notes since 2020, and nobody realized
> > that this task would have to be taken over once his term ended ...
> >
> > Thanks for raising that!
> >
> > @Dave: we need someone to upload the public notes. I'm knee deep in preparing
> > the eligible voters and don't have any capacity for that right now.
>
> I'll take this; should have it updated shortly...

Thanks, they have materialized.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
