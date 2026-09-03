Received: from mail-pj2-f7.google.com (mail-pj2-f7.google.com [74.125.227.135])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7834142FCA3
	for <ksummit@lists.linux.dev>; Thu,  3 Sep 2026 11:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.227.135
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788435552; cv=none; b=iWhC13XK+pCK7O+s8DCUQKYVJ2X01zmIpXzZ+y0VaaTaw2dfzNC1qCobpQGUcXe74lacsqENjy0u7fEN38bBJCD2gnXgsZqhEmgDQFqy8FcEsVFJDyr5uXilyXnVojHy4l4ALLi71CyKHCkTAxZFTw+2VA4nefSQ2OeYEFQSRE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788435552; c=relaxed/simple;
	bh=ro5ycANoLWJJCE9324sTDjhQ6jvDY7a4igZpzbhFBBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YzIwbi3Sz127XomR20FivfMWHoBNaFi3Hr9EUd1AO0//dAwM32gv2MvXWTuzHX5uWLdwPYbGNYW0CiLOQnvmd0w/f3ufHDRRI0tD95iouaZPgQUjtrIK/92NaA7hmQZxUaeNrkPcPJHrxkx/Ej1IAz/cyZBGBSMMcfrnbbVZiNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=nebusec.ai; spf=pass smtp.mailfrom=nebusec.ai; dkim=pass (2048-bit key) header.d=nebusec.ai header.i=@nebusec.ai header.b=fWv+ZJ5d; arc=none smtp.client-ip=74.125.227.135
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=nebusec.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nebusec.ai
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nebusec.ai header.i=@nebusec.ai header.b="fWv+ZJ5d"
Received: by mail-pj2-f7.google.com with SMTP id 98e67ed59e1d1-398da2bdcb9so858382a91.0
        for <ksummit@lists.linux.dev>; Thu, 03 Sep 2026 04:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nebusec.ai; s=google; t=1788435541; x=1789040341; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cRU7hLnxNiZ55MaNHqLlZScRyTHKVnmWkFZTM4ExPyA=;
        b=fWv+ZJ5dcXJfyqKi0tDVwbQAF56HX3VygvP3S0S6SXAOy4sjeMD5O321m84x24PrfH
         yug00sFRABfUzB2oq9rWxrPc0igiJ7MlXHzzIS74fC1smKHRdBe7QH5f3fO4geWAzBpR
         Pq328HUrvl/bCuH0OeH4rtqbN1pRhsDtFJQPv2pJnuOv15/YN3SsbtD2eW620pcaIYg6
         OHRna8AKfAIZTBLEKCSG+r8RVjMCBh1FYhRFDmKLU8o5hvBTwoPxo1XaAOwtIlZ5d5eH
         Y+Ho0WxBjDDnCqlt5ae36ahcNBUKbDrLIXfq8sx8f+XedF3D6rvCDs7ixFtAL742c1Q7
         RpZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788435541; x=1789040341;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cRU7hLnxNiZ55MaNHqLlZScRyTHKVnmWkFZTM4ExPyA=;
        b=ACOnfVvomce8BZCegalvZCdqFHFrLROLaiK/x50yg1lGzufyeYWc+HcLwSXIjAG5m2
         5TspKudRxrwjvK9tXK9fLivsSsDNkUY5pV5HtORyhz6sc47WPF7xpif2QvYntPdVTlm+
         WW3FrFNv7LVPla6jLBgWyi+DvV9XjBCcJHNIFB3qAFaVg3yiKHMeLPu327BTN5q9Kjcc
         cugv4OFk0pNg/X+0FAwwFXSYD3dUGnKE8MlXIt0rs7zH0QH8Vjm9jBFc/LTiw2pISlIR
         dkyZ/c5vsg5pZiPmWK4VaUW8Onio0c/lOPNNVVR9wQkvC9kUqscsHB+NUFGUVXrll08y
         KvmA==
X-Forwarded-Encrypted: i=1; AKwUvBzoqKRJzOtbSD2xol/V8XpDuvFnMkAdOu6friKjnC4MXniav/B4ZUl5uOxalKla1ROaZG5sho6p@lists.linux.dev
X-Gm-Message-State: AFuF++muW9TzfiOdFvZ3tNEm/H+4hUlF6xDSfXrps7zXHPuDlBMAK5Y5
	IUkd9cduVe0XFFFn8ctUJ1gwUu7CMbq0L8oxxEXxJoH2RZTpbeNAmdokOKoeACgv49JG
X-Gm-Gg: AYBFou1EP0IpfQ92ulMZdB7PT5IF7wNZevv60POJ7A5UpJMdpU1opkL6gRyhcaWxoa2
	DVwI6LxgCU0X0UqaQCE8EuuarpbEIiDoiI1FG2esLRciVElBA354Pqi7Z8QEqTYJxZM0wyzP3Sj
	9UlHTgDuMMJA5N6chs2XffYXNHatC3T6ryGUxntZt4awE+OFU/eg9/0fjgeHuELCNWWro3kQRqn
	ZpZ42pEWEiG8Wdfv6Iw9aoEQG7Rp2kfqLzIQHeYls7IWrKfnQUkcDV2IfQ0ZNdgkAYy/P6odfbK
	BWJHGBMnSWwezKlyA0UCDCRKMqolhXyg+KIOva5Roi0ZO2Zcx+f2qGN1d4IH5tKudFRQ43B4G90
	3gpG0kt71jsX+ndd9KOxmvkuWg6DYBmuisR5+Nsoq+J1GLBHbAb589wpSmjGrRzXWluj6m0qck4
	hsjAyDs0O92iRamg5vKkp6wXMMTA7pWT1f+5fNRUaz0QZ0i9J3YJc48GLolnKNlBn+nSkGqqtkw
	KE7GnXbZKNczmbiH+MPm3Xv4UaDLc/adSh1sj1rtw==
X-Received: by 2002:a17:90b:164d:b0:398:c16e:69d3 with SMTP id 98e67ed59e1d1-39aedeb9aecmr17724130a91.1.1788435539824;
        Thu, 03 Sep 2026 04:38:59 -0700 (PDT)
Received: from [192.168.4.59] (c-73-93-246-205.hsd1.ca.comcast.net. [73.93.246.205])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14319922eb4sm5341286c88.7.2026.09.03.04.38.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2026 04:38:59 -0700 (PDT)
Message-ID: <e105651b-a773-4a46-80e9-1e2ff0b665f4@nebusec.ai>
Date: Thu, 3 Sep 2026 04:38:57 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [ANNOUNCE] A Syzbot-style Platform for Verifying and Fixing
 LLM-reported Bugs
To: Jan Kara <jack@suse.cz>
Cc: netdev@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, workflows@vger.kernel.org, frankw@nebusec.ai,
 jhs@mojatatu.com, ksummit@lists.linux.dev, kuba@kernel.org,
 pabeni@redhat.com, kerneljasonxing@gmail.com, roman.gushchin@linux.dev,
 jgg@nvidia.com, mchehab+huawei@kernel.org, torvalds@linux-foundation.org,
 ben.copeland@linaro.org, gregkh@linuxfoundation.org, yuantan098@gmail.com
References: <20260830115546.3942129-1-yuantan098@gmail.com>
 <f73vtlhwpdgrt5klkk2cgxfuqsvwvvlhzti4nu7hgdevwbqhvt@g2udlammqolb>
Content-Language: en-US
From: Yuan Tan <yuant@nebusec.ai>
In-Reply-To: <f73vtlhwpdgrt5klkk2cgxfuqsvwvvlhzti4nu7hgdevwbqhvt@g2udlammqolb>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/2/26 08:10, Jan Kara wrote:
> Hi,
>
> On Sun 30-08-26 04:55:45, Yuan Tan wrote:
>> A month ago, I posted an RFC[1] to the mailing list proposing an automated
>> platform that validates AI-reported bugs and prepares draft fixes, and
>> later discussed the idea at the Netdev conference. After further
>> development, it is finally ready.
>>
>> While preparing to send this email, I noticed that Roman has since started
>> a related discussion:
>> [MAINTAINERS SUMMIT] The place of AI code review in the Linux Kernel process
>>
>> It turns out this platform already addresses several of the needs raised
>> there.
>>
>> The platform is available at:
>> https://bugtracker.nebusec.ai
>>
>> It is currently hosted under my company's domain for convenience. I would
>> prefer to move it to a neutral, community-oriented domain once the project
>> name is settled.
>> Access is currently restricted to maintainers whose email addresses are
>> listed in the Linux kernel MAINTAINERS file.
>> For now, only bug reports from the net subsystem have been fully imported
>> and processed.
> I was playing with this for a while and this looks useful. Some notes I have:
>
> 1) When you download the patch, it has 'From' field set to some value (I've
> actually seen different values in different patches). Perhaps it would make
> sense to automatically set From to the person downloading the patch (or
> maybe value configured in user's profile)?
>
Fixed!
>
> 2) Based on current state of the kernel doc, the patches should contain
> "Assisted-by: LLM" tag although I understand that might be controversial.
Fixed! 
>
> 3) It would be nice if you could "assign" the report to yourself - i.e.,
> you've decided to handle this and don't want co-maintainers to waste time
> on it anymore.

This feature is ready now. Our fixing team will also assign bugs to
themselves. Feel free to remove their names if you think it would be
better for you to fix a particular bug yourself. Our team definitely
won’t know this part of the code as well as the maintainers do, and
reviewing our patches may sometimes take more effort than fixing the bug
directly.

As for patch generation, I’ll make some adjustments. This is indeed
because I explicitly asked the llm in the prompt to follow the reverse
Christmas tree style.

Also, I haven’t had a chance yet to enable fix-status tracking or import
the Sashiko bug reports for the fs subsystem. So far, I’ve only finished
this for net, as cleaning up and normalizing all the data has been quite
a bit of work.

Some fs bugs may still be outside the threat model, such as those
requiring a corrupted or malicious filesystem to trigger. I haven’t
filtered those out yet.

Over the next couple of days, I’ll first run the fix-status detection
for the filesystem bugs and try to reduce as much unnecessary work for
you as possible.

Yuan

>
> Thanks for putting together the service.
>
> 								Honza
