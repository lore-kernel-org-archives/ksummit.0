Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.181
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792433837;
	b=jSEK5fKyDv+0q2LrxwSTyMGegyeWct8l9xtOA88xLqquCrogd/deS98yrwv6OIT1Fj0v
	 RBKOHT3kWvxq6sgK3Lbc1ftsV0EhNKVJ16AzfGwbQP6QxR2n7KbTzxHrmPepqi4au2TgO
	 1yzQxYTJniYkMwdsaq1avQ6cIrxn3uzikqD0/349RHWwrOh0gt7QglZqZ7Z1Ga4Kp2V9Q
	 tRUNZwHU5PpDR/QaS8l/hiTpR7nQmu9iPbna5I42CNjnMQt1/XQBifBw5DBSplprUXYFS
	 P8zKFjqaTFRFVu+V/Ilz41tJM3ec9gJRulxasqLHnVEBBLTnMTs/oHUhfGXgDM4XJZQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792433837;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:CC:
	 Subject:User-Agent:In-Reply-To:References:Message-ID:MIME-Version:
	 Content-Type:Content-Transfer-Encoding;
	bh=pSBDYKJ6sPz1a6J1+eXWY5WWdgrC7j9UJLu2lKXZhVo=;
	b=Y/jN1//M8p33X9oVBchu0NjdndYRRzlUgyZNRWRmzRN/G/djwnkjNz911zpNblqvnfRS
	 6ular1PzjL1MQCS9Ou4hfA2Pkvsk7anJSVKcVAsAer9EIQhdyuRLqaiBYyvb7WOdTwlio
	 QjueyZJVE8P5sKvhSj1yvpNJfH9yKfSH+0iMct6kYfcPjln84SGKT6jA25VXHNxn0yVzT
	 VCJZplAXmxusiEt7bTKKX558rSDha6rYIxfjTQ55qQGT7k22sUK/yQBMqMTAlO21LCkXO
	 oqSbbZPzn9HVIVnDcav8goPzjCoknCsxN/RnK34gDZfuK2dbNQ2kZEY9tI/OMTXQzoQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b="Rd1B/pHo";
	arc=none smtp.remote-ip=209.85.221.181
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414F7606A327
	for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 18:17:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 414F7606A327
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Rd1B/pHo
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5e948e56b9dso969330e0c.1
        for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 11:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792433836; x=1793038636; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=pSBDYKJ6sPz1a6J1+eXWY5WWdgrC7j9UJLu2lKXZhVo=;
        b=Rd1B/pHouk1F2BzNv6o96tDh3BBpUu5tflYxiLWzKXdQFaSRfMNbhUSA7axKCDhiA+
         9TCagSzGwnidD5K37m1xCJg4SRqou2UeW9tHvBWQ+D91fwGjQ2Ld32DPs6C/b264x/q0
         ZhALNdlFu+Ki2VNQSlLhzn2LXS6eJMcF/VGIK/pkYuRLV1xCgw4kHvgqSJY0eZBJVKK/
         er4le8sGc73cmFZtSmVZDnW9pkKIAbLGoN8IpuoUwm9xpWM77yjNs/BZlRKeU3puuNhy
         4kE5i6rzuUtxZAyD1WhBnrUse8maZKtAyhKIV0ntcalPTttlfVWTF8lUBIRrcO3Wokcn
         dk2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792433836; x=1793038636;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pSBDYKJ6sPz1a6J1+eXWY5WWdgrC7j9UJLu2lKXZhVo=;
        b=WxxBlLXZ0D6rdp+HaGJYf0YdMbRJQKFT1lZnwxcuPyIX87QAEakNEbdQRwD65aBJb5
         /9zv8uqbgVQyh5DmBGCTgdKVaW+CNQOwdAM6YRyQG0X0LoMN+3sARQ2D7usRdwXPB27G
         qqf5mSLVGornxAEgQFieO9W4w/DzCbUfmb4nDZGyikm7TsgnEUUckYGyX0POwbEID62c
         KoVd1imzh4dGsR6lGkWsPhzTWrBXO3918IJihGd9cCBeRTjPsMqizUs07Afh8dMfpmbN
         dzVeSSEwDyCYIg/7pHVx5wwqm80KBHyetoDxoAxtqA3J1YRAgMn6a0h92EieLmfr9uIf
         ghhA==
X-Gm-Message-State: AFq9FYLaLc1WC65j4WXu24WmJUJ5ZWzua8iJ6dHht0uKVydyxxEXMIb0
	YhCTOXIebw3oHW4yaVL56bIpy/Yyq0J8RC/OMfeiZVLp56vtwmOxfBhs/WwOkQ==
X-Gm-Gg: AYBFou2wYLXCdvL7XZL8zvru5WimyASICSYbKz+u7CVqcjjjqNus1QF0x+MBdhdkKOv
	rDjfxqSV7XJP6xHiSfdcIJje2LF2FeXOQ2+ddoRpVceAXVlY5T5uHvwEP0sUHSnDMkGGQxf+z2c
	EsPKYn8GDdGQqbSpRIhsOsCJ6fb0zN5hSBbrMvclZGzh/LCnfdqPh1AP3C54V7maZzTUrI28M3C
	vandOIo9IgYCexSq51SHEb53W0zS1EDcEfm96NBR/LLo5+GgL0SOXjsXRvV4EE+cfWn83e6cBdF
	g1UCJ8ypotY24eEFcsNfZh6C2WkKIy/1L2HiXqU1rcUIzTLyRgC4bEVMNqmryionP0ipvmoKYnt
	CM79CYftPUzcGwUMHkh3xfCBa9MP8Aoo3A9ztlYtLkQ9PrujMup93ZfkgClqjG1Lgu0Vqemcsj0
	Jszgw+1YboATsFK6uHnLhmV1ly2KcJ7wf+WkWEdFdKsZBrmVWHh5HDfR1UT4luZc97H+qobeLgH
	JRGMnIKVCwKPYE=
X-Received: by 2002:a05:6122:6d01:b0:5ea:91d2:32f8 with SMTP id 71dfb90a1353d-5eaaa392abamr2497193e0c.8.1792433836033;
        Mon, 19 Oct 2026 11:17:16 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2804:388:90c1:8035:18df:f30d:633e:1dfb])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5eabbd9ea2bsm6249799e0c.2.2026.10.19.11.17.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 11:17:15 -0700 (PDT)
Date: Mon, 19 Oct 2026 15:17:07 -0300
From: Arnaldo Melo <arnaldo.melo@gmail.com>
To: ksummit@lists.linux.dev, Shuah Khan <skhan@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jiri Kosina <jikos@kernel.org>
CC: sashiko@lists.linux.dev
Subject: Re: Patch pre-submission to Sashiko
User-Agent: Thunderbird for Android
In-Reply-To: <a6670d97-bf2f-4027-95a8-c091144725c1@linuxfoundation.org>
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet> <350c7564-a833-4dd4-abf3-b8488280b0fa@kernel.org> <a6670d97-bf2f-4027-95a8-c091144725c1@linuxfoundation.org>
Message-ID: <A23FA315-A514-4ABF-931E-721ACBF1E08D@gmail.com>
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On October 19, 2026 2:53:27 PM GMT-03:00, Shuah Khan <skhan@linuxfoundatio=
n=2Eorg> wrote:
>On 10/19/26 00:25, Krzysztof Kozlowski wrote:
>> On 17/10/2026 19:28, Jiri Kosina wrote:
>>>=20
>>> [ in the spirit of the concluding discussion at this year's maintainer=
s
>>>    summit,  I'm using this list outside of actual maintainer summit
>>>    planning :) ]
>>>=20
>>> I have just received a v1 to v11 patchset submission within roughly on=
e
>>> day timeframe=2E
>>>=20
>>> Neither myself nor anyone else did comment with any review feedback,
>>> except for Sashiko=2E Which I believe is what triggered all the immedi=
ate
>>> resubmissions=2E
>>>=20
>>> I don't think this is sustanable=2E
>>=20
>> I think it might be fine to drop usual expectation of one patchset per
>> 24h as long as maintainers can completely ignore patchsets with Sashiko
>> replies=2E
>>=20
>> If people want to keep bouncing the ball between them and Sashiko, they
>> should be allowed and then we should be allowed just to silence that
>> email thread completely=2E
>>=20
>>>=20
>>> The idea of throttling Sashiko's responses was gently nibbled at the
>>> summit, and might be one of the options how to deal with this=2E
>>>=20
>>> Another option I'd like to propose would be to introduce a way for
>>> submitters to run patches through back-and-forth with Sashiko even bef=
ore
>>> properly submitting the Sashiko-polished v1 to maintainers and
>>> mailinglists=2E
>>=20
>> I assume you mean they will be running it through Sashiko
>> infrastructure, so using sponsored tokens=2E Otherwise that possibility=
 is
>> already there - you can run Sashiko, just a matter of money=2E
>
>When a submitter uses LLMs to generate a patch, it is reasonable for
>maintainers and reviewers to ask them to use shashiko to find problems
>before sending it to us=2E Asking for a shashkiko run before submitting
>patches could become part of the patch submitting process=2E

I did run Sashiko locally in the past and even contributed patches for it,=
 but it can be really expensive=2E

I need to try it again, but plain using /kseries with review-prompts on op=
encode with free LLMs, while this option is available, as it is now, in a l=
ocal loop using a local model or a free cloud one, as I'm doing, would grea=
tly reduce the public loop with sashiko=2Edev=2E

Right now: in OpenCode V2, no need for even an account:

/models

Select model

  Search
=20
  MiniMax M3=2E1 Flash Free            Free
  Nemotron 3=2E5 Super VL Free       Free
  Beam Free                                       Free
  LongCat 2=2E5 Preview Free            Free
  MiMo-V2=2E6-Flash Free                  Free
  DeepSeek V4=2E1 Flash Free             Free
  GLM-5=2E3-Flash Free                        Free
  Nemotron 3=2E5 Lightning Free       Free
  Nemotron 3 Ultra Free                   Free
  Big Pickle                                         Free

Cheers,

- Arnaldo

>How about updating the submitting patches document to add a section on
>this with instructions on how to run it?
>
>This shifts the responsibility to run shashiko to people using LLMs=2E
>
>thanks,
>-- Shuah
>
>

- Arnaldo 
