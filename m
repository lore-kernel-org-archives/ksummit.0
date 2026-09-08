Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6D25328B5
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 12:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788871991; cv=pass; b=aqCdXVdWJnd3NzE8n/VCQlQJWHi+a4FDdhYAy02Rhrp68ldKbA3SrK9sPbLKnF+IWAcMNWNIYykaA7Jy/9vBExN/HTbYuXnxisX9xjvQ/AAnjE1J5ZIEFAIz+G088weTf9CW4QIIM28XQFVkwQkPoFAa6761cUgrTjSJtuih7Nc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788871991; c=relaxed/simple;
	bh=d7DslQzcxG1eXnz+e+GvZ74LAeWUE0h7iu7WbUrIcjQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oTStDqioHc8nyQzRT6C+IX5185VjDQTu22nTURjNZyd0T1qDEORr5rqeDPvWJOOsDdKq4OFFxG24WZz5whlvoYUH3vzHyBqr0PObHsRZG53ah0R84+9Rvkl4HTxWA0l7cieXStfLqGUUtmIOxoA3lw7OIlzIu3T74L91F72dP28=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TlXHVTqX; arc=pass smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TlXHVTqX"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-49cf4f81d86so36144225e9.2
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 05:53:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788871988; cv=none;
        d=google.com; s=arc-20260327;
        b=FbXZ7BrmRb/+tucIQ/UZgSjm2s3Y9S4ZmbafoiSZYBWisihLuzmDqFULeI4pVmtHHW
         wWGncmwfWAo++fWz9ra5vHsESUmorTqOc+p6WOHh/9oPMk0muVZs6PmjeFXXGZA1Pr3I
         lOVG2Z0FqSs7bPj4ROo1Bac9FdKLpq3vK4D8yjwbC0AsHia4/BiZMBR2UtdC8+n1DD/u
         Uvy5Tg/AjevZL106ATMAJ0DtRsG+3bEku5PtjQlhreLTmpIFTRQhbnPU60QHplF0NsXx
         YuKwvxYoqC5mSqtvAX/8tJGe4i+aj0pdgsKp30PB73EGTr3zrAnZbIrmaA0rg6oOc3zX
         wSZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+5COuftF1ZBwDecT/RpXdn6DrWxvDrfZcfSjUnSvpow=;
        fh=shJsB4eIPJoPNbM/5kyB/AoB8oenWb/YFdDySMmnacI=;
        b=LAZz1gjOBpCcyLJdt+NN4WklKg9f6DFRxMSsZsfUI5kvUTCCs/6yBoE5PSS2CDT7S4
         zn2VYUby9vK5H8QFGuYAYz7RR2oxmj+uvPvbiKS0cNSCnca9oOSoWa4ktZ/Gf4428XBc
         o82h1qhK1jAthSdvmt7N22IEXugnuX5j/UovPp6DHe2icDEDGsc6v8VZwmdA4udb6AdH
         tp7J1fCiUGTbE4+va4Iqbe3xyRMC0SVhb3OdI9hkp04frRphOOU9/KYUqr1mKK+Yz4dw
         JmsKvLcrrPGYltNBZQ0ikG1zDKNfpv9u2IEO5Uj7APiAFgXdfvbSByi8XeZMZl8h781q
         GFiQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788871988; x=1789476788; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+5COuftF1ZBwDecT/RpXdn6DrWxvDrfZcfSjUnSvpow=;
        b=TlXHVTqXDkKri+0exD4ly+cw/g4Gm9HwW1sSBhsMkcIp4AjywG/VWEKiMpSWbZzdaQ
         I0ZOe3iymZbmQHdgWrbVat+wro2QyVk1ebNqqNC+7vAKkD8GpZSnlQmduDaG+BHuQk6c
         9cZvpuw6KaQ5eozyjwNSnujzPwJWp6jCSDx0gdowhE2jw6eVtYKWpOAuqSq5p8cKbKoS
         SGHyznMwGwlNpd7MpV3Di3Qrr4Gpv02BjHi+3g8iGm21O2rhi35u75IypKhJ8WLrjrFH
         QnR8HL6jbyHMdtonoxk6zY27gAMxA5Bwl0/VyOUw+GBulRdBduIjSS6yTo5Ea1CXA4Un
         WE2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788871988; x=1789476788;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=+5COuftF1ZBwDecT/RpXdn6DrWxvDrfZcfSjUnSvpow=;
        b=E6pqsSrvBkO8esvjVS4DppSUuGTVdgGWcpdU64pMcK+dk2KmTfOmcjwM/IQTjaV6TN
         amP9rWG2LSAnqE7QiJ0Rl5TKUJK/xKHnQSIRIjETLvDjoUUKHxFo0i8Kq8CO1+nDJiQd
         FwhBr7O2u7lNJjX44Ou1PuQBMyFxrJbqQ6yVAHgtHAIgAt6bGbIvfc2TAX+YOOSdvrd1
         HERt8O2YTXYDjsXPaKRPdc5xTc+moUYguVAWDOLYVOnJsFtoamypy7eXPgcAU0S+//eU
         xy7vvSUh8CXHlaPLNEwP9mdrHLb6gYyWGKbyPdlC5+xjP8o3IPR1SF00oD4J/4ytyZUw
         Tizg==
X-Gm-Message-State: AFuF++mRYr/gLkAwgDtNET6cqAuLWX25S1i0fr2+tNKL8bTc5YntP7ci
	Px/o3FFXsDemYdUgeg9Rhf+ZoqZaVIbwOUyKUE+hEYYeKn5nLhlP5rXph6GGhZsTcsGsbzVUKql
	LUn6X+DkWyR7iQ2udJaecutEthW3pz0k=
X-Gm-Gg: AYBFou1B+WFc/ZIFl09uBuCMIBzRpK7seLsRQoVurkYk2SND8PVWMbDfUSb+7Q3hdok
	mr+971ktE2vYKlUnSCHOBVLtIbVkF2VEnY9apvfnsscWt2gMLd5tQOY0CE3kQYHws/bLqMTx3SG
	kkNE/qEcnGGItUdnlmx2zABGwfYomLCPgxkqRDdVYTAnJaCf5J+HA3IPiCSPaieA1ETuGt1jgq7
	bBTlyoLh4nAcPaCNWIysIJCCzwC9PjkKjn0NBvg4cYpL1Xfv38Q4Tz5HMq9c8E+X0UUKbDbgTLW
	mdD4UKFR0De9RKz2ERnlfywY8DdAfh6Q/++IIOJIlsbZV/ZbK3GKZakl
X-Received: by 2002:a05:600c:190b:b0:49c:fc6c:be12 with SMTP id
 5b1f17b1804b1-49cfc6cc0acmr227020835e9.24.1788871988240; Tue, 08 Sep 2026
 05:53:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh> <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
 <2026090825-scallop-pushcart-830c@gregkh> <CAH2bzCS_LHff_RLyYP2bKAmJOZEJNBJyBsZKnG6E=7JRDLjLng@mail.gmail.com>
 <2026090837-buffoon-satisfy-4de3@gregkh>
In-Reply-To: <2026090837-buffoon-satisfy-4de3@gregkh>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Tue, 8 Sep 2026 15:52:56 +0300
X-Gm-Features: AcwNN1VRvDvbu5NQL9NkTehJ7Hnpv_mGq1gnpU60Kbp-bNMGqxg7JMFJNuB9vhk
Message-ID: <CAH2bzCTMGPZ9q4Z_HbkoVyhvtGAQ595YOGUGrfNigRqvzmkCqA@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Greg KH <gregkh@linuxfoundation.org>
Cc: ksummit@lists.linux.dev, istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Sept 2026 at 15:39, Greg KH <gregkh@linuxfoundation.org> wrote:

> Why are you trying to change a process that works for 4000+ people and
> 550+ different companies every year without even a solid real proposal
> that we can review?  This is baffling to me.

The code will come later. This was truly just an attempt at speedin up
the interaction.
And possibly finding interest. But I acknowledge it did not work.
I hope in due time it will be more clear, once we publish the code, I
won't insist now.

Actually, I want to apologise if this was perceived as an attempt to
force things.
It was never meant to be.

--
thanks, igor
