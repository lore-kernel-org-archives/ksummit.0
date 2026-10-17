Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233AA3451DA
	for <ksummit@lists.linux.dev>; Sat, 17 Oct 2026 18:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792262326; cv=none; b=mkerhG7J4XvupO/5WBzGhf/lQAbAKU3hDu/3PNMyA/hn9vlrqxxai6jGfpzBwAAYUUXnFnVWx+ewIcO6Z8IOulmOAoLaZBBAqoG9E754/6/wL7wG9U3p/rmtNKUAEZeb9tteHHM6C9PMlCEGQg2g0gzztX8FY7jNikA1BvDKjY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792262326; c=relaxed/simple;
	bh=79tqLUFyKpE7YoM57Gxwf++8MVeImdZjeg7FvSeXsRc=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=K83Inj9JixwG/UB029XGcfy4QsBaCBaNyA4oJ9grJbgF/q9FX7PLBZZH0TH7M3Mp+JUommjVGqgMF0+mEMsRgLDX1ImdgGaGu/PykwpaITXb7jxfLiy+7pGXEk+C9ayiqUSQjVrfqVSu26OErvIKULPIeTsG+cOelDZqge1jaWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JX4IdfM9; arc=none smtp.client-ip=209.85.222.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JX4IdfM9"
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-99059bdcdeaso182821241.2
        for <ksummit@lists.linux.dev>; Sat, 17 Oct 2026 11:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792262324; x=1792867124; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=SMJTGqdVFrn4lVp604NAk8b863daG8E7u6qd/4WK5w8=;
        b=JX4IdfM9+9qy5+exOHzhxw6PsblMZC2xJjG/RDFXTY8mcFcNe4wO0v1F+J1/M3yYVg
         AVGhHaKYc/fDRLexgirZLTXGMIciKZ+mtUBqVVNGg/IOv5QcREohgLd0AxoaMcFDRAQo
         IWTBX4kHbFe1L9aLn7K/TGvTR1KePzZSNpqCKcxR0HU7XiwO2+KPCPJqLrQqO9/R+b0Z
         NTBNAPDnO/bFqW02AUMEpl3TiwkkZUZRsapLmWVOQdQaM7ECr6WksiBBOPL7edQ5RXUx
         Uw+8FVs0EMjffVvEb8HX3rNnnFbfplGdE4Cnd6M63YZilt/t6T+avSq9tqkCXnjv0NP4
         KMMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792262324; x=1792867124;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SMJTGqdVFrn4lVp604NAk8b863daG8E7u6qd/4WK5w8=;
        b=f4xfYkxKtO4VqnVBVeDlzMJcyHSMsPTk8X8pGLEUGzxrbwfxBlorot8RpJ+Iy/ZOLA
         RBOhq5f2lHnb24y562lrWAnhJCsymbRJr541KHqDo6DUtq6l8Og2zW7jQxEoimZqkl4g
         pVjgHQDAuBKmyt7icOXtgi00hXX2jZar2v4b9ECa4rdvmZHtaCQBcKlUirXESjSMfhyO
         pBrlxfY67q521XCTSEpDoffMvuc625OfhbZHpgWLOVunsTnX30Nsvd1PAJaaLDL7tsiu
         4SmChoAmbGJM+lbUB0WmZYTirz18AR4tjA1TWm46zDfpfCtTX+HnR1YAscFkNfGq3IYM
         j5Ww==
X-Forwarded-Encrypted: i=1; AKwUvBzRSMhpRM2LbNYVs6bplfMSf55dlPAO+BGotWLdE3v3ydHn7HfYydUxuwxmNnwYZhV6yNfG43iu@lists.linux.dev
X-Gm-Message-State: AFq9FYKzyT2frwNXxXxbOCYPUxFexZIh2NrjGqA+30xFrLpeVWbsaeCP
	peYSuOKJ2GwulVKMlNoMW2Jbi7JEB1PwnfJ6F1XJ8utDCFKrc6JiPgAg
X-Gm-Gg: AYBFou2NqL1IzOefs0Kbw99pEewX0dDUVRyfKdWwauePOgbNfkDGJOBsE44GCPJxZJo
	3OF1MRTcyQhfMRQe3yF6VIMmPeFYMZI/dDAKKlRngIqAmPkOmedJXVC8WDmqMXXLm5Z1LH30ur9
	SE8bz7yMk+m2inIln0+BJ1SNp8eV6qCqj87lY6HGt86/hpGIDZ2AKLcjYhuM+6a9hbZ8nFT9Gsl
	uJCW7Z/szuMrwe9YqyHo5b+u33IOu1HmB7IXiydA7JdUTF3dL8X5J1SrzCUVDHUrZjyPQLy6k42
	v/OrJy/5dxi/X14Q+uDyQPqakGDhyhbu7VzuX3kvtyPIi8iUxtJkherNdoeMFMw60l9YMoC5pQl
	qQ/UH/cpasHjq5VGU+Gh8Uho4o1KCGYsqRVfsggu7RE2R2Yg6a1lv6vvnVDLevZqn83uGe5gfRR
	4jERnjQHAnPGwPO5lVkF1yBYLKfW9LvMNQgxJrvQU1HYZkivlLW/OtJ6cfY7ieFe9WYG8iMLfvL
	yZ8qmLdon1h
X-Received: by 2002:a05:6102:26d1:b0:7c3:8150:83e7 with SMTP id ada2fe7eead31-7cc3691ec66mr783271137.9.1792262323828;
        Sat, 17 Oct 2026 11:38:43 -0700 (PDT)
Received: from ehlo.thunderbird.net ([187.19.172.126])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-990835f05c7sm4632625241.6.2026.10.17.11.38.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2026 11:38:43 -0700 (PDT)
Date: Sat, 17 Oct 2026 15:38:36 -0300
From: Arnaldo Melo <arnaldo.melo@gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev
CC: sashiko@lists.linux.dev
Subject: Re: Patch pre-submission to Sashiko
User-Agent: Thunderbird for Android
In-Reply-To: <DM7BL6J0WCXU.1I38BKL4RJLFI@gmail.com>
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet> <DM7BL6J0WCXU.1I38BKL4RJLFI@gmail.com>
Message-ID: <49D0633D-3576-4F42-9934-85663D11EC15@gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On October 17, 2026 3:20:47 PM GMT-03:00, Alexei Starovoitov <alexei=2Esta=
rovoitov@gmail=2Ecom> wrote:
>On Sat Oct 17, 2026 at 5:28 PM UTC, Jiri Kosina wrote:
>>
>> [ in the spirit of the concluding discussion at this year's maintainers=
=20
>>   summit,  I'm using this list outside of actual maintainer summit=20
>>   planning :) ]
>>
>> I have just received a v1 to v11 patchset submission within roughly one=
=20
>> day timeframe=2E
>>
>> Neither myself nor anyone else did comment with any review feedback,=20
>> except for Sashiko=2E Which I believe is what triggered all the immedia=
te=20
>> resubmissions=2E
>>
>> I don't think this is sustanable=2E
>
>I think it's just fine=2E I encourage developers to keep the spam going=
=2E

Yay, agreed, it's not like before AI people were reading all of lkml (or o=
ther voluminous lists) traffic, just ignore what clearly is a conversation =
that now happens way faster than in the past until you see it calmed down=
=20

The problem was not getting feedback at all, now people complain that feed=
back is being provided timely and then that people are responding to feedba=
ck in a timely fashion?

>You can simulate github style squah of v1->v2->v3 in your inbox=2E
>Ask your agent to monitor inbox, archive vN when vN+1 arrives
>and summarize v1->vN discussion=2E Then you'll always have the latest
>patch set to look at and a summary of what happened when you were away=2E
>Then sit on it for a day or a week to see whether respin
>cycle has ended (and bots stopped talking to each other) and then
>do a human part of maintainership=2E

+5, +1 is not enough 8-)

Fight fire with fire,  more is good, if it's too much look just at the lat=
est patch series version when you think it slowed down=2E Or, if not allerg=
ic to AI, use it to summarize the previous discussion, human or trained on =
human data one=2E

When not understanding about some specific part of the latest version mayb=
e looking at the "churn" will provide all the details you need=2E

- Arnaldo 
