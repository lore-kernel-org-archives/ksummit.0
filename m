Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88AC642E8D0
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 20:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786133580; cv=none; b=jyDXrOoIiXDS5jeMv1mTmpGzVmcHEKyQkZcsspj+S8e/n1eOjcJipC692qgvJh3DPXnO1pRqDeFSQnJAzo/Jn3h/c8jP6RWrPBqq7K8yDO0zdIe53Zs4Y90ZlhDGMM1AR5o31xu3EoGA+7cuUrhZ3XUNQIdvK49nzUJKQ5i7MWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786133580; c=relaxed/simple;
	bh=t0Uu9xASo1jXKla6pJld09oOD/BOJztU7oE2gg62g7o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aiW2VEkitlKyAUzbq6G8vv0vsi9JO+pQjmajSLzQtPpCA0fttJ3KLUktXUCyg088oz1zgQFKcDf61/PXhW4AkunqFJeM9ARH+XD+RAGbHk7FgsSzxnWFAgQ3Sr32JVKKefW0h3zdDRSpDtyWbNl5Hien5QHAD9guetJQMN3qa/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=h2LxiLc2; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="h2LxiLc2"
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7e6b554044fso3454988a34.0
        for <ksummit@lists.linux.dev>; Fri, 07 Aug 2026 13:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1786133575; x=1786738375; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ayf67aXYkhcNNt1wAx7MLVmME9+hNCUA+3iqeGqXs40=;
        b=h2LxiLc2Sm93hTvRv56W753iqLY8ifirnN53IR+PrSh+qT+bcuSpPoaVBKm34A7/vm
         2OQBInLM8iRKN2I3XT1O/PUUH3n61hNUPPI32SJrNCgaq0GsfQGAibPJdb97c8tIDtOW
         fjHAQqqWjYDE35tNtVqKrynpJHLJxqsgaerzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786133575; x=1786738375;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ayf67aXYkhcNNt1wAx7MLVmME9+hNCUA+3iqeGqXs40=;
        b=RIsUCVmFOANoYhMuxVkuU4UJ9AcYDu86awQMSiHe487WorIjbUvUaBkrQ2qF0eAj/t
         IcXeWnyF1aJddWv7M8UCjScVu9MGOYFTDSArQuvRbyWk28T4dne5MGhtvtvTHL6tNXX4
         YaG1PKQ9975oLFl2MHxfqFQhOTzeZZXTTdgBEzwVBOj3JKZQ7qX6dYxYrQnJAaG3pell
         9jcR6EPAvF007KSR72JJCvXqMP8HKmGKojhblTIQnCQ/u677L0DAntw8E/lckeUdC3V+
         18aB8f0n59gpf8WAnTrCCprRJoUlExuUTy2JUYLQZqZs0PU4zWsJCBM1dlPVQihsVaGI
         rcPw==
X-Forwarded-Encrypted: i=1; AHgh+Rr2sOjt7JA+r1+rXvRWcXJdUOyJWU2i5RsHAwSWITf2XDa0Lj8vWjHc1suCG5ZOfqKnqhf/1cZK@lists.linux.dev
X-Gm-Message-State: AOJu0Yy5m+onhC/zWf+PANL87hpfB/RPzmJeKh1hq7ANI/u8UhatzgLc
	mVVO2X0MNXUzC6vRr1opDeLlL/Ydzm44fAyhhaQ49g8faZp99+2p0APpp38DP9GngwY=
X-Gm-Gg: AR+sD13xgJAYZaiTOtbYmP6F1bJ1Tqcrr9MAtWQGt3SqAX7dsNi/LWFmXMm+UkPh9RG
	pKWFW23k2h3oZjQ5nYIv4OAAaUIjSmXfdKRXPljLil0Rd6rXCJICyTwAHhGfYhy45y8hY13kzT3
	7QeEnbj1FbuLAr1H0M9pUSb7jsUGE+vkpTYw5taap5J+m3W/lZA1GfMUbJdLI586QDr2l8HCPb2
	fMCceBj2FrFA/GJ9dfCAQ3Tgdb+r++XKU2CnVxYZWhdCS7Jrj7RodygdHADMZ6rduVWIdP5WJ6N
	s5hDRKhdNgWMEMXi3VtSX7c7QZylLTJPuBbZOGuZ8kSlGjxMBQUxxLMvtPNv40cpUZovrjdhWH4
	pwgT82IeYnEHS/mJrWKuoIZaeaNUjxGTgYIA056K/NKO8Newd+Vl3BnQAk+OPhNGHIK3GT8ZJn+
	6WhRBBKWuZOYhIUTy9absRFuj8kCVJ59alOMaG7s4CsFQA5I6A2MH1WUj27yIaiYQ4nwhVaQ==
X-Received: by 2002:a05:6830:3592:b0:7e9:e257:81cb with SMTP id 46e09a7af769-7f1e5d34abemr15095945a34.7.1786133575074;
        Fri, 07 Aug 2026 13:12:55 -0700 (PDT)
Received: from [192.168.1.128] ([38.15.57.99])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f35b76fe2fsm1892986a34.16.2026.08.07.13.12.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2026 13:12:54 -0700 (PDT)
Message-ID: <457e6344-aae2-473c-9bec-bcdbe8aeb606@linuxfoundation.org>
Date: Fri, 7 Aug 2026 14:12:53 -0600
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
To: Steven Rostedt <rostedt@goodmis.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
 ksummit@lists.linux.dev
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <20260807155120.7142e78b@gandalf.local.home>
Content-Language: en-US
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <20260807155120.7142e78b@gandalf.local.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/7/26 13:51, Steven Rostedt wrote:
> On Fri, 7 Aug 2026 10:27:27 -0700
> Linus Torvalds <torvalds@linux-foundation.org> wrote:
> 
>> The maintainer summit being a pretty constant "in-group" is
>> fundamental, but it still feels a bit sad and wrong to me.

The current format for MS is definitely more focused and easier
to discuss maintainership process and issues.

The larger format we had prior to the current one had some benefits
as it allowed wider participation compared to the current. I definitely
benefited from listening in on these discussions to get a feel for how
the community makes technical and process decisions when we had the
larger format.

MS PC continues to invite new developers though fewer probably compared
to the old format.

Maybe we could look into bringing that aspect back by making some
discussions wider and make that part of the kernel summit track.
It would become more important as the top maintainers reduce their
engagement overtime.
  
thanks,
-- Shuah
