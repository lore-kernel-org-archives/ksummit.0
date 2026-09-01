Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFB446A5EC
	for <ksummit@lists.linux.dev>; Tue,  1 Sep 2026 07:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788247903; cv=none; b=C+ATUz7XO6qAFRl2wVpZEVU1cYZqPUjMY0jSEZArpSPXfgAeTo6pBQ2tpy/uxbiQaumEUTSHAWDLzVIbr1nLEthpogeRE/mS7RVZdYhR5c1sB6jZ8276VG2wr6tvU+8hWZuPMstO0Y+OAOlPfL1k7eW+emGUNXc4DGfFQwpisO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788247903; c=relaxed/simple;
	bh=zGhJ9HaYyZ7K+ijAn1Ufy6dOppFjBPbx8iBoOPASPKI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cHGeEgACAjoFNusviQxyy7hvDEahvb/1e/sZJMwkHcLSsqspZgSytAXib3OSYs2yWkDDUQlD6t2r5PwHckRTSSUmpG/81icstyPt3qBFc5/ipr2OEFAPZFZg9rvgg1R20BTuSHneCW/kFS8mh7b+L/XJbOaCaJXsDwCCDnEfgSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=RzgKZERY; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="RzgKZERY"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1788247900;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=996Do7cli1wrzMhcoRVI4Dpnoxul8kFICpQpjRm0D38=;
	b=RzgKZERYlM4x/o0dIbfSWC+joLNqR8x+fJ/CuTIOR00iJ7eIRrx5Qow0ViQa77BjtP/4q3
	95ENdDiS2xeBFc/FR4Vb6OTt806vR3zH2TaZE2Nbo36W0LZgCaK8Mkjqv0ntUKP5qFDP4z
	dhIBNPRvIeduTfd5y2J7n/6L0gCZxH4=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-55-d02N1t8_Oc2T0V-V99k9-A-1; Tue, 01 Sept 2026 03:31:39 -0400
X-MC-Unique: d02N1t8_Oc2T0V-V99k9-A-1
X-Mimecast-MFC-AGG-ID: d02N1t8_Oc2T0V-V99k9-A_1788247898
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-49ccf17d3b0so15569975e9.3
        for <ksummit@lists.linux.dev>; Tue, 01 Sep 2026 00:31:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788247898; x=1788852698;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=996Do7cli1wrzMhcoRVI4Dpnoxul8kFICpQpjRm0D38=;
        b=OwmpnNlGtUwH5a3fHQ2lxKgtUOIvWfF9Ezph/HaqUjAj+jEKKH4+QrAogB+jDSATaT
         8GOnfFYucZRi5dt9/nZzzc1/OHdvY4rwv/yUXCmTYRwJYF+DMQo46ieM1d+5+AbpqJJ6
         ePUp77N7YHzw+M5KRlagQzE90MoadQkw302Rb4Udq6Z8ICfxWX8Sy+WrDLxbJ1KmEFcG
         yxcTn024PRr60uWOxwD8gjun+Dx3SSK6xr+i4jaIDe8BkP7LyuFoyESEVZeTrOAlNozG
         y0o3JKoZZJdvAHv6olOnDEIbPmMTo/2a3M3pJRtQiOxFuthNxEJTCDVMXxHDcwUsXGcl
         XVHg==
X-Forwarded-Encrypted: i=1; AHgh+RpRuMAkcU5vU2De8cU0EaLTQTyUlm/lnGxWr92H2bCXStQD69NaecLhBIcNvTTZ5YnHDAejFM9G@lists.linux.dev
X-Gm-Message-State: AFuF++nkBtNyYBLnq9JGf34xa3aaFgR58k46/1Zrm/PHXUJgPq1oL5qH
	hY8V4ZWcf7JkoEL72BK//IaYD7BQduRsBxeFH1K3b/LcEA8NrKYEY7xDBfUmuAwam/FtygLNvuN
	bmCf07khH680j2KY9+VHsiCF8lz0JOzMX5kUlLwQGpF/XcqmH6JVX88/hCzIQ8OhLxDg=
X-Gm-Gg: AR+sD11IDe6c3zsIW0ZHPEpUwQlX+5ljXULmXFcal4Yb3CjQt3Ni6HR2vsOdd6uzlK2
	nSsuWE0FTnNv/N8XfUXDYNZd+RFETgZvbkQ6xWXl/n567VjeuWsoKa8p2QKvsEaGs/VbRH0dP22
	QBNG5jeEK0nAPS/ss69CWiu7oYnkdGb16Zd0nS/Z3n4cnA4ph3SCtOOhlud64T/heCpzSFJ8zOc
	oxpNS0ueH6oV6xQ5qfrd+eOHaGSTeAhmhD7AqvX9mh/YAEkRT7tYRq1CbFLABncRmY8uOEsCDmQ
	khp3DvCsakHbXZHZJClkTX16D0NPF3XOfl0DAzkh0Gjwrgg2P855PJ5CF1zeJNzV0XYugKc2lp0
	ziX9s8R8VkTHC5qQ3ZrmFF0I+6ABINZbtinVuIgf7BfdswpcbtwkEt0ZZIxg8GFV4p+SuK1drlA
	==
X-Received: by 2002:a05:600c:a114:b0:49b:9438:7785 with SMTP id 5b1f17b1804b1-49cdc429f02mr92591485e9.4.1788247892922;
        Tue, 01 Sep 2026 00:31:32 -0700 (PDT)
X-Received: by 2002:a05:600c:a114:b0:49b:9438:7785 with SMTP id 5b1f17b1804b1-49cdc429f02mr92579265e9.4.1788247886584;
        Tue, 01 Sep 2026 00:31:26 -0700 (PDT)
Received: from [192.168.188.103] (ip245-45-231-195.pool-bba.aruba.it. [195.231.45.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cdce10f08sm49011395e9.7.2026.09.01.00.31.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 00:31:25 -0700 (PDT)
Message-ID: <3b647dc9-6653-4a75-b0f9-d934337ac2ef@redhat.com>
Date: Tue, 1 Sep 2026 09:31:24 +0200
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [ANNOUNCE] A Syzbot-style Platform for Verifying and Fixing
 LLM-reported Bugs
To: Guenter Roeck <linux@roeck-us.net>, Yuan Tan <yuantan098@gmail.com>,
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, workflows@vger.kernel.org,
 frankw@nebusec.ai, jhs@mojatatu.com, ksummit@lists.linux.dev,
 kuba@kernel.org, kerneljasonxing@gmail.com, roman.gushchin@linux.dev,
 jgg@nvidia.com, mchehab+huawei@kernel.org, torvalds@linux-foundation.org,
 ben.copeland@linaro.org, gregkh@linuxfoundation.org
References: <20260830115546.3942129-1-yuantan098@gmail.com>
 <98d4603b-0559-46ea-8b76-1f0245b3b266@roeck-us.net>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <98d4603b-0559-46ea-8b76-1f0245b3b266@roeck-us.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 63JtLw5-7Sgc2-mUwGp69hQstR9MODgaJQbS-6-CK0c_1788247898
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/31/26 9:08 PM, Guenter Roeck wrote:
> On 8/30/26 04:55, Yuan Tan wrote:
>> LLM-powered tools such as Sashiko and Claskiko produce a significant number
> 
> Is "Claskiko" misspelled ? I don't find a reference to it.
Clashiko is the "informal" name for the sashiko instance running on the
networking subsystem CI. Since it's ongoing under constant improvements
and changes due to a lot of effort from Jakub, there is no formal
documentation on it.

/P

