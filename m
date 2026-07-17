Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D89237EFE9
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 18:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784312845; cv=none; b=dxDQPFDOUV7NCP4VDCReoY/FtEyK+PIy2/v/rTEyn6pjRmE95ZNGv5qMsYbvSosUYCDIiSGGAGn7po1vAXZupUBuGvWbqF9mpki2OH79uM5JKDO1CuyAzVdcOGdKL6k/KIYayt8Mmude6dUMpr3AwERM16AyB/SC06ODA6+5PjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784312845; c=relaxed/simple;
	bh=fOw+zEuYWj99xLlpxuAgNigOlZQy4t/3fpcBWoNIGMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e3lvNi9mNHEkdIFtQu6KmsB56ccATbgtuZ6RXYqNZmxgtD+aDO/bKCytoH+2ciDiCUo81ksYUZ3SMgbE6s9yryj7SuXZyul2WCcs8mq+n3uy96JQ7/8lAKWh7xXB6sqNCDztd9jSWsvZinCtDd4yGKb7s9atXY9FUBVsqKa3kfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LXaUTYa8; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LXaUTYa8"
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7eb34c17b96so5241953a34.2
        for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 11:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784312843; x=1784917643; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qa0XhwIaztrvU2JzmiQierZYawDWkJGGqTw01YkxsRg=;
        b=LXaUTYa8QsKvHO/1rPdKzAqnzrhAqdWZipXyQMUtzR5t1dAzXW9XB151OfhV+IdYau
         xS+FGezraa4IsNRf92Wqvy+SfSE4B5Q2Bxqr6BUksMVsWXFGrWh/CR5+RLPjDvjd7xkR
         /v+YS1giosF5q83RwvOHmGg8zcubTIdsmD/f2tBUWjPRTTB1ConsUJ2nHCfRXx3pBMgm
         dLOV7jkxsqDubYu0wZgn3joPxAS60qqNizJRjVhkVckA1Fp5zj6FCDmoRA1HqsnAaqSn
         DQbK6fCi+Gf5RmVzgF8GwtsmhtUzrjqakguzLOgoRKJf9RW6xRNog3zfT96JSHkRH4lc
         qVqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784312843; x=1784917643;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qa0XhwIaztrvU2JzmiQierZYawDWkJGGqTw01YkxsRg=;
        b=ss3Tga5qvocNMm3FtqOpdnAnMw99VKBR6tJLU+nZXN9KdvLbX/xbaADjZ8HhG75VGe
         7U8o76EqFdBdK5gD+IWm9MggBOfJiB9pkAyYGxdycIJxE3Po295iTRnFYPfUq9ldTlvK
         PWRxBLG1821kWPNjmNgLUE1LjsUP4n8h8KVZdeBH06alGupHMpTR7CVNJ6VObCgtZFqK
         BT1O3Mn061lasGWG5CiorStW28/pbafgSK/Vn+JGINhUBlOrz0jK6X9ufgeLIzbrnbcM
         2wEv7JdjOJEBsNBzoK72w4kkvmiz5FFsdhdsyN/OsDW+cXjCEztBYH2AOEQX5fjVZ79Q
         uaLQ==
X-Forwarded-Encrypted: i=1; AHgh+RrcPwBoBrt00VZyi8GrgPqyLVRtAd35LZjr/2DaEpOl2UMd8cNPXNH9IrmdmQvSXksVekq/bei9@lists.linux.dev
X-Gm-Message-State: AOJu0YyFv89PU6JCpFGsxfQyl2L67VGbZhgln3F8fSF1tfIrp+LgOEwm
	//thRLHDWuUB1pDOF3hZFLkMSpSbOmbR+FzIjvZOfpmL3ZtxHNUJkzqR
X-Gm-Gg: AfdE7cmuM0ulE08rIoK2391rw45983Ufd/aT7a9iP5AM0xMTdE/1NXtth7L/7QZSHyZ
	8cGDHywmzZpdRfI3LGhxCzo2HFQDoTpfR4KgJ7VT0y1xLzLtYrRzEEMHYgUd0obtDVd7ZX8/Az3
	DFOMPvDMBKv35I5i97o57B5C6id8i0Q2cOSEQLRQ7sogq51uQHBWYzy34MmQPZVsy/ck0mq6Dhg
	A/KP4hcBdoPHFXfGPyMmRRwkTAfIE5/1r4C4w0lnRczj/O2JTKOJ++49TS3/O5o5sJGFRM+rSfL
	NjJuOjUXQEbyyXJBarTk4En32w9IOXK3OP0Cn6RI1nN5w9LvxWk6qZwK1+DvPcsb5TzQFKWguGA
	ZcU23d61aNh7pejws/3LBZR0lcnvnGO/PjOk6xIL714f+zeG+rPLiUxuBwrYNMKH2iviagg==
X-Received: by 2002:a05:6820:3091:b0:6a2:739a:cea6 with SMTP id 006d021491bc7-6a53687c705mr1769742eaf.54.1784312842895;
        Fri, 17 Jul 2026 11:27:22 -0700 (PDT)
Received: from localhost ([74.80.182.90])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6a51a220cbasm1847706eaf.9.2026.07.17.11.27.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 11:27:22 -0700 (PDT)
Date: Fri, 17 Jul 2026 21:27:15 +0300
From: Dan Carpenter <error27@gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: "Liam R. Howlett" <liam@infradead.org>,
	Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <alp0A8ThbUr6uRNc@stanley.mountain>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
 <a6898b221ef656a053352e41cf8fd130ce434d60.camel@HansenPartnership.com>
 <adnloao5zqp7xkpryijdbrbtqo4n2iucfvxn6rtcd23s3hsvgg@fjlzj3jborxc>
 <4adc1ace832afefd30e48f0a05b27b58d9fbd604.camel@HansenPartnership.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4adc1ace832afefd30e48f0a05b27b58d9fbd604.camel@HansenPartnership.com>

On Fri, Jul 17, 2026 at 02:12:31PM -0400, James Bottomley wrote:
> On Fri, 2026-07-17 at 11:53 -0400, Liam R. Howlett wrote:
> But the point is that whatever happens (even if nothing does) we'd have
> tags in the code base to identify most of the affected code.

The Signed-off-by rules are simple to enforce but it's impossible to
know when a patch is written by AI.  It's definitely a small minority
of patches which are tagged and not "most of the affected code".

regards,
dan carpenter
