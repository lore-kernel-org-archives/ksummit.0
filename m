Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.210.49
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792529016;
	b=wHoelspSHmK/rJK7HIkToqMGXHERAuBskUG6Ej+iUefVkPfctI80MFYUa1csznP9Q0N9
	 k4rZCTXEa546zppArVghgbBf6ZPq/IA5ZRGSZuwa8MzeCfoSJAcQXWppr4FzntGzehsWx
	 xPjpbZhPDKY3eFvaB8JYXb7ShFPqjurKMX4EM2jTzXWV1dJ1fxYSVYuLEk7lTjUhYbRKy
	 z8DiNXJULtkQYkWckIVg6ZlqhzoTqxi5RfRo8iq132+PNKomeE/jx9ohf8mK7M4pyJ4ud
	 RBQIEFkLWmnu5HFRMPnIY0Ioa7QaEYIcNg2qQfu9aHkv3enpENJjsd5uViur5k/IYbQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792529016;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=fh8Izvo8HR5nWpuuB+fxprO8/K5MBx7ONvjX46QoqW8=;
	b=rnY4wHJcZcuSt8xuELcQ3PknRV3PgJ8XmVrHdA9x30EyM18c0Jw9kyghrcd334Qeox+i
	 yJLH1pw7w+8lbYYxp2Ww6h0/qFq5nSqdl9dDtRnEwFbxtIiUOhdgm6cv6hB3jOP+fje5Z
	 Ds+eimdyhqihIQ1uPUejWrkg5R+XrPwTT7PLIW8SRY2JdnDlaxegST9kVwmU/On0kbHdP
	 KdvjG6WtDwKrwzzHJwzTP+onxwnNyxugKbOCMzm7lCoiQ8IVu5+bdw30Rxw4543l4sWcD
	 UOkG4W/eXhl5uStmRS/97El7LYz4KAkDVQ2A9i2SOrMiaPQGux/XU7ccpreVwD/nESw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linuxfoundation.org;
	spf=pass smtp.mailfrom=linuxfoundation.org;
	dkim=pass header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=google header.b=TfgN8R0+;
	arc=none smtp.remote-ip=209.85.210.49
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09106606A31E
	for <ksummit@lists.linux.dev>; Tue, 20 Oct 2026 20:43:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 09106606A31E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=google header.b=TfgN8R0+
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-843ea301d60so52205a34.0
        for <ksummit@lists.linux.dev>; Tue, 20 Oct 2026 13:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1792529014; x=1793133814; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fh8Izvo8HR5nWpuuB+fxprO8/K5MBx7ONvjX46QoqW8=;
        b=TfgN8R0+2lUmPST07DXIgFEeYIPki+8Vfp7BkpoK1Pq8wKxsBmR8kZK8Vw1oAz+X9l
         5pQolVAhr4tmpgQkif3FnfSYT/TKfELs+cnC6O7Dd7P7gjaXmvmb5VoMvgw0NFFJFhsC
         3PfqGSXtw7i/aqrnnRkYL7yR5FhF/OiLuMSnQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792529014; x=1793133814;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fh8Izvo8HR5nWpuuB+fxprO8/K5MBx7ONvjX46QoqW8=;
        b=fO8CI3Eg0ZQiepQyjLGrgwidwwU5exSgHXnplXbLMVwZVP97fFwoAq1HfkTCVUlFwL
         ilkdwalrz+e2vTEXEOSNBn2VDe+Aj2uM2KKP73JBqa9mHM86PYumnHvxx7vD0swaZZnP
         N5gotw88nQ8DaOtFHxvu/v6lDLNND9z/zGBf4bnRQYxWN8U/mnyOsYiA5A6uLvuXLM8D
         RmXzjAxAGc3jMRBHcpe34L8iDcG+zLjrbp6mxUmo6noa0FKFBD7PAJMD/ncmHefc+x92
         M/lHcNNXLO13U7xXKDbNAkg5eQzNv4T8ShacJDp9TsqhwdmkF2AxRZfNeeaYEjZgL3f8
         oUtA==
X-Forwarded-Encrypted: i=1; AKwUvBxvFURXrppjdAKc4VttSf6Eigbhwo6skTLyY8UemcCEQn5FX6I8ZU29AXzZVOgLg/Os0VBtlOYq@lists.linux.dev
X-Gm-Message-State: AFq9FYL+y7hgSFZfTU2RHyZiGZ4guTzpFX6qdqnqnFB5rs9kIIbc6Gjd
	CVeL7JoxVYPhzGD69EEeqrqkSPDmbUFabUP0V5Hcze4AeXG9swsUzyyHUREDIM/ZuKw=
X-Gm-Gg: AYBFou08lHfxYSg6etg3dpZ8uhD77V5M0aEN0DzHJ9zcDMoD6SEng4+Y5RFlKaIEG3A
	eEnO/3jzahGAbh+zngHUCDFOEJHtWAgrNQxFtn+B5dAlpaMgeWzEoEmVRU7Pjg5NGmgI6gek20Z
	Fl/jsSoMhTImmhMUoaNHRhEUW0kvjgqqCx5GdkHClpzXihKmi4GORoZ6KqtlnwRVHb9CYtXefCg
	gFVW7GStrFgGzDZBtt0ZJLcy9Jl/w00YXqC4Jkf2VxS8KMem69si2O+JXvvhTqHOt/ucu9QJNHA
	e0axDaUnX71fEs++5vTmKIoWd3u6r4LO9LENVwQp54R4wiftQLwVuMSlk2SIELG8SWKlTEc6e0R
	lXRO+kbwdT5s0XZyd7Nx8j5zq19kt8ZrM7TeRLnqp1aBMatYQnl81HVu3A+UOfDUnGfdss8lEcG
	8KSy8aAmMUB1EHaU53q/CvFGGq3a6bIRK7F8EocJGS2w740BOzflUSTcQvfE6aOmNwgE4A259kP
	eHt0Y83ZxndQtWlKtU=
X-Received: by 2002:a05:6820:1c89:b0:705:e5c5:ace6 with SMTP id 006d021491bc7-7093fbb4316mr46941eaf.25.1792529013783;
        Tue, 20 Oct 2026 13:43:33 -0700 (PDT)
Received: from [192.168.1.128] ([38.15.57.99])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70902ec488fsm506429eaf.5.2026.10.20.13.43.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 13:43:31 -0700 (PDT)
Message-ID: <7e473af8-2f7a-4a36-a926-e756873c9c52@linuxfoundation.org>
Date: Tue, 20 Oct 2026 14:43:27 -0600
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
To: Theodore Tso <tytso@mit.edu>, Bart Van Assche <bvanassche@acm.org>
Cc: johannes.goede@oss.qualcomm.com, Jiri Kosina <jikos@kernel.org>,
 ksummit@lists.linux.dev, sashiko@lists.linux.dev,
 Shuah Khan <skhan@linuxfoundation.org>
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
 <atO3pCuUxI950ftN@mit.edu>
 <3354ebda-5158-489b-a577-5cb10e5d5fb0@oss.qualcomm.com>
 <atZ4J86j7CXF82HX@mit.edu> <2fef166e-088d-4ffe-8d0a-0143aebc1b26@acm.org>
 <ate8oESqneK-3sQJ@mit.edu>
Content-Language: en-US
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <ate8oESqneK-3sQJ@mit.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/26 13:21, Theodore Tso wrote:
> On Tue, Oct 20, 2026 at 07:20:53AM -0500, Bart Van Assche wrote:
>>
>> Does the requirement to run a local LLM raise the barrier to start with
>> kernel coding?
> 
> What I was proposing was an expectation that *if* you are using an LLM
> to do kernel coding, best practices would include requiring the LLM
> performing the agentic coding loop to do the following:
> 
>     * Validate the commit using checkpatch
>     * Do a test compile
>     * Run any relevant kunit or kselftests
>     * Run the commit via an Agentic review system

A couple of more:

Explain how the problem was found
Explain why the change is needed

> 
> and maybe even:
> 
>     * Add a kunit test covering any changes made by the agentically
>       generated code.

kunit or kselftest covering any changes made by the agentically
generated code

> 
> If someone wants to send a 100% human-crafted code, today we strongly
> suggest (but don't absolutely require) that people at least run
> checkpatch, and to read, mark, learn, and inwardly digest (with
> apologies to Thomas Cranmer) the rules in SubmittingPatches.  I've in
> the past requested that people at *least* run "kvm-xfstests smoke",
> but that hasn't been particularly successful.  Should we ask that
> human code contributors do more, such as running kunit tests?
> Perhaps.

I think it makes perfect sense to ask people to run tests. How else
would they know their fix/change works and doesn't introduce
regressions?

> 
> Given that code contributors vastly outnumber maintainers and
> reviewerrs, it seems that anything we can do to request that people
> generating load on the maintainers and reviewers take at least some
> steps to make our lives easier.

Contributors vastly outnumber maintainers and reviewers and this
is why it is important for us to ask contributors to do their
part in verify their contributions.

thanks,
-- Shuah

