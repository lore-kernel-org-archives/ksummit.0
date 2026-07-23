Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBBA43C09F4
	for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 14:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784817306; cv=none; b=q2/7CqvKXagJDcCkMkap20ArDRT9yy2oVdMeYzeDYQ89k0XeWQGtT3I2zSFpggy8of80ig3Zc443ZqqZRb/pghNjQ8xAtQIhksloHY7cHkw30j4bI2XsXcEJTquMLWkWH71rXTrTHswtgnpMm1z8xz3Xp+bm5K44XmgL0RsTZIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784817306; c=relaxed/simple;
	bh=JqAu5WsIADgQHqs22E40g2S8/0SrQUWdCtAb+gKl/3w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kgXtDUMCvZq3tlavRNeQhTxKhX+KLFoVXoAt+qGFFO8K5DaOs3vWILSASa4qXLPRti6lwBMlZ8z7dLrWn5F9sHyFZV++IcrLIek4mWmF0FNK0gj4hCdLgjAfJfSL2ISp4PbYAffYsKcMeuItb4WBa6/pKuuqw9Fwfl3d/+lnmkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MXmSrlw7; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MXmSrlw7"
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-92e54f8c051so59304285a.3
        for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 07:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784817301; x=1785422101; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Mlxw4c04TWp87y8RO0/VT5rLNYDiOvGfpWzJbkzEleM=;
        b=MXmSrlw7zJssIoW1cmSypGiu+C6aydq3r/z+qDr7x6vLfYYo3KkPPYAF36+jdu+81A
         ZZTr/hDq/PYUmMrDlcS3gwZ5jK4+4ez3eRoMQmE5n6QtOjD24P5PnjbqEc9IgEOPs5+H
         61A0/RW61Fkj218497lp0v4V+DFe7tpOF7Ln+amagQWzws89md0/idV8f/kN/fub9ovh
         AnxbcaQZypzlddNDDXba1nBNe+TRUUmMsoIr5AswOT69JN65VigoOXX2UDJa7y1BS1r+
         Qr29ASbLF2s1rmMgh8rIW9V3mKPez0Mu6pS1w9bQTbQgpY6l0Q6WksJOQCXFUF38wSrx
         Wj+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784817301; x=1785422101;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Mlxw4c04TWp87y8RO0/VT5rLNYDiOvGfpWzJbkzEleM=;
        b=oWMmIC26aEkNLA1jY+P+Dppv7TVR8F+ZqjzgmX0AA+UBmoJnknlhuFDWN+yv2DSC0g
         OibjrXd+G89qmgDIfEFjSWaqKlEw0JeBalb7ckAZiS9u6F5BLhXmrS7UjMgXblLlxKjB
         ru+Yomsyx8YogRj8ZYCoQe5kGfT0qjk1lmwIqqTLRMVHm0ZQpl7e6nCA7cYwcMN+KxfO
         gVtwP0D7RmrKk94LVbtQWQIdubC2JJrq/+K1lOqigGCx1wc3JZtiDg/QVRwFCt56nS5H
         zEvTKfPpQvyZdgMzb+A0BAQIJgw2kpFCuY5Ehe+AeJ8J8A07eLBMWSlY8tX1x1M9AWuk
         S8Ww==
X-Forwarded-Encrypted: i=1; AHgh+RpBriK5wYdztMeJR9sIzeRp8Vevp0/neMhq5I8anwBS+KbcsdVrhkHG/ZtKPIWgPcbA+YUSNVLs@lists.linux.dev
X-Gm-Message-State: AOJu0YykCeJQbPDfUVEti5e+bkujxY2yetfCpQOymhB5OtFpHIYX5ULk
	c+2Is+Yl+TTaPTcM/U6P/rqXK6Abf4YCJdYSXECDfgCqxUvV2tsFcJVI
X-Gm-Gg: AR+sD11HzzSxk3sgweV/i81SIBjHslXjYeGLZZNj///YXrYuyiUV37Xjmj8Ksb6k4G1
	BLvR9wFVxPxaGtPX14P50UxmYgb//DhChYWQ4az+S0CcG6sqxJioJkMhxtlEnfaTPs8XCKd4l21
	JPQ06vgsE8x7aUPetVGzxm4MKINY3wqsr3ikGb+m4Tt1pvsilEec+Y9nqH99ql6oMBMdWs4ekP8
	0n9/dE463mGHZhYApEB+2gXY/hGoe7qJZ6FjWntFxbu14Oddkfbr5y1lt1/rHJLD74a6s7g8Vuk
	Bt2Pz947GfZzppCrN2iWvYFWh2P0ebt2vRkvFR+VUjNcdSGEBrXc5G4140GgFyWscrQHpnzbOOM
	qcr4lt9xhE8iF6mcaslti1v6TWGXU2ALZPUG+zjxS3pxk7ItvDIxyl+szWWHttM8bH4zSJuRNNa
	kSIbNFRwhTeSXTWeByTjQQ/99BuvzrryIRKcocbeMaDKXrIPNPdPg=
X-Received: by 2002:a05:620a:261f:b0:92e:45e0:2588 with SMTP id af79cd13be357-9310370b290mr342116085a.55.1784817301303;
        Thu, 23 Jul 2026 07:35:01 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-930f6a41a47sm423217885a.33.2026.07.23.07.34.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2026 07:35:00 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <65fe52a8-d6e1-4c5d-ac74-6c731874db15@roeck-us.net>
Date: Thu, 23 Jul 2026 07:34:58 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
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
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260723084954.42e6a6e4@foz.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/22/26 23:50, Mauro Carvalho Chehab wrote:
> On Sat, 18 Jul 2026 07:14:02 -0700
> Guenter Roeck <linux@roeck-us.net> wrote:
> 
>> On 7/17/26 18:17, Linus Torvalds wrote:
> ...
>>> And I think that when there is AI review, people are less likely to
>>> see it as a positive thing when the AI then points out pre-existing
>>> problems.
>>>    
>>
>> I agree, and I have seen that pattern.
>>
>> I do not expect patch authors to fix pre-existing issues in my
>> scope of responsibility, though I appreciate it if they do it.
>> I actually asked Roman if it would be possible to add a per-subsystem
>> prompt to Sashiko's reply. That would let me inform authors that
>> I do not mandate fixing such issues.
> 
> IMO, instead of using a prompt to add per-subsystem instructions
> is a token waste and it is prone to errors, as LLMs might fall
> adding it or and modifying it.
> 

I meant to say configuration, not prompt. Sorry for the confusion.
This would be outside LLM and deterministic.

> A much simpler approach would be to have something like this:
> 
> 	https://github.com/sashiko-dev/sashiko/pull/364
> 	(build-tested only)
> 

For hwmon and watchdog subsystems, no, it is not fine to ignore the
Sashiko review entirely, and this is not what I tried to suggest above.

Last night I got a patch submission of a ~350 LOC driver. Sashiko reported
9 issues with it. No, it is not ok for the author to ignore Sashiko's feedback,
and I am not even going to look at the code myself until the reported issues
are either fixed or the author explains why they don't apply.

It is fine (I would say acceptable) to ignore _pre-existing_ issues reported
by Sashiko, but I do expect patch authors to address new issues, or to explain
why they are false positives or don't apply.

If you want to give patch authors the option to ignore Sashiko's feedback
entirely, fine with me, but please do it on a per-subsystem basis.

Thanks,
Guenter

