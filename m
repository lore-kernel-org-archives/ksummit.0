Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7CE5519B1
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 13:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788872603; cv=pass; b=BrIGWIzLJyqNnZGJbfF2xpZp4iaxY0oGcYYgfxNZJtqtAbHcyfbFxnQdj8oZDtI2u4AXDq9KFLUsLh/SKSacLHqawRmZryIEyAtBMI2EyvjfTuySCjgjCOVUy/OHRFdDNlNjbZFW0mIZVhWGnH6c1o+0PnUfzjB4giKWeUrwjaQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788872603; c=relaxed/simple;
	bh=wi6U/1w2Ghoe9o62Fp6jJBB6ALIJKeezhjoEIKmPRYM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=baeYc1lhke70oBdbo/yTQxjSnJ6mmhIYJXxQ8QZ2vIeP/FScr8zwDxsdzc5g9JQdsv1JCx+GkRMCeoATaY2zNsFuxLI47//Q0DFbgRBPb4rLgixz/mpB9OCnC1/Tn6BdwBlRFo+HMcPQ9U/QYy/L1dqQLRN9QVz8G+Nfvy8hAQw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QA/rr0d2; arc=pass smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QA/rr0d2"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-49b8687630fso39349345e9.3
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 06:03:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788872594; cv=none;
        d=google.com; s=arc-20260327;
        b=ixPJIGkh2PKjvqNXq6cAHUBhEu7eRcu+opKQSjmvIGlsAhczZzrJ36jrOw7StZpKy+
         DGeDAIAoBkyD9hnAyr2Htxcc97maNeS/63giek//LE57Z/ORLYH2iGPz6FS82xaS7Isz
         OHKm0WmesycS21zO01HMY9kh9pQrg6vJCX/obyNqSg5xcYI48hXoCPp/utKpPBHMHtst
         TRyyonuutMmTBo2bwM4WCpsRLswhHWQb20dhrpnaySuuwoNS8ZsPCBvaeJhPNO+BC8ho
         dzZN28pFP1btF71KLdGcWi+bsjKTWceM/+D9STk95/uVMl9Rf1uKPGZBIujflaiOhseN
         TOpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MC6ArJN9ABzmJ88euJFVraUntkV2JkQEHnIVgjMDllE=;
        fh=LSZ0yc5G94gjlgKR5fn4vXJnrT4KXt/CAiRMxPr0EGU=;
        b=E1m1RbgHHSUFtfJwjTlkly6E+T5JZPsFduvTmnXIJtsRv83dr6qCYVU1QS2g8iKExe
         xKaJS5PIDxSLeCr7ZSRcg8Oqm8XsPsjn561qUitmViX8N9xYx432NEXywNZjNht+dQgL
         cwUJ+O21WkY6o7fyH588gmQRDkkWw06HecC17O5NvN5ZBWlRW3S9Q73CVElHpQgg30Xu
         qqCvPfTQOJRdJtcL43sl5Pzndm+Vi7NFzLk9DyJfJfoGYmc0sRT7QcpVnqliNcXNGeB5
         Gu/8c/qU535yCvYgcZsMt0yjKP/ux3Z9S71lgdo1agJiV532TIKf0ZtLsefAbEWdpVuY
         AGZA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788872594; x=1789477394; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MC6ArJN9ABzmJ88euJFVraUntkV2JkQEHnIVgjMDllE=;
        b=QA/rr0d2gZ5y22eCv/49bQZfE/w6gxBCmLVsZ869hAefxXkN6IBYNN7yKiLRZ9UV+F
         XH3tP+Nz74ZKSF1nGBoytzmADZxv6LtuRYX/y+5chta3/kNbEfy/A4h83MgoA19Bb2yK
         uC0i174MVJzgeEXy6ypHNoVxXri9j0Xa5p/pYCcoerZXv6EM/BDAefV0X+wCK871e9MW
         QiBT9IcD++e3VmG0xK/Jt5DXhY7ynpWnH1K5mFTjhALSfGllGcAbgmwUomxJmwXbrnEv
         7LAZPS2gy52HN1ybI444dhkkxSkrNW3Fxjpop4t1NbbjL1K+Up6S45JA8i5b8JIPok+3
         jADg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788872594; x=1789477394;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=MC6ArJN9ABzmJ88euJFVraUntkV2JkQEHnIVgjMDllE=;
        b=cbm+3kiHGYsS3bBNs1Whj5cjNpclUNtEM65cGotFiYHDG6I1BZfpHrO24c6OLL4SzU
         CtIM0b3o2CbomaZ7tIPceZMCt8/39NBufyZ2SnCniAyD81L+qsbctFcW02nOxVq4Ydur
         wY73Ms1BEczVIevWiga241jzhAzMQ8kAFUtBirHkY5VifphyHLujmiCWk/8BhnnTU+og
         pzsoZP9MeysEa15Np+1r2wRheaK68A8RRV45HOfzwv06tdNl9qXOun+wgNJein3xPfDs
         9kiOHi8oPa/6onqvbaKYJE4aKxXAozvSzJNRG8PGARH0GFSja7plfYwekFcerNs8xyEv
         ADvQ==
X-Forwarded-Encrypted: i=1; AKwUvByhVdHIoL+UbbsG4FtcGTQtiowiwZxCn1gFkztKrwtUVSNV1Hupt8RlA7Tn9VB+23E1lT+8ge7V@lists.linux.dev
X-Gm-Message-State: AFuF++m4OgYZnn7/quZHI2aki+aw1FWC91RbHNbQmtKH+ZCScIjcYYKS
	F9Oq9r3sTlPmuQsELDDB6intNYHqJKS47JrdLHviFGTnC8LrWMOPgRKfhRprJ0oRmau6I0irdEX
	bACUzdkYqZuaqAs0z6LCH77Eb0iPve9URwA==
X-Gm-Gg: AYBFou2TGvY8f/O8g5f0GthKMV+jFCiPFGd9y9wbOLHIdQX0WicjXi0RaxKSbMjX8GO
	bec0R39AR0cylRxJPXmzDGLgzBDcAb6Khwhqvle+EKU/rwjhMwHd0Z97q0LRG4WmSsE/8PuBpN7
	RTF0I0ApZI7QzZHjlK5VhuImB02kc+xFxm7lhlUx4Lg7ULt8gDCpQ1R8ROxtn8dXKxJjLEq6mVJ
	gHWhyPRxNdCwj9lt3SVIB8FrL+bjvLHwXTyvTKbjpAijHgJ4IegKtDNnlBw/I/1jxs911acVc8o
	LgnsSDc+rSm9jExMZyBOldCMfk80OPAZwcXUXZALcCB+w/A2073CWJak
X-Received: by 2002:a05:600c:540f:b0:49c:d293:70c8 with SMTP id
 5b1f17b1804b1-49cf81fb1e3mr286853155e9.3.1788872594370; Tue, 08 Sep 2026
 06:03:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh> <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
 <132d2a682ce15be4d4f1d8586596dd874195c8c8.camel@HansenPartnership.com>
In-Reply-To: <132d2a682ce15be4d4f1d8586596dd874195c8c8.camel@HansenPartnership.com>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Tue, 8 Sep 2026 16:03:03 +0300
X-Gm-Features: AcwNN1Ua5cmvo251saN_FTqW5RbR_Oj3QlObnllrsb4OCIAEeORf03F_EF7DTUk
Message-ID: <CAH2bzCT_iTLE59=QOcJXUG-mQ_ONDLc_iEbpnAL6-VY_MfTYKg@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Sept 2026 at 15:41, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:

> You seem to think some people in upstream magically know the correct
> direction:

I was looking for any outstanding known problem, not necessarily
related to safety,
that upstream maintainers might have been already aware of, or interested about.
To see if it could have been a good match for the mechanisms we have developed.

The idea has backfired, so we'll go down the usual route.

-- 
thanks, igor
