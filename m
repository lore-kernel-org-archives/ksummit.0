Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1234E530E1F
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 12:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788870364; cv=pass; b=qO/MkZhwOgm64LO1T7WtfUzXcTQR3Ko8qKkCZzxP5eQVmhMSxiA8qZl1WLHr2rbS8cJA2XQH1GGcmcGRepbOTK6CePj3eksb9omZLdvXfJHY9/Q/49cWP13zMwTeHL+gwpRb3tL7lgFyJ71tyBUuFW4JqWH1Xr6jCQvt1+Zw1kw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788870364; c=relaxed/simple;
	bh=3PvlYOn8iNQ/gulsRqufcYgOiS2UQB0zI7U8L+D3MGg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uOTP1LaghPa/jNC8Sa8tSAvDfUGZKt76dJeJ5sJyJAWzHImvE91gcEJdNh1lAM2YDiRONcqMT5q9Fnb6a5KpVc9bDyJHbiA1Hrk+4Orjb/RfXTaW/BAeMwt5I2A+VuBXnudfWUCMeNe1fPV7yAUjYkWqQGsFgsuofZgeeuE8ejc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z+wCJYRF; arc=pass smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z+wCJYRF"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-49ccfbe062eso43995065e9.3
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 05:26:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788870361; cv=none;
        d=google.com; s=arc-20260327;
        b=HUdKCJ/1ExkxfdA9lvNKQo/FWITryOaQVtRtQDrsNyWNR22vhZkuxdtYtlPhHXycnb
         Z4IeH3ClKYz7YAE+hfmhWW0uxnsLRHBlL3fTsTU2ciqueJvyeMlL3seeoXFFjIMiPdmK
         hoIxaZICCUfZRgZsxy7iGFDginMLWMYfisC2iYAvF9FHb9h4MMoKc5+gq1eI8VtSCDeq
         Mwho+5v81JcHIQ9UGxjxLn2TUiicuynbN1x6XhUH6pM//YGlfpnyq59Pz6/7er0mFm1L
         HQffcgKO4HvbOqsaL3YXXC2EdZO4KavBFOT6c+5zWRpGlWTQydzCg9TbR8NVqK553mJj
         khfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pDE40Z8YoW4Z673NQYQZkYQ6TKXgKSNFRCdw39RE5F8=;
        fh=shJsB4eIPJoPNbM/5kyB/AoB8oenWb/YFdDySMmnacI=;
        b=VeTZqNJWdBngAgOvUon1Sycp8XFmcyVUMijoFDIQQEPnW5LidC3cGQJM0zUSi50CN7
         jCb/Me7FX9dPhj49kGYopr8xwBZ8seGY8hZPfDv3bgvhAacYCKv5D7UGpD2pEanP84PO
         KIVXfQi/NTzls2wH0tht+3YnoGAZmndvLxBB1y4KiLAsYdLtE22H+eCjIxlTWdL3AfrG
         iSZDQYoro6LEh4R5t9YAD1mzaq5ZkwYlW8o8Csi4PDMskMe0wBydpB0/1Gek7OATDxXs
         dsfyHVXoWLS0aC7rxP6ulBXWW/eo4sCK3UUkvrMEOgc2st5G8PRSrbyqfZHDKbeEw9jm
         ZI9A==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788870361; x=1789475161; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pDE40Z8YoW4Z673NQYQZkYQ6TKXgKSNFRCdw39RE5F8=;
        b=Z+wCJYRFM5qGWI5FkdbDBFC4QlIB7SIiaO+jbH43VcpYlWXmPp3k7Ip2n2FJs/5TN2
         4Hbh6lxQipJ4P6Gln0ImtzN4TwJ9qXveF+2/zSp3nju+/FTTgOzdmmunRR8Q4EVAPPUc
         Gs8935cABgvfJomGNxynp+waq/aSmgmkjwEs6sbUXjDlmMmeU0ii2n8uMBFZB2z/UAx7
         KTau3IQ08eMfkp7JjZNxLZEREmOk7IYWMti8pMCEPsfctbpaDrFU6vvV+5ZI60ASqk2P
         e8qa50VRq+MNJz6YHJ90TopjIxgfNWp/ZwCllYzRUehIVRAyzmyqOJpr7nKXI+T4YFrG
         YoEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788870361; x=1789475161;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=pDE40Z8YoW4Z673NQYQZkYQ6TKXgKSNFRCdw39RE5F8=;
        b=LZkQb5D6KzJ7Fp2Dq1pQEJvKq44kiA48Py6IGypsvhBDn0eW/Kt6BQ8u+jNkGw9zZu
         10n7wXrbLKgQ0wH4H8OX3rLdddjLQGjogT+6VxfH5BA9CQLvJHppYMNg3rhRV6sJfz5c
         TGWyiGBjqjlhxNh5GQolfYxiCKRLyeC7C9f89k80gqHFBS6dXvFdIH3LLFugcYUlcooq
         t4V8rKupnlSnq7CwiiYWc80wB3/sD5s3mk4oF0BDiocW2DnOLExixCTJzOV2rW7pCLFY
         EgOjjE1Kc/uj8BhcNEw4071Bas43Pg0lpC6uwvZW4viYWnmWMybLuI/3j/vVrCi/rx7S
         QIAg==
X-Gm-Message-State: AFuF++k89O0iAAT/UYX/gVJkgiPjOBHu4eHkkR855jhlANRZZ6Be9wmr
	elfTtZa0ps1qoK/0JprgsQy2hiSgv2c//yoGZ5VOI0K2cZvildsciHGkjERyV8UsxJhbhq42ErT
	/b9dN9MF3kycpVSm8UUn6gw9vVOdJx78=
X-Gm-Gg: AYBFou38Q8CBuEmqlqlD1pWBVxLoDlJkRbBcXak2ucnmnE2U3nbnCj1tNU+aqZm8YTi
	S/ONyFBEORsxaguH2Eqk4Qf25XxRUiGGiMV8qULjjqXfJcw0lrHDLPFUppDqcsvopwF2xAIY/X0
	VWxdmufCSMS66S/Olqpt7Sf7RaarMY/WFSoLzt7yiOvIGvjPG1GgQZyD9Z6XLkqdybS35PtQ2zU
	/cP775TIkl2ujlqJLG0Yf9RdGHkUixrJexJNODPpvAvEFLwRg+OJgRPsSZ7BhFEozj+ZcnprKHo
	0J7g0cPr3tX2AmihaT033VHTi7DzKBRaA2HQb5eOdpIQ0A==
X-Received: by 2002:a05:600c:620b:b0:49c:fa20:cc07 with SMTP id
 5b1f17b1804b1-49cff19cbf4mr225954715e9.30.1788870360897; Tue, 08 Sep 2026
 05:26:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh> <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
 <2026090825-scallop-pushcart-830c@gregkh>
In-Reply-To: <2026090825-scallop-pushcart-830c@gregkh>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Tue, 8 Sep 2026 15:25:48 +0300
X-Gm-Features: AcwNN1VQrDqRFdP2xhELOYC-LBfPi__BigLtRnKsoRrGQFW9VUfWVhVjZ6T7BnY
Message-ID: <CAH2bzCS_LHff_RLyYP2bKAmJOZEJNBJyBsZKnG6E=7JRDLjLng@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Greg KH <gregkh@linuxfoundation.org>
Cc: ksummit@lists.linux.dev, istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Sept 2026 at 14:54, Greg KH <gregkh@linuxfoundation.org> wrote:

> You are forgetting that "you" are "upstream".  There is no us vs. them.
> If you want to use Linux, you are "us".  Welcome to the community :)

Decisions about what gets merged in the Linux tree are taken by those who
are part of the hierarchy of maintainers. And, ultimately Linus.
That was the intended meaning.

[...]

> That is very very vague, sorry.  Just send patches showing what you have
> done.

As I replied to Ted, please take this as an attempt to find a faster track.
Having 40 minutes or so of discussion and potentially saving months of
iterations seemed compelling.
Even from the perspective of whoever might want to review it.

> so if you have changes that you feel are required to meet your use
> case, wonderful, that's what we all do on a daily basis.  Post them and
> we can work through them like anything else.

While it's clear the value put on code, I have to confess that it's
less clear to me
where/how to initiate any discussion about the kernel development
process itself,
what it entails, and if/how it can be amended.

I have tried to explain the constraints we have to deal with.
While I'm not expecting an answer, perhaps you can advise where to
bring up this topic?
Clearly you don't think it's suitable for ksummit ;) , but then where?

-- 
igor
