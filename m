Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09CD4A3F1D
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 15:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788881564; cv=pass; b=MJcfMQGxmkmDMxd4/ItWNfiCZ5f3YD+AXFAmOoetjZHZvqeaRNuVwA3HULHouLJLjeKnjXED4/BJkpHzrMrmbwb/fnNE5OeXS+3lxmMeBI+7cTb21n+eiieOXe37HH4ZHwWxgf+q7fpaKgj/V8esI4fD6txSjBJipG7/eUtxzAs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788881564; c=relaxed/simple;
	bh=A8SvACpZUMQKNZ1qbWppfAQJvz4Xs3EiDOR8g7y7N5Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Knegv1n6NQ4TaXBLiYRGqXCkv3aD9HeAdGOhSOjr9eBnkDOHVgr9YzP5dts3APPYE3THDELJMCIFarHnhmvdO+i51X2LiXPJBRo7bYIiQfE6ElmlRlMvydzyFRGHu1oeZt57MTKBbN9k09fT7flJsQ/MfBskgploe+3U9nQt8qY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cWN8kUy7; arc=pass smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cWN8kUy7"
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-49556f97a9dso40327675e9.1
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 08:32:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788881557; cv=none;
        d=google.com; s=arc-20260327;
        b=DtOA7TjOpbu1vx8Tv1EAFFAQKq6c5vBrdtv8PGNPF+aOpH8IB4XbhPdfZDwmhwAG7G
         DLMJl6cXFaA34FXDgaegy+xEPCNnq3Q1+Wt3BqT+mGouO3wDbhFwn/M4TqLJQ6jXGyt9
         uYlRnOjAvIIU+dNwzf/0Sb5nq8QXzz6klKprf5ghi4IEEnJG+d8Ldc/cI+byQkiWHHgH
         rRnQ9C/MyyG+hgnWOgBav/0fwLgxJ2brs552Nd8GIys/T/Ip7tHgQ/8N3gUsHPqYHbUt
         cL9F94BZVNRV3e+iu+iBCGeMqClP+F7Da9TOwbCDsN2WydfDKbhEtaIglH9Rzc5NilXf
         rJ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NKwZSZULORjnNm/Ou2DZjchpeJFbwMsy5t82U64qLoM=;
        fh=BiuSfEGlj7R+vpthjL8Kqstx9EMTzf49NNu1jZvOC90=;
        b=GrJ3J0MfP4azdPfckFtw8U32oHdXCowa173HoEL1SaIRGIshMu2YX7zQOs72mcNKYi
         GZnbmG5ATRDI/zxuXkzI7WW44Nf38Alaye6/f+LDoeABDvR3J7KpRkNqCgSzZTl6dAKV
         BBpR5FSpmBpYiBgr8TxTjsGHompG7NvyT0bxe3MgaQ3jPFPrJbQaLQcRk1x/HXX6EcMi
         rNtU+EixXT3kem3Fs3A2E9vldJgxRNWe2ovEYmh5B2Q8/NZ458zFo5UI0ZSYEFFTe4Hu
         eHHaHWLvjfDheeQvDRzZHbZTNxS21AE8G9PsDxFJreC3NMYuYeCetOvyXcLjBYHSycw3
         1TtQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788881557; x=1789486357; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NKwZSZULORjnNm/Ou2DZjchpeJFbwMsy5t82U64qLoM=;
        b=cWN8kUy7v5vvpkCdvShmacr+76utQs1Kowz7aI06N3Zed1PfPRgtdDm25YGPklAkn4
         Jr8DI2lpL1HuYdvGoo1YVHEiOqbCBS/vkld0IElebH5U52QWL05Fvuw8T+JQrfctV6cc
         JHvY6IeRjZaZF7B+q3ygAGl/NXqmDflsu3BOB2Hvc4twgDAYhZ5ey8Ge6jiYqYxpZt9S
         PY3hTgyt+4BZ+I3ufhQemZTBLJz+9y67TkdWuaehlhFWEQstZta8Jnj2pZwWLXgQDIs7
         +Ojwq3Pfb65AXln60ZwUf70IasSWeuRdK/hHmrKpmZ9hMOYreldb+BzujLIMtftMHcos
         yDcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788881557; x=1789486357;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=NKwZSZULORjnNm/Ou2DZjchpeJFbwMsy5t82U64qLoM=;
        b=ruJFzNHtWNstwjOjKy89LzWKmwCeg2Be5yfz3YbTrqf6W/nowPGyabYbX5mYwILmmg
         ATKpwg7nImpl3SQ4R146ahbWbqbyvwgxmUG2Jyjiz5Q351QhCS2Rx/PfcyfTDEJOWD2h
         C6Zh/yX/OR/h2r4U4ls49fbX4S68ngdoF3PlNtv3EaVfhVqCkGmaWf7wknUzOHz/ZR8L
         uGbqsScweHXRVRgR2dLUI/FxHbybh1vun2G46FfSWgKYK1NOhjts4TWuwBAMBqnvzrQm
         HWjHOXliOwd/k4/h8p5vcdUljJ1qrBDhxuGjQs8LRnaLP1iJe70+0ZdLgAvnUEgZFa7T
         aCEQ==
X-Forwarded-Encrypted: i=1; AKwUvByabNYDiMv9lsL5SuEB+8K3kLpmqjiC9v/ACMDzX2AF2Qo/rRQXAoz9mv6H3AaBKWC2jTmFyUlq@lists.linux.dev
X-Gm-Message-State: AFuF++mH6ECEfWgTHO3oWOPH9XNI+HFH6aKj4m8TKKRv7rKtCUOGDJFT
	CEPT2/FJzDSr7fUdjKIUzi7zgmCO702L5ZxrXi1+yKZiz6iM3FfV7c6ZoImXZxvi8tLchIdgBBR
	bglmFj16tFTxXF6toBLxdLPiKNhuiJMo=
X-Gm-Gg: AYBFou0zIc7mGFanwMb6s3WSjvpNckfj/IN5+h29VMdeHJaaMJY8hFvupgf5LLecwrv
	lkFmvs5WsVsXPuPvEnoCM34ISjjfDx6o8IvaOvXDOLRImZMg/wjdavU1tKrJbnTo2+065cq4trd
	OJa7x1KkBzPJeIn/KG5ax9x9iDgnZ/7vPK6+zUVkLt9cMeq6HYgc9XgHAouGf3ZUEcDPP2phjg1
	FX7Jm1Ve9BAXq0XCAqkvk8aOzejODR6l6hxsxPZr0gkBiLpRSHZolt4xfvWCIJWfPsMNlhkjTJO
	jMGYbRv8C0Pqtnj8Z3Xx/2fP4g748EG6tfKM/YHiRbbJsMurQewaccGJ
X-Received: by 2002:a05:600c:350c:b0:49d:16de:9dc1 with SMTP id
 5b1f17b1804b1-49d16de9df1mr88656715e9.19.1788881556921; Tue, 08 Sep 2026
 08:32:36 -0700 (PDT)
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
 <CANiq72nep9_Cd7CcgrxNehN=-ZETZRjsQzJnSR9MV3B_R3khJg@mail.gmail.com>
 <CAH2bzCRTnb+A=HLhFzENBgFgsyjJ91sTLyOoxPgtFjhv+Gjcow@mail.gmail.com> <aqAeUSS2TZkRUVao@mit.edu>
In-Reply-To: <aqAeUSS2TZkRUVao@mit.edu>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Tue, 8 Sep 2026 18:32:25 +0300
X-Gm-Features: AcwNN1WSKGevj-AdslSHjNAO9oQzp4LVHddnb1RS-Xn9Ou72hQ5dctiZ68oxiME
Message-ID: <CAH2bzCQ95Usrd8q5YeKUS0cK3tNguY8yrwtdbNKrDNg5rFdyWg@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Theodore Tso <tytso@mit.edu>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	ksummit@lists.linux.dev, istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Sept 2026 at 17:45, Theodore Tso <tytso@mit.edu> wrote:

> So perhaps you need to start with everything out-of-tree, and when
> natural changes upstream changes, you can send patches upstream to
> "fix" the issue, and we can see how annoyed everyone gets.

It would be more about declaring the fences themselves as in need of
additional criteria.
We could probably even provide automation for detecting regressions as
part of the
regular kernel test automation, rather than having a reactive approach.
The potential regressions I'm referring to are related to the fences themselves.

> Your claim that it's not going to be draconian, but I think you need
> to demonstrate whether or not this is actually the case.  Let's see
> how much cooperation you will need from the various subsystems, and
> whether it's going to involve a performance tax.  (And if there is a
> performance tax, how bad is it going to be.)

As I mentioned, once the framework is disabled, there is no overhead,
it is compiled off. Practically binary-identical to a kernel compiled
without the patches.

> Hint: if there needs to be a performance tax, it should only be paid
> for those systems that care about the safety certification.

That's already the case, that features are disabled.

>  Maybe for
> "safety certified" systems, people will be willing to pay a 20%
> performance tax.  But everyone else.... probably not.

That 20%, I guess it comes from the typical microkernel world, where
one runs most
 of the drivers/services in what amounts more or less to a process.

Again, it is understandable that you might infer so, based on what
most systems do, but that's not what happens in our case.

And yes, without knowing the exact architecture anyone can guess what they want.
So, it will have to wait, if other-than-code explanations are not suitable.


-- 
igor
