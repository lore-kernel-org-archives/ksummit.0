Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C5D3D1707
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 19:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=67.231.153.30
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786130130; cv=pass; b=O8l4UeH9imaed+I/aBjCDCbQLZyeraip0z0JFKiCHtf3WMc0xsqbJu/81VcD/JuIawBhCZr1gELH0hSOsU6u9Mps8v0vKSd9iCCOaV3/hL2hvVkb5ZhTuluwOPprKuC7JzvrFPWq2Ep+7M3LQjSLDYqAlrbaafI+QAENx9LTOu0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786130130; c=relaxed/simple;
	bh=9YvPzWopQogf1WnQ1mb54m32WSY/77AXjUkS277Y3Qk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mCbXE+Z4tHSBzgCuquKxXwA990l0VKahGjN0N3NfXHcAhcx/SFoDtlbkNtkGA4b0ozney2u6nfMgpv8erZXCwpR1Evw/SV9gw1xPI6rkNOtMDZCQmekQt5wKDzI7x57K5ZSBWdny+WDxve3wKk2Dpmsx1l+2K/Ub4Bj2dMZSuWY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=meta.com; spf=pass smtp.mailfrom=meta.com; dkim=pass (2048-bit key) header.d=meta.com header.i=@meta.com header.b=G4x/JZ3H; arc=pass smtp.client-ip=67.231.153.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=meta.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=meta.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=meta.com header.i=@meta.com header.b="G4x/JZ3H"
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 677Inu2k1685932
	for <ksummit@lists.linux.dev>; Fri, 7 Aug 2026 12:15:25 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	pps82601-s2048-2026-q3; bh=34pGulw0RmuVZ3NH//15xEh6eVWSxWAx1HYJH
	iIKyDQ=; b=G4x/JZ3Hzbl+vizp3E7NPC1CH2ekKkwpZpuVO5gAdHAjqLo1X1Pai
	z9M4r3mYu5UIo5sXCUoNkCIYxrY6WwTslc0Lg0vHLN1rNtCFr84Nv9N1W/actWiq
	lTpy7EFPESJ6ajr+F27nB+KczorXwDHSkgrzs9SuEzbhoeRTXsYVBMdNXynnD3pp
	8thYkaTomX3bv2KVNgUynJ21+UxrQubGzcogW7h89rtVEE3Hy9ECAlwtyEdvc+cb
	V/6N34G30UXZ2HD8Upo1VdF0fljpo6EsqZp24e6obXnmxC7ZcCLJmEIbWnZOn5I4
	+eEUSW2DvheVFt4MPTVN/vfbnB/jT8OzA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4fw67umtux-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <ksummit@lists.linux.dev>; Fri, 07 Aug 2026 12:15:24 -0700 (PDT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ce7dfd33ffso45064215ad.0
        for <ksummit@lists.linux.dev>; Fri, 07 Aug 2026 12:15:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786130124; cv=none;
        d=google.com; s=arc-20260327;
        b=rbs7dH0ABe8KP1sgC+EgNX3l9dHEHqv0mkK+gneiwW8v4YHJHTlFLy+LtOG1ZG/uEQ
         WKvpdCMcAMrcjgz6izjx6pYolnmEMU47IwEqt1FzkswzFG3wS0C6q9v4hCLaqVsMR2/4
         daF84+knbhzxls06hxk14SbGHK2uWQZ7kPNyXBUxwFN4igO1UGeOyVBsQJFSBO8SzvdL
         PC7LkpyBiUI7q9oktTWW6bnoLIfU/EnF+pxkudccH4qnV1IqgnmPMiyCHNLGuZ7aRVvh
         Zji9UAZKP6Z03uTPRT95oZlA7YWB3ywfVXhUzzTz5kCIkRSWou19bNWmZjmyDx1HmUV/
         XimQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=34pGulw0RmuVZ3NH//15xEh6eVWSxWAx1HYJHiIKyDQ=;
        fh=yRDHpKJLtcCAVeDRzIxJCl4+h1aTVdFKElKj+iyfYUE=;
        b=krwd/N4l4kpFE9X1HBYetkE/nTFN9/I18wS4zpjNZNsZXq6XTQ/RjJm67fsPLQYpQ8
         sEbSsA0z6JtKCObTW5GJ6omWQXfjNoqn5BOOdpTSninCwg0AN/czL4gO65Im4SgE/gck
         vSufLyM6Vjy8gfKgLce6u40xn4IzSEVdFCtwzrrKdMIHpkZESTEBHMqpi2MtYiiSRa3a
         ciXWLFNM+DKfp6pD7LmwXDut/SsW9VlwpgR/l/Rrfz311TBf3zo69MhkicaO3CJNHEma
         W4YN6p3iS3QD9HzjHFC6sJmjSzdIwAmPE3rJzsBn0vMKA2GUsKtVwHElGJ6TTFj/uDXH
         18sQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786130124; x=1786734924;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=34pGulw0RmuVZ3NH//15xEh6eVWSxWAx1HYJHiIKyDQ=;
        b=Jb9nysd67wW4xbyAeZWrwhSGEN+NMEfnNgdCPvbrWji8MjAEkmVYgqFyZFvyi473LF
         Jt8AphG1CiDKw4CpiH/a+JP12KwJtuUOgCBk9W1wo6hAx78s5pbNCo8r4xJdUpsiq7KR
         Io/LVz2OxRJ+NZRN7cMUpc9da2Tehhj1sQELoX0DpmTC7DDccW6X1HkveAiPhEEiSkff
         tWXKLSGaVQiiJbIM4zWGdsQds7iNNPP5GIrRGt+1sFiMb4/dNh+Zm1/gOMkdJdWKsxym
         3dSnehq7Ppb8GmiPzMiASO/feQfgPKuTsKoNU1I32XZSTcClUHH3tdBxQ8jvHjaI9dQD
         YxMw==
X-Gm-Message-State: AOJu0YyUZ46f6R3Txdzf75Cmh4QNChCO3ffNvPXG7MrxzBWaQyqHU0/8
	K5E3yAZndRDz7eZMSAe8poDS5F6DYUwuR+bSBlZXgeS6lXhJOy0A9/77hiqd9SIen1ubDXHY70g
	GeDLbnNOzaME1MCT2nnbLDi+5WLvVpGkQy8JvyzJXpa9bxKqg/sM3RR8y7+84vgR5yHcz/7z5t9
	qjUVUi6USSJSShr/DmTPWg5NrtyyNoTKK9W4FdE5tA3ms=
X-Gm-Gg: AR+sD131tQKtXfFUvxhKcwIHZavpehmANoUI+v4BMLAkdSdQpFPZ8bWy3l/7bJihy4S
	PLAGBQtLSU2HuP9Ura0Q9dP3TNgB/6lyRr7SDOJlXJE4yra3B8u8ejpHZ8lnV0miwgny4Xw5h+5
	lXK16ryITbvbfwdA8xXX+ZNPKaq4PPRaG43sl8JRxw60a1P/8r9x1FdMHohx4=
X-Received: by 2002:a17:902:e84b:b0:2ca:e5c:7fcf with SMTP id d9443c01a7336-2d0ca7b5490mr260945995ad.3.1786130123777;
        Fri, 07 Aug 2026 12:15:23 -0700 (PDT)
X-Received: by 2002:a17:902:e84b:b0:2ca:e5c:7fcf with SMTP id
 d9443c01a7336-2d0ca7b5490mr260945455ad.3.1786130123145; Fri, 07 Aug 2026
 12:15:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
In-Reply-To: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
From: Chris Mason <clm@meta.com>
Date: Fri, 7 Aug 2026 15:15:08 -0400
X-Gm-Features: AUfX_mzByo-EVZ2H-_o6bE0wYKIL3ZARBo_6IyNYCttcpw6ZsY2W9OmY_DTZmoM
Message-ID: <CAMpPgXX3qgFrHqCKWWh6-bJw_6zJMgRVixbhm=97nqiMkxe9CQ@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: 8IJzGXWgp5Eij9WK2_qXtKGKdWu6y7Xh
X-Authority-Analysis: v=2.4 cv=PuqjqQM3 c=1 sm=1 tr=0 ts=6a762ecc cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=bS8LA-buI6Chitx5:21 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=xtH7KyWI9dI7BmFOsl-x:22 a=bLk-5xynAAAA:8 a=adE6lQKw31B9JmVAWrUA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=zSyb8xVVt2t83sZkrLMb:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA3MDE1MCBTYWx0ZWRfX9uN9vTI49DtF
 Ue4uju6VMmJxN4y6CEV9OGuiOavl7csCWIgi52iJ5qKn3flYjhW3GCjs0RuMkTQmPIvOQRD4O7a
 UK+YuoX9lckcNm8kSTmZzyKxf5xztj+uo6QgNjxnHdnLu+yTlMcDjSj6lluMlpQchgjfmSlltPd
 cxatEIh9WgfEEijLxcQ7MiQYGnfsmJP1rLJEwJmetr0LmtX9MxMnfnJ4BwqTpmIRfQPZjKkVixV
 eJ4lAL8Sc3+T+tbur4hFadI2gJ0+od1IK9J9o38w1kHmsmwq+VW1zH8h0U8J6Y9995hRLD1gsYS
 5r/z++NEt9Iw0lDv21rKVjjR8VWdQFU4Oc6n5XLZDfmIQ4X4TlV66F0A/bOTjg+79hFmR3P94mt
 gClTZm2BXGwOrpzemQudIUGA9sOeW4SbJ15sSn4xJK//H+skWwwbMPHzj2vEN7Riq2FD1wMIPBm
 2IJtpvAPOotzCl01dTQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA3MDE1MCBTYWx0ZWRfX1dGI+YY48y0j
 CU5qyxzdFY2Bs/u4aYxloyQSoyM8xiQHfVJGtYoj6aXS2+J2Qs6w3fPzoWz1KS5QSy59n7Rq2FW
 7pqFwAEHAvpI5LYLZhUtQLh2wDBAv3c=
X-Proofpoint-GUID: 8IJzGXWgp5Eij9WK2_qXtKGKdWu6y7Xh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-07_04,2026-08-07_01,2025-10-01_01

On Thu, Aug 6, 2026 at 11:35=E2=80=AFAM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> What got me thinking about this is the obvious funding problem: MS is
> free to attendees, but only had one sponsor in 2024, none in 2025 and
> is on track to have none this year. Since Plumbers has a reasonably
> successful sponsor model and the LF brought the problem up in recent
> conversations, we thought we'd take a look.

[ ... ]

> without
> sponsors the LF is eating the cost of the entire event which, based on
> what Plumbers costs, will be somewhere north of US$100k.
>

Lots of removed context, but I wanted to focus on the urgent topic
first.  I was concerned that the maintainer summit might not have the
funding it needs for 2026 and beyond.

Before twisting internal arms, I asked Angela Brown what MS costs
today and whether the LF felt short-term or long-term structural
changes were needed to continue supporting the event.  The answers
were ~$25K and that no changes are needed for the Linux Foundation to
continue supporting the maintainer summit in its current form.

Another bit of context I removed (please forgive my paraphrasing) was
the idea that MS sponsorship can't be justified based on the outcomes.
I don't think this is true, our respective companies frequently fund
internal leadership summits.  We'd need to be intentional about
finding the sponsors, but the price is fairly reasonable and the
engineering benefits are quite high.

I think the more interesting question is how we ensure MS continues to
provide value to Linus and the maintainers.  Hopefully we can answer
that first and then figure out how to fund things after.

From my slightly-outsider point of view, it's a synchronization point
where we can pin each other down and resolve long standing debates.
And also AI, we can talk about AI.

-chris
