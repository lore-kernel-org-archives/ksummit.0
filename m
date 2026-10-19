Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.210.47
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792432413;
	b=jZ6S9mKqmEIO6d2K+XwVxTNBxnyZcW6gd4yEjLvO4nWnHYhcxQDQx7SSXTSEEG/iT5vx
	 odmxM9kbRl6fAI8UlFYd/hfjL4zLH/fUmj+8RiP0nW3GkjJnXer4MobYQ2/GgNmn4KZCE
	 EK1BYaz9/y8d1t4e3f/iqSYyxZYLSpDbExb9mV7c/RLUkxChz7Ew9jSj48KFgROqoj2zQ
	 Bw4TyDEGGHuA/HG3uxT77naQujC3vW0LWDNb/PKbV6B8GqY1G3iCt9K2BeHLbBiwj3pp3
	 3wH+AaLAMxd4GiVYVwIlbDF2+WXRZfHr+u6gsNOaw1eHMwN7SnPu5NXGPFtY99E66sA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792432413;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=U026smUJcD1WeuJ4KQ86+20/5ae5gjgHhLL6yY5chg8=;
	b=z7C28TLKxa4K7XQXyr/6xx9V+b5Ai+69f2+wk1sSnEwfikeGdXol4WIz6BzvNH8aYWTg
	 vsMDlECmw8FqD3xg2acL3gqjXwD18CI9y7+QLmutDCio0EvizZd0AaQi89Fut8mBjmO0B
	 9eptRG0PtPtwhfWfmsSG9T6X5lGYTpCk8+xKHFLMintjGcVfilgnXdzlnE12dCQHygzIu
	 n8J13Mx5CgOzLYdThX1qrw6VS1pKpBEb6b2znpAmEiqDbRk8IAzSfMoAdooAczlIduA8k
	 ZqwEotgngJG0cAQVBz1rYI8z7x0j95eu4blJFoG87NYRqIN0d4Z6lgZX3oXXkXvJjAg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linuxfoundation.org;
	spf=pass smtp.mailfrom=linuxfoundation.org;
	dkim=pass header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=google header.b=ILlfmHQT;
	arc=none smtp.remote-ip=209.85.210.47
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A62E606A319
	for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 17:53:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 2A62E606A319
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=google header.b=ILlfmHQT
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7f432ac553fso1676506a34.3
        for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 10:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1792432411; x=1793037211; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=U026smUJcD1WeuJ4KQ86+20/5ae5gjgHhLL6yY5chg8=;
        b=ILlfmHQT9hoLXHWrDkitMAJu0ZxPs/pgT+WASEi443FUQHZK6CRhxB6OTBPWUuZ/xX
         P3QDell5DOc9jyNkaw+0BuA0rMzqATdPZyh6T3riU5fRxywx2NLr5BpQLEGcUmWIJ2fH
         0o51yW4nyZxesCWPukaZZYv7MRnrFmt70pIhI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792432411; x=1793037211;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=U026smUJcD1WeuJ4KQ86+20/5ae5gjgHhLL6yY5chg8=;
        b=xrvAr6RDXJHdyYh4WwcR31KkZZue5UhQMd31Wjio2Ux/UTgzeiKcvX/hGo+ATqC7Du
         m9ThjMl1s12ejJfo07sfQVVWIw1rYXGb/ZYFw48eioXynVrmx9uf59o2DC+H3CkuxWf1
         qbRAAO2Xwpm5qnASwRG3eHzH+LjDKjfDIR51/zg1vm5K/W9x6/4W/OzsXnqpNCyFs1S3
         BW55b5M9rrRi4Wdjq7LYHqcb44P617/MjIhRNQDMfHDlmfk65gSRRZzcmHzKtW5waix2
         wWhX84ZwM5hnD6X0AsEhGQGNq304ZUyVb9cn66cr5pi2EUKAk0QKY6sfrJS3R0R23pRP
         VZhg==
X-Forwarded-Encrypted: i=1; AKwUvByWs78QZkEv695JUZnbZU89ixTJQcEH+hLKSphV+bZ74vFuEISeWR360WxvwmrggMj4pNSm330t@lists.linux.dev
X-Gm-Message-State: AFq9FYImv7sHV+si3AnuAFWPO91+rM68TtLz2MIAY4zpx/cya38sODfK
	BGlygpcIKvJMipoDn1XOYR/VMcpdwW7YYUFDy+MDLyQeHmJGFwpK4fLLI6K61jiS84E=
X-Gm-Gg: AYBFou33UTQuppPNJ6wEC6OJ0XuB8U8ogL1daTFLhdrv2J3P+mE4XRaKPZp+tyF/IkH
	yprECDX3FQx6ovuSfWdF+db/NmdErNTUeL/PBq0/yifrGIVN5KnXwXSI4I5TIMbBWdpigkQqFRM
	m5/M+uphdjjQ6BeMfvSoscaGIlTsvA/+KD006za74ftmGr0KL511sG3UCkD8GJyEbFYZQhzZvo3
	QKPJP/7E1ahA7J02b92vk4bLC4eosU3hgHlHDx9Pbl79imFYuYhIIdfnzktByOcLhmWE3F2tF+I
	s0aDyVD8IagX3XP4GGzjMULpUsnDMKPwSlPHSHXNorvVmuSVIQAxPkYq9ezYL72nV2Woytwyp+R
	LKv+ZrTorXy9R6cJ+z3FyJeFLFfENLMXKxspfM0wTjHkxEn/UlqCbx0z8l6QTCm5h0Urmh3/9Rt
	TrSfqclabiWFfZXF0pSjmEoBWaFrdrluVxzAqmek2Ev9rqtsBQ7l822oQ54yQRzalIOWsaW4lGd
	c4WE3K1
X-Received: by 2002:a05:6808:1488:b0:4cb:f21b:6f8e with SMTP id 5614622812f47-53ccfcb392dmr6817620b6e.33.1792432410802;
        Mon, 19 Oct 2026 10:53:30 -0700 (PDT)
Received: from [192.168.1.128] ([38.15.57.99])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-54b5b40a06fsm879544b6e.10.2026.10.19.10.53.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 10:53:29 -0700 (PDT)
Message-ID: <a6670d97-bf2f-4027-95a8-c091144725c1@linuxfoundation.org>
Date: Mon, 19 Oct 2026 11:53:27 -0600
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Patch pre-submission to Sashiko
To: Krzysztof Kozlowski <krzk@kernel.org>, Jiri Kosina <jikos@kernel.org>,
 ksummit@lists.linux.dev
Cc: sashiko@lists.linux.dev, Shuah Khan <skhan@linuxfoundation.org>
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
 <350c7564-a833-4dd4-abf3-b8488280b0fa@kernel.org>
Content-Language: en-US
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <350c7564-a833-4dd4-abf3-b8488280b0fa@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/19/26 00:25, Krzysztof Kozlowski wrote:
> On 17/10/2026 19:28, Jiri Kosina wrote:
>>
>> [ in the spirit of the concluding discussion at this year's maintainers
>>    summit,  I'm using this list outside of actual maintainer summit
>>    planning :) ]
>>
>> I have just received a v1 to v11 patchset submission within roughly one
>> day timeframe.
>>
>> Neither myself nor anyone else did comment with any review feedback,
>> except for Sashiko. Which I believe is what triggered all the immediate
>> resubmissions.
>>
>> I don't think this is sustanable.
> 
> I think it might be fine to drop usual expectation of one patchset per
> 24h as long as maintainers can completely ignore patchsets with Sashiko
> replies.
> 
> If people want to keep bouncing the ball between them and Sashiko, they
> should be allowed and then we should be allowed just to silence that
> email thread completely.
> 
>>
>> The idea of throttling Sashiko's responses was gently nibbled at the
>> summit, and might be one of the options how to deal with this.
>>
>> Another option I'd like to propose would be to introduce a way for
>> submitters to run patches through back-and-forth with Sashiko even before
>> properly submitting the Sashiko-polished v1 to maintainers and
>> mailinglists.
> 
> I assume you mean they will be running it through Sashiko
> infrastructure, so using sponsored tokens. Otherwise that possibility is
> already there - you can run Sashiko, just a matter of money.

When a submitter uses LLMs to generate a patch, it is reasonable for
maintainers and reviewers to ask them to use shashiko to find problems
before sending it to us. Asking for a shashkiko run before submitting
patches could become part of the patch submitting process.

How about updating the submitting patches document to add a section on
this with instructions on how to run it?

This shifts the responsibility to run shashiko to people using LLMs.

thanks,
-- Shuah

