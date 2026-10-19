Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA043DDB04
	for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 12:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792414008; cv=none; b=t6wNuHVfCvOGMuWTimVmfEjpVNHfDaldyuTCtsIjpbZYKBMQxPi7HTUGi61goGNAojXq/BZDrpx7k+r4tMDj2WaYLri+3YYIxvu/fF0CAOSVyE3pNLg5dEurZZHwLPy0umYdARXUxQhPvAIezcbdT53iDOxgVW9d2wQ7sXy71j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792414008; c=relaxed/simple;
	bh=9IoSTmrLjpGubrgjf2IMM4fZSAVTE9qw+T5K/adcaH8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hHqhvYU8HD/KHDRUjn+sID19L3Jt2IlpuHyH9vMGrskZcf80c3bNpCMG+tUMb4myQiwmjtG6mI+Ib8aBNNTy5ffJmtM3dORQ+jH6kkcxbFT9MfURUomB12GKe0rQn18souqdjpHoUbad7psKTx3HkXbeiekmUg+w8JajQafinfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=monstr.eu; spf=none smtp.mailfrom=monstr.eu; dkim=pass (2048-bit key) header.d=monstr-eu.20251104.gappssmtp.com header.i=@monstr-eu.20251104.gappssmtp.com header.b=zOT/iVB/; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=monstr.eu
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=monstr.eu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=monstr-eu.20251104.gappssmtp.com header.i=@monstr-eu.20251104.gappssmtp.com header.b="zOT/iVB/"
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-c43fbcb4393so129693866b.0
        for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 05:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20251104.gappssmtp.com; s=20251104; t=1792414003; x=1793018803; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lqHvin1mrtOOGUQ8541al+udNWOR/4pCQNs1dZhF1ik=;
        b=zOT/iVB/9KxgFJWYQdATlBMS42X8N4ta0sVHuFnHO8NmwP2OR+sXxAQcymbak74awJ
         FO2c20+hoBiUe6VHq/actEt1poAZg+ylHZWygvrnhZtKsJ39fH3+v/qqQc25U1Y5AWDc
         vzlKRJN/j5fWntq+nSu2+ejf7a3whQRwXxCr52c0EpDCo23BJV+nWTmPzqY8KShzgFHS
         +NmMmxNWjXIrnWPLjGDD+Ps6Nrd5rkvctEWsiJwMPGFt2bcaK5SK+/U89MFR+6QrP2Hz
         PcRuaXgDWeYNI6zevYGUfP3hn1awg0XLa4p/ZwOkPnUM33E0NbW48iv0DCtb3dPsAlXQ
         9q7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792414003; x=1793018803;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lqHvin1mrtOOGUQ8541al+udNWOR/4pCQNs1dZhF1ik=;
        b=0hIOyFbHrz3ohE2cCU0QxCg+wIWksUtWNoq6XI17IufZURnhAq+KHHKue3co94eTsl
         lt1T5lymqa73gTxbrIqKFTEgQhTiXcNHGgkc39Gv1ECvG6Tj6GvoTy8H/3IhkN+ADcRb
         5RYTqAVN3fEzicXdSt3638/9FPdqTfPs4xwkX1b8cTj16rIRavIXpjuxzn0nmIyp+co+
         ZeMyQnYuBGXfLgKG3qTGiCIuq0OZseFcYPv3X6mGYiJ/Pk33ILX1fVrQfT1Hys51dnzn
         eRIyw9mDSMXZ8MBJ2gHGk7mcZOGLUaLn1AlhzsIbYUWki/IY4mb5zJol/9G6eDl8Bh44
         kPLw==
X-Forwarded-Encrypted: i=1; AKwUvBykX4S45d2twm9u4puIMDvI4mLc96lDXwCynXetSoLYg9zbJdja7kdDn0qR2KbmbdIcgxW3OF9z@lists.linux.dev
X-Gm-Message-State: AFq9FYIdz7tU1jmmZgne2/p2JQAPHse7xgMt8iSS6HvkVQjMY32Q26an
	1chR+ycfmryjJQ2DCr2y78vCPq+P267IhIjunmmopdwXoIOc7vH/ymmuBiFpKi+7sA==
X-Gm-Gg: AYBFou1Mjw8geOVm2gg67kz/SUl0CLv+JG48nqT3FVFBlcMtJcBjGf2oC37V8da0FK8
	W08xpIQY0KPxaV6w/soMfcuPwb/pDoVmXdS4YLkvaKfyBt4qxcKQZN0lYIN7s0C48RptINFEjOL
	0S+LAsDSFEEzjTtMTqUQSFxyd3gzIFWJJJumBaOKTI6xTDzAsfRCPfwskUuxx8l2/HZoBWzi5pd
	0YAzn3EZ1fJjI6ETargnoz+MuZPog8pUuLK5tCgYN7gGSAkcum0J4VrwJ6GTk6n9a/OrrwfL0G3
	45JzcmRfcZbWQa0HPtVWG3PIg/Qo/RUi0NJeKa/U6Z+Z2jq3spiUpMWc4l6i5SGFP+lu7TMj0Is
	x8JfDITOmgx7faU9AOUQjM4XraTSghHxJDrDjQXkOZMsECqKDAlLs0YQsjQUQ09qrGu32Ggzh18
	pYF/pH3PxeosVwt2E6ULfC60pYtXjuR6b+lghJvhzjlToQJsCv9pnaA34vVSYyEGV4UPBOJxrT5
	0dvblNl07PdZjmwD0cwOZcGNI99PhkfbaUoojjbFm83vL8=
X-Received: by 2002:a17:907:d093:b0:c3f:7270:10bb with SMTP id a640c23a62f3a-c41a13afb51mr501495966b.48.1792414003368;
        Mon, 19 Oct 2026 05:46:43 -0700 (PDT)
Received: from [192.168.0.105] (nat-108f.starnet.cz. [109.164.53.108])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4090dceeafsm365851566b.17.2026.10.19.05.46.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 05:46:42 -0700 (PDT)
Message-ID: <6e66c03d-4c96-4199-b45d-42a0abe251e2@monstr.eu>
Date: Mon, 19 Oct 2026 14:46:35 +0200
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Patch pre-submission to Sashiko
To: Julia Lawall <julia.lawall@inria.fr>
Cc: David Woodhouse <dwmw2@infradead.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jiri Kosina <jikos@kernel.org>,
 ksummit@lists.linux.dev, sashiko@lists.linux.dev
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
 <350c7564-a833-4dd4-abf3-b8488280b0fa@kernel.org>
 <2989609157ab7ef8e9df06dbfce7a1584a987fb1.camel@infradead.org>
 <99b1de44-a550-471b-8e0f-c2e1f95d35d7@monstr.eu>
 <6249431-66df-d64e-77bf-8f93bdebf8c0@inria.fr>
Content-Language: en-US
From: Michal Simek <monstr@monstr.eu>
In-Reply-To: <6249431-66df-d64e-77bf-8f93bdebf8c0@inria.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/19/26 14:02, Julia Lawall wrote:
> 
> 
> On Mon, 19 Oct 2026, Michal Simek wrote:
> 
>>
>>
>> On 10/19/26 09:26, David Woodhouse wrote:
>>> On Mon, 2026-10-19 at 08:25 +0200, Krzysztof Kozlowski wrote:
>>>> I assume you mean they will be running it through Sashiko
>>>> infrastructure, so using sponsored tokens. Otherwise that possibility is
>>>> already there - you can run Sashiko, just a matter of money.
>>>
>>> I have a patchset in flight where I *have* been running Sashiko (as
>>> well as lots of self-tests) locally, and then got further feedback on
>>> the list from the public Sashiko which my own run hadn't seen. Twice.
>>>
>>> I still need to send v3...
>>
>> Isn't it better to create a new mailing list and filter all CCs/To?
>> People can send patches to that mailing list and get reply without CCing
>> maintainers and mailing lists. They can run a lot of iterations like that.
>> When it is clear they can send clear v1 in a normal way.
> 
> This isn't just free tokens for anyone who wants to make a change to the
> Linux kernel, not necessarily a change that will ever be sent to a
> maintainer?
Isn't this something what people can do even now? They will only keep mailing 
list and maintainer in CC.

Thanks,
Michal

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP/Versal ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal/Versal NET SoCs
TF-A maintainer - Xilinx ZynqMP/Versal/Versal NET SoCs

