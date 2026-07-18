Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B0F33F59B
	for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 14:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784384046; cv=none; b=TXh6+xmW7PXQW6ZhODHx5VodSOSOKoDw7N+TjSbfs5k0kluO1iWmtxohk1MBvIvtXSgjgHI8QNvItXJtcfZ2tujEbysFyfImOWcXXdMIWbKyBqlewZc1AqEK54n6ctT9iB5PItmzASuExRffJvymr/2I7r9v4M6kCaPouY+eWyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784384046; c=relaxed/simple;
	bh=0N61sJ9tE71BIZkj2uRvR1nHp2G7v3ofdFFgFARMFdw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DFRTCxVmakTLdHPm4wQSuVqdazgdPfbT9yOIW+/D9K4iQrJ2EtoHIwVkRcwCXOTRYGTM8RO/7QGbp70DRc4aY62LlwCdu2c1rbHKn6VTGi+cIUSZc1sbhcJeQp+eaw4Q7C5kF8hJIgPyphJncGrd2fvEBVnIpGGygH5g81krcCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kO+tEGoH; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kO+tEGoH"
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-38dd55ad76cso1923939a91.1
        for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 07:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784384044; x=1784988844; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5UUZqzHirjY+cOaw1QzPmr8wyQRrl0V7JvudVt2SiKk=;
        b=kO+tEGoHFLzgvi5/ZnFXbLDNmK+gQ9t+KiGUbsy7QYbSgDIEZ5p+WWWpfthgVrukUc
         29Sb9b4+n/FQARQdy4WSfv4AbkTnkclLZGX+gL6kgvBCPw+boLLsGgfS0ZdgERhp3SYA
         89QCakPmHYjRK1PDpPsjOwdeXkGn/nEEq8WYMm6yJsnOrqr58pxD+QJVBtgYo1C8xQaX
         tTSfQ2AAJidxAPu0Z7yxwFuay6WfbEzGEX0Xqrxq3thbgBp+unWhJbBHgiG7ftkd8x8J
         H6BKAIxogR7NowXyH0sXO5u6Duw4+JYmCv4k7e8tgjfAmYznn3SudFkK41ucVj6axqUC
         C0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784384044; x=1784988844;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=5UUZqzHirjY+cOaw1QzPmr8wyQRrl0V7JvudVt2SiKk=;
        b=BLM+1T+hwzkTi2S4aSKIKqIZa8L+o6RuJp1TDCxC5w6jAKJlmqIaGpdpbT2Y8+F1Rc
         JNczqWl42TEMNqoYB6HYinn0snZNDC1U5yzLlY12K/PSj59w4UywGD5MK6jEqRXOyV3k
         JCictUH1vUWao7GVeFbznFevHy56mIYpeLzPftYZj5d6XNvUDS/Mc7FEGjiH6zjaMTOM
         akkm3hmtTZUsTYe9/nnyxVnavxTnv2/xWciSfwsDsKlRGnPOHpIwg8+eifrUTUrjBZy8
         ZnzfM/5VtzboTfVwlgW8h/AiTjUiC1Ta/7KpD3QX+pnI2eCPTgaeiUqn9GjOpG1l8fps
         ngCQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro7Lp1R9Q3SQFdkAeySgXgU+ut9TrjVKsAq2cwIbN/bMhS27h5sA51zsu02VfAqSIpOqAdNiskC@lists.linux.dev
X-Gm-Message-State: AOJu0YwJlBIloCAb1lUvJu/gR7sePI9mOHRqbJ++AxOoxYcmebGW8fu0
	lnlwawCJwY6/YLkdQZXesQ/ZJtX9Oq0cjCtgV/2YCH1uhUkPeORZa/3DG0M6Zg==
X-Gm-Gg: AfdE7cnzLdMeBG6n2MeNZpfhYx1Xzfzch0b8Jh6PWGo0KOdraGSflDs8FPxlhtuiK7g
	wvO4/XMVqmCXX8AsMjEOe6PpfMwfVSUIyGRIyZDb5/D/8kYcvX7BplCTEsDK2DCQhPtpYjWCtuQ
	Zf+PGfPZMAwkViNEWhTWkvqpXJ5XTkUNIfUUPQBq6dEX4zGtDVBT+pEHFwjfbw7CwicbvQD/DeY
	Jm/6hYxtzu2dWVvee3I8HjtvVfL7+crVtVInhnSjfcXLG1q17tRspkhNN59d4kk/bkU1lI0WWZZ
	qCdxPscr2TnNHJXJKADqyJA5UFjCmzJJCl53VSfUnk5OhsK288vD7SxPLtrfTg5bbOKjzHCghKD
	ZiSJyyETFRypvfH8pFYB62VfsEiGpXvS4dDdlFvAFuzwU/iOBykG/UR4xx+0mR9iE+cDTUorEth
	PY4fdsvCo+288znn1UsWBW1L9IujjrWHv6pvK57CX8kDjBWYAvfgFLRVHHe/E5eQ==
X-Received: by 2002:a17:90b:5291:b0:385:39ac:fe4b with SMTP id 98e67ed59e1d1-38e3d26bc3dmr12805192a91.17.1784384043992;
        Sat, 18 Jul 2026 07:14:03 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31429f9d439sm22204452eec.5.2026.07.18.07.14.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jul 2026 07:14:03 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <efdce5c5-13a1-4dec-9823-bb2a37084538@roeck-us.net>
Date: Sat, 18 Jul 2026 07:14:02 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Roman Gushchin <roman.gushchin@linux.dev>,
 Jason Gunthorpe <jgg@nvidia.com>, ksummit@lists.linux.dev
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
 <20260715185757.GA191552@nvidia.com> <7ia4pl0oymo0.fsf@castle.c.googlers.com>
 <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
 <20260718010949.GG1889304@killaraus.ideasonboard.com>
 <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/17/26 18:17, Linus Torvalds wrote:
> On Fri, 17 Jul 2026 at 18:09, Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
>>
>>> And then Y doesn't get done, and maybe X doesn't get done _either_,
>>> just because of some unrelated issue was pointed out as part of the
>>> discussion.
>>
>> It has caused and still causes friction, but I wouldn't dismiss it
>> entirely. I have seen multiple maintainers, including myself, ask for
>> yak shaving in ways that worked reasonably well. The key was to judge
>> how much yak shaving is reasonable (and the answer is invariably less
>> than a maintainer would wish for), and not making it mandatory.
> 
> I agree that it sometimes works, and can even work well - a maintainer
> suggestion of "if you did this, that will clean things up" can even be
> a welcome thing - particularly when it is relevant to the original
> series and not just an incidental tangential thing.
> 
> But we've also had maintainers that tried to get unrelated work done
> by making it a requirement for the subsystem, and pushed it way too
> hard, and it only resulted in problems.
> 
> So it *can* work, but as you say, it requires social skills and the
> ability to judge whether it's appropriate.
> 
> And I think that when there is AI review, people are less likely to
> see it as a positive thing when the AI then points out pre-existing
> problems.
> 

I agree, and I have seen that pattern.

I do not expect patch authors to fix pre-existing issues in my
scope of responsibility, though I appreciate it if they do it.
I actually asked Roman if it would be possible to add a per-subsystem
prompt to Sashiko's reply. That would let me inform authors that
I do not mandate fixing such issues.

Maybe that could be extended to a per-subsystem flag such as "report
pre-existing issues in your reply" to let maintainers decide
if they want Sashiko's reply to include them or not. For my part,
I rather have them included and deal with the possibly negative
reaction than not reporting them in the first place, for several
reasons:

- Most patch authors do care about the status of the driver(s) they are
   working on, and are absolutely interested in fixing pre-existing
   issues.

- As a maintainer, I _absolutely_ want to know about pre-existing
   issues, even if they are not (or not immediately) getting fixed.
   In my scope of responsibility, almost all of them are real,
   embarrassing as it may be. If I don't know about them they are never
   going to get fixed.

- Recently it happens a lot that I get patches fixing some minor
   issue in a 20+ years old driver (such as replacing strncpy()).
   That often results in Sashiko reporting several _real_ problems
   in the affected drivers. I can (and do) use that reply to ask
   patch authors to fix real problems instead of or in addition to
   cosmetic ones.

Guenter

