Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F3727473
	for <ksummit@lists.linux.dev>; Mon, 24 Aug 2026 10:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787566033; cv=none; b=o6SXmG6VwCwqav/o8j/f2KgBhCcjR90mxdyWeGdnX8uA+xeIgUQyFyITGCbqzfqzfPyNzhr3wgg+y5dlVO2+fwfiSVg7mqggsk3NJ6TMwXnKyNmx4zp/pIk2asHGyYcz+TEiExvMD0EtBUfopJ3T83dbyIDjtEyHoC6KYIO0Uzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787566033; c=relaxed/simple;
	bh=FeKhEJOLtsR0OSp5zSfjeZb70L45wBtbjze91lWid94=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MY3P/QnEZJzmCgOZBCn3v4fCHwpRBomxjCr/LeS8xBH8OATKrRccJ+ac8sPD/J+F9de+W4v4bKp1q332q48feKMHr/s84nIThRtpIze4UwOQOVMbzuD2fkh/DsWzQXd5jgYvNHZmXbZV1v4DJbPWVOitqAzpVQ9HLNRDm8LK1gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=fne+5g+h; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="fne+5g+h"
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-47f5d5dbf80so197079f8f.2
        for <ksummit@lists.linux.dev>; Mon, 24 Aug 2026 03:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1787566030; x=1788170830; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iEFHmYMkDTSXJZFNXwL1AX76LI3IFY5Vpud0ERmcRDE=;
        b=fne+5g+hidNQGdf+TdoN0Oe7Z45ILcmZvbGMARG8JMKHbpbxeZaLHl+bz/D8k/p57d
         628fx0xKaTFdOnbIjVkLizYdv+d/esLaF11rj0JvO8uhvKR4r0S0E4bxGhfhLNDfmca5
         DR1oR5/y++vJIbVN44bvxzgqUavvDSNoxoevvCKPaK7Fa2mz0gWUy6KnNScNwYPgWy+K
         W0hz/vA4iph8u6Uqbms6A8HfmkAwJsb5GpjCuh8LQbW8TsF+cdsmiJ/+SnHOirEIJOBJ
         3dhYFcoGMfRV4P/hbmJd08NLVxvJGi/RiF11dlyAWElJ2zOFCPhf7Q47L/wIMB+e9jFA
         WS4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787566030; x=1788170830;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iEFHmYMkDTSXJZFNXwL1AX76LI3IFY5Vpud0ERmcRDE=;
        b=TtKbuLsHEkHf5uIA2wrwHM+tvFnTiVxRuxq7dZUA+77G1phZi1P4a/SQCc3gKR7PfY
         JLIaZPNJqS2s0K8sfUmIUAJnFKMJCCWQnbcMKQaxSq7u2M489j267bH44xU7fTiUWve2
         mMaootJJMTnqsY1FvYo3pbMaJqGsbq4SvmC/hkZ1neepbDh+qqyNO39uYobiuVKpVOVX
         la0UdCDsc5xqhcf4oiGQMhYQhwYd4kgnmbJ3TY+rWm0jS6ofPI9XKIXUbTkAon73xinx
         4r0JVmLs2fTXIAlNEiCwXIRDidioIzwfFeAr5y3GWj4sJeRo7q/HLenDpYjUQVA7jTNF
         GKsA==
X-Forwarded-Encrypted: i=1; AHgh+RpjsN1TzQvDjDAmjkQAO1O42BPWiw2AYiQmSw3X330c1HpnHFwuknCCEglU8cyvF7d+Zjwd01p+@lists.linux.dev
X-Gm-Message-State: AFuF++kWmsXNpCuR+OV+j21+sJHTVrmygoJDVijCHqF/FlOppb66oOa2
	BhY+qlxrnObtEieDmhsX+A9yGjMaPfNvNPU515OmuFrSxMdn0Tv5W8gQ/UEnxq1m06E=
X-Gm-Gg: AR+sD12Y5lPjsQW4j+TlppSWIWTjeueMuHmBpH69jgmp0Il9zGM+Qumhxt8e+WOFJ4h
	41KPFeyc7Ja9rihhjPtqKK0N2W0NgydHozXA10UX1umAYC3d726r5oMPruqtDYZONzXU++givkA
	a8kzHYVHsDidVoAFP/yv+7iFoY1gCEVDZC0pzmC5Leje2qkH6Ea94eClw/2uowGnxif5kolZoFk
	6atj6aWJLOTNc/Q1DScDMduTFilFOvXYE8xGGFH1HbME3fpnlP96pznCJvxfpXxho2dDbCxrxVb
	7UkLV/wbR2b06GXCQVNVRQlFd9pCCfxowua2MWAUOMD+K5nyg1O20ONRuIlY72nHn4E1FWEaa6V
	lx+/eILNeI/kERWwylu6dCg8L4Lw3EBkv54nELPi5PzEVJyDV0mrAOut/0f+F7hMIeYj+pUyyaH
	cxiZILQZ5PCKX5gV0pOwdi/KUVLvrBT3JWS8mlJgZk2RnSbb1kqd0G2g==
X-Received: by 2002:a05:6000:1448:b0:47f:9283:1f9a with SMTP id ffacd0b85a97d-482c0b92fb6mr15111694f8f.2.1787566029963;
        Mon, 24 Aug 2026 03:07:09 -0700 (PDT)
Received: from ?IPV6:2001:1a48:8:903::e14? ([2001:1a48:8:903::e14])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482c9b69a60sm7789214f8f.1.2026.08.24.03.07.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2026 03:07:09 -0700 (PDT)
Message-ID: <b1adf43b-f37c-4c8b-8370-d5f8f179678a@suse.com>
Date: Mon, 24 Aug 2026 12:07:08 +0200
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] Any feedback for -next?
Content-Language: en-US
To: Mark Brown <broonie@debian.org>, Geert Uytterhoeven <geert@linux-m68k.org>
Cc: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 ksummit@lists.linux.dev, Thierry Reding <thierry.reding@kernel.org>,
 Breno Leitao <leitao@debian.org>, linux-next@vger.kernel.org
References: <1025da50-3e21-43c7-a761-4f65ed5e5069@sirena.org.uk>
 <anxTFWS4KAMqGNGT@monoceros>
 <1a34c486-2fb5-41e3-991f-23bf82468412@sirena.org.uk>
 <CAMuHMdVEejuG-Dyr4DXgg3MhtDY6n5cDYPotRiGXeSGv0AcA+g@mail.gmail.com>
 <a0e4b0ac-41d1-40bb-b704-67ba71e8ce43@sirena.org.uk>
From: Vlastimil Babka <vbabka@suse.com>
Autocrypt: addr=vbabka@suse.com; keydata=
 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
 pYekxJujNeEDkUlky0Y=
In-Reply-To: <a0e4b0ac-41d1-40bb-b704-67ba71e8ce43@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/13/26 14:36, Mark Brown wrote:
> On Thu, Aug 13, 2026 at 09:31:58AM +0200, Geert Uytterhoeven wrote:
>> On Wed, 12 Aug 2026 at 18:44, Mark Brown <broonie@debian.org> wrote:
> 
>> > > The advantage is that if commit B breaks something there are less
>> > > intermediate trees that don't contain B and you can still test on e.g.
>> > > D+E.
> 
>> Sounds like a nice idea to me!
>> And you can put the trees that usually cause the most conflicts in
>> the same subgroup ;-)
> 
>> It may also help in bisecting an issue.  I have the impression "git
>> bisect" on linux-next (against Linus' tree, not against yesterday's
>> next) shows me more "a merge base must be tested" test points than
>> expected/optimal.
> 
> IME it tends to walk down the linear history of -next until it find
> which branch introduced the regression.  I've never investigated in
> detail but my feeling is that the inefficiency is more driven by the
> size of the branch it lands on.

When bisecting -next, I actually use the "git bisect --first-parent" mode
first explicitly to find the culprit branch (or precisely, its merge), then
do a second bisect only within it. It avoids wild changes of the tree
between bisection steps due to the differing bases.

The suggested binary tree merging approach would make this strategy somewhat
more difficult.

>> > There's also the issue of incremental build benefits.
> 
>> That should be more or less the same as before. After all you're
>> building the same number of times, it's just the changes that are
>> reshuffled. And you do use ccache, I hope?
> 
> No ccache, it was enabled in the past but it got turned off by Stephen,
> I suspect the reuse over what you get from just doing incremental builds
> is questionable.  We did have mediocre experiences with it on KernelCI
> too.
> 
> The thing isn't just the number of builds, it's how often those builds
> change headers that trigger full rebuilds, and we're only sampling the
> builds rather than actually doing every single one so that the merge
> completes in a viable amount of time.  That might miss stuff, but due to
> the way trees are ordered it will likely be only things that will get
> resolved before they go anywhere near Linus anyway.

