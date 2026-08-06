Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470B23D5679
	for <ksummit@lists.linux.dev>; Thu,  6 Aug 2026 18:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786042599; cv=none; b=vAFN7wXq91fkwXrvV2Sv8WPnM1bZOTLLk2/WZWXtUl/OUW/xWS9QYbCgmgIPOgRRyBTHE+dp9ryqlcGwVF5W+3g6QCJYOocBdMIa2Ov5wJKsoZkCVqW3ZQveeYRDfrtrehLl5k/7xrsB9YPLNvg1zNoySDO/4dldys1NrGaxrpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786042599; c=relaxed/simple;
	bh=Rn2q8vhuGZcJ5Kg3DtxeM7kUL5LcqInIzsTtUvTT/j8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jG/tGasfX3Udg4T94sbeccEtAsegf/Fi7kC7gbMFH2mwlphCqVQ9HGD0Kr2CFcXPoTc77d7ub5YE95sbz2Z2WNkXCD6qdqcTrTmY1mnUlURHtiSb1Tc1BCxATXsPogAUyLPEDsrV4RoRGgMu2ncAHXJmERTCk5SJ00jcEh1FOqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=QqrwwvHU; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="QqrwwvHU"
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-495b98b4f6aso919464b6e.2
        for <ksummit@lists.linux.dev>; Thu, 06 Aug 2026 11:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1786042591; x=1786647391; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gxWipiDAQ/kI/fm7Nwvwdau1rESrPbhUJhwV0ACd5No=;
        b=QqrwwvHUhm+IKvCMIGqyBUHAMPx7LIAbU4xFmAHHCqiEbzngnRUYTiXL6NrXytat28
         3belY0UVxrEW+9D9W2vU7PtogNs9UgISQuSoFcm6qdKtYDVYYd02usNt416Oj+kLuGOe
         BkykxAafM0mBIo9zGObgMLE1mFTSJn0HSdjw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786042591; x=1786647391;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gxWipiDAQ/kI/fm7Nwvwdau1rESrPbhUJhwV0ACd5No=;
        b=LsUJjgfsYgS676dCzAlm7qL2bOACvcsyuca1EMTDvIugCN3AgxEmdlCkzLnKxw4/yW
         HTtCP0TgGT/0YQylPwfcJ0Xmi0A+rwo9QN1aHwIwFdqWIjh2IZFmNOfnLFRuCV99eK5y
         0Dz7TdxFnAUZba/QIWw4TG6hCojJ6uCbc+lxDzso+Xh6kZ8aTPgJ8bbZXPQvtbBGkdD4
         OfauCXX5TFenB7NEiW28awXpNexO2Dh4peGhQQtANDf9df6+uIPU3s/eRdaE0x506cK7
         3TtRuaylcAlCNUV9Kv+NotTlTiNilqT3N+VC3vbVbMaojhwAS+V9IyMpQDV5EeMi3rRr
         2HLQ==
X-Forwarded-Encrypted: i=1; AHgh+RogzVPfUljxGv0/m0rlo2Wb/lSj2PgUPcD+Gj08Xkbu/cmQKYs0ihXqPw9HMEjuA6zwdx3gi7Ka@lists.linux.dev
X-Gm-Message-State: AOJu0Yyop/S3x7ZxuGvajTXvCaWqucfoSj5OnGkFk9olz+HokdfbMDvF
	XIVfp9u0KqXXRT/TPqB+QD+yIcVCETrFkaZT2DVzZF747zAPpoQiSjYrXagrxYW47qY=
X-Gm-Gg: AR+sD11JgJbSBPd9MBJsNepeeseKMr54RTew4/anFdM0AStL1kkxLT2iqvKr7AezbHM
	SxOeZG3+ho5f7uxj3rNvLtW/rShe/B6OYo/M5ELJqF3Ub8yTimaY5qip9W1zr6Ns1YeoVEpOi5O
	Zv7RwU2556dznpHIa2HsOl/pq79x4/o3Xzkj/cGOo8QU6rBu5k220zNf3CdcpoS7z+5TfgynYmk
	zNhZm0IP8uRbywfmkvWnwhgZ6Zepo3QNCSV+VxK1a6kBBxptQV0DlKaBjV+KO75SM82SdGylaqd
	FLzHP1Hlxm7Hj+09GGN85PTO647ZFPZnRX/ImLTB8WPRrhnkJBagWwzxsR709fB5pnXmWeh1+81
	+RzGQt9cRhu4vdB5EzXu+pMdyJ7LkoWysYgR1aeu/ib0dIeA9Wi4sFKt7Itkw+XBt84BhrhZjXw
	VyXBX0dMt0buvFVbapYI6/VaKhg92jGszBsPFlZcUg8t9jkemFaP7EGkml7UbZNw21SqYq1A==
X-Received: by 2002:a05:6808:1986:b0:4a3:fb6c:9adf with SMTP id 5614622812f47-4afae067fe6mr10630640b6e.12.1786042591325;
        Thu, 06 Aug 2026 11:56:31 -0700 (PDT)
Received: from [192.168.1.128] ([38.15.57.99])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4afae4fc68fsm4948726b6e.8.2026.08.06.11.56.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2026 11:56:30 -0700 (PDT)
Message-ID: <91609b69-8628-4ada-8632-eb822d67a5da@linuxfoundation.org>
Date: Thu, 6 Aug 2026 12:56:29 -0600
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
To: Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>
Cc: Theodore Tso <tytso@mit.edu>, Jonathan Corbet <corbet@lwn.net>,
 ksummit@lists.linux.dev
References: <87y0ekm9nw.fsf@trenco.lwn.net> <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
Content-Language: en-US
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/6/26 11:28, Konstantin Ryabitsev wrote:
> On Thu, Aug 06, 2026 at 05:57:54PM +0200, Greg KH wrote:
>>>> At a minimum, one could imagine a bot that notices a patch posted by
>>>> somebody who has not been seen before and responds with a "Welcome!
>>>> Here's how we do things here" email.
> 
> I can probably do this, since I run a bunch of bots on list messages already
> and this seems like a service that would benefit all subsystems.

That is great. I am hoping we can do this as a service for all subsystems
as a project wide thing.

> 
>>> I wonder if we could make the bot more sophisticated than just sending
>>> a welcome message.  If the patch is white-space damaged, or doesn't
>>> apply against upstream (or if there are indications that it was
>>> applied against an LTS branch without an explicit LTS tag or something
>>> indicating that it is a backport), one could imagine having the bot
>>> sending a newer contributor a more specific set of constructive
>>> criticisms.
> 
> Preferably, this would be purely deterministic, such as:
> 
> - carries "base-commit"
> - has a signed-off-by
> - actually applies
> - isn't against a known LTS branch
> 
> Failing all these on top of being an unknown/new developer could trigger a
> quick "here's what you did wrong, oh and welcome btw."

This looks a good start and we can improve it as we go.

thanks,
-- Shuah
