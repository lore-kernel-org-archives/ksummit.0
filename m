Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20222D7D47
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 16:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786120711; cv=pass; b=gnWZ09KXe94W+POci4dUAMKAJWfIpIbe44KAt9jvzNXyIgig3XtwZVv8NGdaDmy/gISDSeAHry89UhQoVhJ1SOtj0GQGPVC8RwP9Fie/50Jo3OxgAcVw/ImypcABmxFJ5Nf70IS4yVbXVkBl/kgxusMO0PU32O5icjOPgrk2Phg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786120711; c=relaxed/simple;
	bh=1QIkQdg/B1HTMkd8Kyhwz/b08BMlCN32ZkPG82Wga6k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QWC8dGEgud+nduD5Nk2R4CSsQ0sFDwHe67Sny+wWpaEkrKS0LczFjuP6wkq2TrcJ8t/f1AaZjfcB51boRBGWyxWAOaUUXcFFzqPFUBgMWBt/zUmkO2Y8MmLYsJJ3hw8TLlbTuA+/lPRoirJ6rirbY8n51MVPAH3Q85dmR5B4a4M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lWF7A6c9; arc=pass smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lWF7A6c9"
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2cf110997efso7616885ad.2
        for <ksummit@lists.linux.dev>; Fri, 07 Aug 2026 09:38:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786120710; cv=none;
        d=google.com; s=arc-20260327;
        b=YY3wpse7aufPlVMOWzPGftImY2uNBGO0/xMXz15h2rzUYB12AX/gHfxzW+ydqqtRTa
         wa5hKR3hgmOdujiwwxmok6w/f/pZdrUinbpMQoOihZPh7STcZAjgFCHRSMEIbl6n8o2+
         Aql7XsWxs/hAwwwf1q0b/8BRMl0K6/NdnuVA1jouV2OyVH6O4b46zwrTkxMJytM7Pn9A
         20IzeNgXeRqFqBdbCT+d8fgTlCP6Ee1PDMggqrksuOI1eQDsfvsc2g1LHsRKQSTmK1wN
         TlvTLS+QgOwsK5L8R1Lb+gqaupU9oDuU/QYqYMlNSz0iA1DSScOR7MFv/28uK4PFIj9L
         PLYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1QIkQdg/B1HTMkd8Kyhwz/b08BMlCN32ZkPG82Wga6k=;
        fh=6lpkWrOFnSBdMTu9WVVPHIMt240A2hZh2mIjj7V6AkU=;
        b=DVnJhV0FOhoDQxYGqAnoyB27qQDPR8IC0ZYu2OJX7gaZT6Zzg2lK2LxnMTJFqKncIS
         SZNPFiwd6KuZ6oj5FljxoRm4cs2lV1wBuqGWe/BFsxTU7sA2wTjd8g7WTapuscXW/0I5
         xNyqogtHj9gkKQ6UtWg9dhqK83vQxg9xyqH5LODPs9+cSbAkRW9syH381yRwnqPIJmzC
         S5GQqOTV28Alpz5BBxPhFUyu5Qk6ufBymY/AHR08Nhk7GBEpsWLPMk2dkETvC0DpT8NO
         mtyMN6IZG21RyI+03jgdFay6TToGyNidFAsWnHNwh1CKMWU2HyXWVfGNCA65ckCDsOnY
         kOYA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786120710; x=1786725510; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1QIkQdg/B1HTMkd8Kyhwz/b08BMlCN32ZkPG82Wga6k=;
        b=lWF7A6c9B8zONvzwsYznzRlz4ZC61Z2l+HmlArp/NWaKJDBH18gZFyxifZZrMIBLIA
         Y8Od8+ZQrztDD1EotwYuoDXgEyGhhSrNmj541teiwUMX/kq1xs0of6qK3aE2aR9npDDY
         Bab0mX+xe+rNaEG2Ho4nKWwnuiF8Ka+FzMJKdLrpF2NC/OLPRJG+Z/pIaI/6UIEik5PD
         rQD0fyaw14dxd66CXxFZEEBSXkSUN7MyepdypTs/hzhDE0y9kwjLDN/AFjHS/z6z3TPZ
         /sMMq5qvOZarILtuK2w4b4buSEmguJBNNu1xZS2kmOMxvZN450dWQXJz4v8DFXHsXKXt
         5NZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786120710; x=1786725510;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1QIkQdg/B1HTMkd8Kyhwz/b08BMlCN32ZkPG82Wga6k=;
        b=hW/0NSmUoR9qC8DnxZf6D99MQ61qNK5KmpV3AgUm1giU8cuzmQvo35bEwzMjdhoilM
         a5I6Utb581dHCg3bpMOaZyuz/IM8fZLT5nYE+zd+2dpTlDmtB2nm0wLYj+G4EiTA418z
         h6ocDAmIlaW5vmAUcLTu1pzKJs2kxZoNK8o8pkfWcloGV+hToA2JivzT6XPYPex2qbYR
         KGpRILVMswatJpJQdb821wkqtidtvkHD7ut/AA+0elyvcdZmW5FkoT5FME0M1eIulMnN
         CswkTTcg4KAjF6471Oa4aezN2mEKo+ojzWRhfXesVoXgnGxl4vKuBDNiDbzjrK95Ex+E
         4gvQ==
X-Forwarded-Encrypted: i=1; AHgh+RrqJksQQ05yGP/ZaHdxGiZbMeY5HQ85hGem2CEs+8iyy5bG7gKac82PrziIqf1cjiLznKIwZvYF@lists.linux.dev
X-Gm-Message-State: AOJu0Yxr8aEihNSKUVWIyILcONW71w1HaugEHgBBUFJAXmlOD1LVWOmX
	KXKXK5sd3cqnLo+CujrTBJzCE6bO5mrHwfLmHXUzxzHZWz/illKrwwuigwt2SzcYzwU6BJcn0wn
	JEEGaRm4asbGTlXuhL58HaCM3N59SK9Y=
X-Gm-Gg: AR+sD13ajj6OI8v+piJ9zY5R6CaqImCVWAIWMbaI7EocuJxWxsriH53OGP2VtWz6Ste
	y5NhIsQgVOxzRY/EjkK+fLBqCIhETwogal8uYqJ+uttWWdd1+AwB4GFK3CgUOtgQr8BgXiycbf2
	G1iB4etj1iOVNHZr79iF9P4uVLSabOekv5AQIZERHBx6XDd36ddsfC3OvLnsaPaToXV2067zpA9
	oxCPiHSilyKj/8R7K+F6i7Kt5c2FzRFecW+BwLnmnmcxygczLDEBP2q+1MOyF+rDyDKJxd/mh1P
	V731VCZnEg30vJVej9pMne/XCMLvkUSGP66tDO9gVp96ZkfE7fmAyyuOoWAi9CcaCDtjbstPLIS
	wc6IPsJMEtGiZ2HvqgwClZ9cdg8isRUBDVTWa/cDdUjprHBtQg/hp8njDQH0c
X-Received: by 2002:a17:903:17cd:b0:2cf:ca85:57e2 with SMTP id
 d9443c01a7336-2d0ca7b0285mr182791585ad.1.1786120710006; Fri, 07 Aug 2026
 09:38:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <anSpoxZ9SUBvFOZj@mit.edu> <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat> <anThWLhqipEM34kg@stanley.mountain>
 <anVK-qkUOaIJkt9M@mit.edu> <78ee9f53-09b1-4934-82af-25f3652b108a@kernel.org>
 <20260807115603.GH2201016@killaraus.ideasonboard.com> <04b4e9abab2831b177228752860bedab1f15a736.camel@HansenPartnership.com>
 <20260807124017.GK2201016@killaraus.ideasonboard.com> <anXT7z3kwXnPtGGF@x1> <20260807133658.GO2201016@killaraus.ideasonboard.com>
In-Reply-To: <20260807133658.GO2201016@killaraus.ideasonboard.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 7 Aug 2026 18:38:15 +0200
X-Gm-Features: AUfX_myt7z-kSqq5cN_W5f57EEQbnkGOLQLOj09vgnZSwtNKPPSF3nq09bYJnQ8
Message-ID: <CANiq72=JOogVjQOPnGfXFt6neVMs28VzzKSN7h6L03n3gxQf1g@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Matthieu Baerts <matttbe@kernel.org>, Theodore Tso <tytso@mit.edu>, Dan Carpenter <error27@gmail.com>, 
	Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>, Jonathan Corbet <corbet@lwn.net>, 
	ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 7, 2026 at 4:01=E2=80=AFPM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> It depends on how we interpret the trailers. base-commit is generated by
> b4, and I understand it as meaning the submitter used the specified
> commit as a base. It doesn't have to mean that maintainers have to apply
> the series on that exact base. Compared to having no base specified, it
> tells what base the series *can* apply to. I think that's useful
> information.

Yeah, it is very useful when things do not apply cleanly.

By the way, `git format-patch --base` generates it (and the
`prerequisite-patch-id`s), for those not using b4.

Cheers,
Miguel
