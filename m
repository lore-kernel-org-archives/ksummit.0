Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0943009F2
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 00:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784679802; cv=none; b=kOTy4wu82nztt9H7RymM6cOGJOBFpizE8uBf6eaIR0HQMLXPOuhmFdDuRa0Rc74U5eRafhR7P/JLZNTCi9HjoegvXCcPwk+Y6LW/q/hvhaQIgO3/7SzIuDCbvw05ZcNNKxnzD8Bgm8+avJcSQ/rQQLGyEc779hLzwUfpzLMc0DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784679802; c=relaxed/simple;
	bh=LVxyk2W6puRFzz8/s1LBVS3AvFVi0uXV3QGdyVzSsQY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZU7lord4gkDzlrbTeKvGnEIoG73kG8T0coNhAWxKiUV6OeuWLTxI8Zn+AAMDPuc3E3PQRQI0vy4cl7xcIXkqMTFhh2hLro7DaIPhChoRZrYzvXHSfrf4L43hHVbqnzalxgeSFFYEcJfL6QIq0RhdVJnPRwJWeL43KtoL4FdHB6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sdz+yWgr; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sdz+yWgr"
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2cad8076b01so142551165ad.2
        for <ksummit@lists.linux.dev>; Tue, 21 Jul 2026 17:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784679799; x=1785284599; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IZqU7upKX5pYeaT2lKbh4AJn8ryNNgP0rkK3249itBc=;
        b=Sdz+yWgrSAqYGutHcLAx9p47FiQlwEmrj7cd7U9S0iMSssNjZcuQDeH1x8p0NP3vsw
         CkGHYHL9XV4pddDnK1rHGGF69ZLHzPrMjRZi2BOS9khDyuTOSKJtmUVSA11mxpi/1F9e
         LI3tMJp1udbU5uOh9RVaqAdh4bwxbs4WpOLzeQOTYwveO006IzOu5gX/mcTDsOtIONcw
         guL1pyYxIFetC1dd0kGnEJGzETe88C5SFfLxXSMX7M0DieKZwaEjZr+RNSU/7OP2HZPf
         IUE1yFS5REV/Wx2A31wPi99KjKCK6PSsHtaHrrK5rgq89RWPkaqB0/mvTHBYbrl3K0nN
         Jbbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784679799; x=1785284599;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=IZqU7upKX5pYeaT2lKbh4AJn8ryNNgP0rkK3249itBc=;
        b=Ldd/K8U00/8ItisAAqJm1rD4Be15++RkHJH6wKAo3DKAnroihB4qF9OG2hgzqMwCab
         WImVCK98vtGpFgBOYf2oZlGyroX60Nv2nitZYwbajomwihVCtvvAsHmAGDKGEBMUvleG
         XUIAtXPAxtsuJyETbt57eLJwO4HXt/hBn0+3mHpdxeM+TBWCviXj00HWXeRlWCNT8Xgk
         G1+s0mm69QMLcXLX3WJbgyXjYUGjouY9PMXoD0TvkG80jz9llQ5eHAPggLQnX2tOg6r9
         Aod/t1vIKgHNJ7dpr2JgbwJNhvppnGUt3EKmQDfI+ZodfkProjR0xjJ7VboHOhknra0j
         e55A==
X-Forwarded-Encrypted: i=1; AHgh+Ro7n1LHXwS7xL1FBNuVq06d7O5JO6bXmxK2Hlf+xpON9G4TfYlxYwt/7lXpSj/eGVBBY+BUQd1j@lists.linux.dev
X-Gm-Message-State: AOJu0Yzmdo5FX3DPQV4QIjuEYaC9IqaDr7SMJ3ujqj3gsLw8CMzqHFw1
	JY4JN8fJH3UGhA6qeB0ZJJxdgo8WuZi1VNPG4ds38SnLN4T2uOUpkyLv
X-Gm-Gg: AR+sD13r8HPmcHyXwpionvignFiSP9gTVNN697mwS4u7xpPYAcp7KtbhXp/m73JU3dY
	CqrT8XRD6UqTTa7VUosarrAE3BfLJMD5EHtgEQxvjVfBMeToch70ZuOl3wDSBESFHbOtsjwwm5+
	3GRXxZRii7EsVt93f5XnqQyyTSIl0ZuTzgsLHwxcR2Ema8xuoZyKFN2yAB03NBQ+JdSunR8doOx
	jQ95Tul7763Cbh1tKw/8urGzeT9SsIw6itQuvkW4hlCMtx+vEANmhH3i4NWP4XHuo7xizxJ5HlW
	+svoUavKpiFPIgdJLlDDNeG2doEsJJrTZRL1Div+WoJ52llLfSa6/j72E2ZsLopwn1Sj0B/IXPH
	f009lRplW4kHKB1JtbVC3h4Wv04JFK5+np2Jtx2KAi/i0T6G9fEw1Xt6J4HZE2441ofyYc705Uj
	vLhJQ87XrzQgVW/vbaDlTI9ND88M2/PKE3lUCUMLCHmIuAo3IoE04=
X-Received: by 2002:a17:902:ccc8:b0:2c7:f2c6:89e0 with SMTP id d9443c01a7336-2cf34821f9fmr225290345ad.4.1784679799338;
        Tue, 21 Jul 2026 17:23:19 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3147e088d3fsm2657921eec.25.2026.07.21.17.23.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 17:23:18 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <79ffef03-1218-4972-8f4d-961d293a8082@roeck-us.net>
Date: Tue, 21 Jul 2026 17:23:17 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sasha Levin <sashal@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 ksummit@lists.linux.dev
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk> <alkFzdJobnnMjJ4v@laps>
 <20260716203810.GF1735001@killaraus.ideasonboard.com> <alo3tBAc_tBNgtg0@laps>
 <20260721231540.GJ536385@killaraus.ideasonboard.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260721231540.GJ536385@killaraus.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/21/26 16:15, Laurent Pinchart wrote:
...

> My concerns is largely about using generative AI to automate daily
> tasks. Increase such usage will cause a dependence, and the withdrawal
> will hurt the more usage grows.
> 

FWIW, I think that happens all over the place, with pretty much everything,
and for the most part people are not actively aware how much they depend
on it.

Just take electricity as example.

Guenter

