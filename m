Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F5B34A79D
	for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 17:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784827632; cv=none; b=mOYYiXcItvGwZrvFp/bA2URJbHRpaFUcPbqbqxWqfuObz+6AXGg1ORqLItlEkc2xj1H+ok39yvcAjKwkpYlqEkt3VkkMsgKEJmb4KaWnveRt43t826RDMiJVlkPE3rQuLiJXVvWtEGtawSk64Q6UGajcO1K4vYXAIubUjhCcLeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784827632; c=relaxed/simple;
	bh=s0C61Qic+7ZpNhyrDAjCxNAWIVN1iIT3D2ZkCIjYdc8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hO8/zdqesYaDUi0OBkOOdXeUEOHpgHX1VpR0mkx+v7X9DfW6/GTeiR/QCiSwhFnWA0rEnNm4LyaQakfmuUnlLFUz0DPYIS7ZNnZag1nOWwlOzsGZjpOqDiKEHmN78Fnfbj/LGz+rgBDs3W4yBl6MfOwT31zOClOhW946iTwkHc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b/z37JeM; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b/z37JeM"
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-c9eefcf9175so862972a12.3
        for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 10:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784827630; x=1785432430; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aaO6v6IeZ8SMgQujqpPHHXsBlbvOI7sU+7+u+dpR0do=;
        b=b/z37JeMNWyIIjzwyR4P2D3am0x14Kej8tVWaHbA+s8RhvXuJ4or6om9/wZUdeLibC
         9OmniBOOb6wXyI41u760OhhFoMbNhb4g/Q1ftYAVN3gpCCoIs17y44+kJLN0Ty9x6xcj
         Bh2Kv6ZZnSAK+2HpUSy3AhTCDfQiQnXVg4s0rZmkiOsJ+duFzrqNuXLhdzN+TTWOUSYD
         74YqFIBF1O7CDDw2K37ODqOACulxYooJ7WrhhPkF1GeTyuNopFs8c4gkVursD1nrudBu
         2zm/+5Zk87rQvGC9ggxlQD13o8ziIkOX0P2AeINDkMElJ9qG+n/0KexLCD9uUuWtCp8I
         MdWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784827630; x=1785432430;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=aaO6v6IeZ8SMgQujqpPHHXsBlbvOI7sU+7+u+dpR0do=;
        b=orSvcGOZ+CsgnWi3q5yMG16KNIYcwNrpvIjC1e5OsHr9gen27u0/7XQpeHstC+SrFQ
         mPeWPdu7gI8OPHWXJ+XHBWyvLE4+Ngi/Fem1FHNoUuf3lVAfIsOYVtQQI3y9VYlcyA8P
         oEh33olrXoO+0pPf9Hc9OvNETma03gYjPxIA3mdZw9gj1cDIjtnJrhiYcTjE4Su1Jo3f
         4eDKjiGGzVT0YRr8NyMdwwIbN79uNVH+7DxzHswwgwwwsYxKR4Ltk0eKFFC5fcNDr7L2
         IPjLBLx2y2mMZh6XzdF4J91tX+LHEsqjOSbAds3ba5oPndzP/wPGmEKoqqM8hv4NrOGE
         7nkA==
X-Forwarded-Encrypted: i=1; AHgh+RrpKlROteciQloxFZNJ/9j1olQW3xY4h4vEChz1ukrusMaSrcr+9s1w15lZeAwSGQcluOoUlipy@lists.linux.dev
X-Gm-Message-State: AOJu0Yymd4x81BvqGnMxHXW1NuFtIHpnjlCcqqngORKLQvtsEYBrycUN
	6SWx1A1r1LYmfW55kl0OuOhkCZszKWhJFCGC/+nRfSNYdmS0Ijmk7vCp
X-Gm-Gg: AR+sD10gsch6t6+wCtfUS5AWtidqzvGr+wejSucDebP/w9K0yyYcDz9EVK10/hYQpAx
	UAg9dC36TFu91o3YDQGUpWdRp91PirikQ3Gk79H/s+XJDLEjkTVV0S1+oXGBvZAssL5lh7i/pq3
	FPkLwAPGJk+OrRc2ZGnKth6RmqcHaxERN+KO0lATAtfeSuUv/fFO1k3yo1fm8LPjmoVCltipyOr
	XA7Q/+2MughhnC2VRzca1k3afPxMaJ8XAx8dDEVlF37HK0Tx/eb3xdCES2OQyJu5g+p4GQ9qTmY
	bMO7KdDb6Y5OQ44WFUpT81uWTxuZ54MoIi4vRGGleeMUiq3Aym49krSPgm+gltrOALbDa9TN9Nh
	SXerNfzu8X/8E6Hwav0HS4EosDGHkvLd2hgcntYJ0tVuui9BtisKWnVu24xmdO79sKxW1s2+C/H
	PaB1hjlJnumENLR2cjPPXN8GFBFkHi/TjsVDWwe0npItsK5QFEb8w=
X-Received: by 2002:a05:6a21:6b16:b0:3c3:bbe6:95c7 with SMTP id adf61e73a8af0-3c44b00772bmr4501396637.17.1784827629532;
        Thu, 23 Jul 2026 10:27:09 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13d130a7738sm18142668c88.9.2026.07.23.10.27.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2026 10:27:08 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <41cffdd7-af79-444a-a086-7861437c96a1@roeck-us.net>
Date: Thu, 23 Jul 2026 10:27:07 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
To: Mark Brown <broonie@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Roman Gushchin <roman.gushchin@linux.dev>, Jason Gunthorpe <jgg@nvidia.com>,
 ksummit@lists.linux.dev
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
 <20260715185757.GA191552@nvidia.com> <7ia4pl0oymo0.fsf@castle.c.googlers.com>
 <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
 <20260718010949.GG1889304@killaraus.ideasonboard.com>
 <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
 <efdce5c5-13a1-4dec-9823-bb2a37084538@roeck-us.net>
 <20260723084954.42e6a6e4@foz.lan>
 <65fe52a8-d6e1-4c5d-ac74-6c731874db15@roeck-us.net>
 <4d27a17a-ddd9-49c0-8d6c-e044b28ffa0a@sirena.org.uk>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <4d27a17a-ddd9-49c0-8d6c-e044b28ffa0a@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/23/26 07:59, Mark Brown wrote:
> On Thu, Jul 23, 2026 at 07:34:58AM -0700, Guenter Roeck wrote:
> 
>> Last night I got a patch submission of a ~350 LOC driver. Sashiko reported
>> 9 issues with it. No, it is not ok for the author to ignore Sashiko's feedback,
>> and I am not even going to look at the code myself until the reported issues
>> are either fixed or the author explains why they don't apply.
> 
>> It is fine (I would say acceptable) to ignore _pre-existing_ issues reported
>> by Sashiko, but I do expect patch authors to address new issues, or to explain
>> why they are false positives or don't apply.
> 
>> If you want to give patch authors the option to ignore Sashiko's feedback
>> entirely, fine with me, but please do it on a per-subsystem basis.
> 
> OTOH I had a submitter send 15 versions of what should have been a
> relatively simple quirk over the weekend iterating with Sashiko, then
> the initial human review was "this seems like the wrong approach".  It
> feels like there's some happy medium here.

That is a different problem, though. Yes, I sometimes do get several
patch revisions in a single day. Sashiko tries to address that by
optionally delaying its response for a per-subsystem configurable period
of time, but that doesn't solve the real problem (which is that patch
authors sometimes send new revisions too quickly).

Either case, I think your example is rare enough that I'd rather deal
with the 15 revisions and not have to re-identify all the problems
that Sashiko _did_ find.

Guenter

