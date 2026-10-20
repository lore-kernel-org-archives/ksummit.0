Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.remote-ip=74.125.82.169
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=fail;
	t=1792527319;
	b=0cUcoyrOj5KLoLgg2AXgI1Cjv7LgJI2S95z2pfxYLAXhil2OcrkiEZfieoeIfQ1gCwCS
	 U9rd42DcmduNtDLqihWeIa4NPbe4Th+YUk40aRtbr4oV0Eq+TQKEJq6bPsVU491kVOXdo
	 xSaXwlSlTq7ZwPt9doWYTtcrhiKwJzXW3QEECQPA+qYcHicysC37V1SLL8GsBo4ZsCpGu
	 VLKVEvZkQUtqzUKnX1TZZoL4mmzsg5NskzhidffjIv0hZldOS7twajzTqja7k5mOsBdbp
	 Ar75aSdLkQbZVyD7HitiSJICT669lGv+gZ4IP2W/RasMQlSOwVot2/eXsYdHsbqnYOw==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792527319;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:References:In-Reply-To:From:Date:X-Gm-Features:
	 Message-ID:Subject:To:Cc:Content-Type:Content-Transfer-Encoding;
	bh=zuMGgZ7Lo23Sg0+pGBSKzCAKw4QwjSQ2yujNqSDyYA4=;
	b=U6R26ijFiEweZriyfHeuEjJLM+6642Aa0WCDtPckdQAMzf/65lnxmfPosQfPbZL2VWuw
	 0bcOp0sd1G04Q1zi13ezz1SariqQfSDui1lyw16Br/2lJsZJJHHQxWouwjxJ82xi5qrJx
	 FedWu8948/LVRfKRLREByt8goL+QgeyZdAvANGt4/C79KxcIwPpQ2N2xmNPix5zjGqRKE
	 kT7WZMeuTcdwgwIVCC9Da2w4XJkvR5vn8LGlu4nu6yAsRphc6LNYxBL41mIhe7OJ1Y4Rs
	 3U1TVeQzij0CspE3D9vRawO4GrcOw2CYR0NYT9roiP9Sjf92jhHSkY4o6mC59icFy4g==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=N717E4Ur;
	arc=fail smtp.remote-ip=74.125.82.169
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BE5606A31B
	for <ksummit@lists.linux.dev>; Tue, 20 Oct 2026 20:15:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org D2BE5606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=N717E4Ur
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-3584f70a5aaso498339eec.1
        for <ksummit@lists.linux.dev>; Tue, 20 Oct 2026 13:15:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792527318; cv=none;
        d=google.com; s=arc-20260327;
        b=f5M1o/uESV7sUvgaXW6dYQOSyU0ozPGvsljnEDiK+mQuYyh72aqcBei0241n42ldka
         DidWGTHpFu1FOP25DwbhX5Gd7EPHreIQdxhphpi8G1oS9DxtzntGG/KTaQbMPYv/izpo
         Xn6hi6rQWStMoUAoZZ1hqIiUdraQqu3QUN6Nbgm1Ei3/XymM0qKKZpdR+RWCsm0PuBvG
         6doVhiMytDuxLnhncgHRuT61Johhy0XaBt3qOShBcsJJNBQoBSO3JDC48QauaL/4EjQI
         zp70L5XhSn3Ube6+VEoEm6im5A5IiaVqrdA2v+Nq9zsQvdoWh9PQ8X2DLwzaCOr9g7Px
         9M8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zuMGgZ7Lo23Sg0+pGBSKzCAKw4QwjSQ2yujNqSDyYA4=;
        fh=1Ll4iQhMI+hJIpuXdRnFbbc0Nn4C/IXK+6TPRu4jOB0=;
        b=Urvc6iQrxsPnhx1181pXbhFF8luNZiNdSRJQf+eksc9ICDoRNZOz5AO4Jd8cmPLXUI
         bvxatHkDeYu6HEEWrQiKNdAc5pdiGfEbT3fi4l6hPN/ggUDzDvbPNBppHigpfVEYnoE6
         sfDa30pVziEQZllXrJkAqI0UyJReA07fFnzGxtzAUTcD7beIdQPkAtvBG0H544nF5fJ1
         bqIlqXBzmfKSlmGI9evEmzra08WJsz8pvkx3cNzEOX+eUYjTRsCuraSwlmDnV/wwCTu0
         B1yjzCGKh46qHyAukkqOJAxOTVnSWoSu05lF56EjSiZ0IBzgkbnOILaEAdOoMdNcYnNV
         1D2Q==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792527318; x=1793132118; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zuMGgZ7Lo23Sg0+pGBSKzCAKw4QwjSQ2yujNqSDyYA4=;
        b=N717E4UrBJeY+Ve1WNqszdg+AQDBuw5/3vuqFDaN9J1bvJJaOMQWy7yXLUW4A91R5k
         y5T/ijzrPArp8y3HJeCmLx2w19s6N5jphjXKFA9954hJ+yPnCXy4sDyg570RjX9oV5Xa
         TD+FV70WwrB76q7gMJOqut1VO9uB9g9F1Qe9DettSs+lfDiQ5BAaQhIvVzER6smrOjar
         39nO9LiLjaaqPAwV4mUcSpvRYrzXvK7FMQXN9FZ3TEmsX+OTDUpj9O1mRvjy3FcLkkPw
         i5sR6aM5eK2s6PraCfK/YevVGHDBZro3WKOfWGof8FOKPKfd2ewrHizHvNSMl/IwRTUD
         /YOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792527318; x=1793132118;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zuMGgZ7Lo23Sg0+pGBSKzCAKw4QwjSQ2yujNqSDyYA4=;
        b=wHkg6xI/P01vsTYVETpLXHaK9Hzo/ZY9XIkG5n/yg2JI4/r7Utw5T8PGDuq/QOKHAm
         pcE/4UUDJE3KxM7fmgYhMwkZx8qia82pS5V6q5Tsmsn3g458PDxhdOu+7OQx29+Z9VtX
         eGWriy2lUqYet6n+BzdzILCZKFrQl1Mt009T0RfgTyI+TGOJXUAVoQZ0iBSV4p0N1eJw
         fYoKUcCLDMm2ygHoPQyocMb4ufoE1VQtECig+2tVphn1fUhYCwJfP4rO6qyuHuH4c/ir
         VO8x9FuvBgEK28Tzwj3IB5VPonpqRTENY18M1sQP66hgjP35n7za9UzXqxKUjfxeDNTC
         ONXA==
X-Forwarded-Encrypted: i=1; AKwUvBwJShQAByuXU8oTcKDrcX0ID97r4vigFT6lV5CyUDjfUsj4Ss50J08W7YwlC352v+EKEd3J1WDP@lists.linux.dev
X-Gm-Message-State: AFq9FYLfFxaowsKkOyto7K8SLlTUWPtv2Qhj2EkmCi4XEzNRfIwz6HKK
	Rhhv+B4GyFcImxuQuf1U5/9z/Fxhg7AiqouGG9zF1Z4hborD+iKZCYLLMyyFvK0rOfz1+1/2AJQ
	49xl/8CaEQNVWMI+1dxP0hSP0HD2u7qU=
X-Gm-Gg: AYBFou33GOAPv5U6ht6I4esnOU14GQucQMhd94DlgL9MpEtjIY2OxHZPzdJFiMhQ2bu
	KtEQM4hQqskf11ZJU7yaE8chfFAwPjdH15wnbv4LJclnn1knaMBAI5beBuKJ8Cc4+Rt+yxepu8j
	AHZ8JZLjvqs7KMduV6uP40gB7ytEvcvQyQiHls+RVkOyUCcIF0y7QKrFSz/qJOn+R7KLReIwsZy
	y7nVXofktqLhTP7lRXZBMxExade0yJK+/Cri2q8RCW8BCwEIdqfKh+tU6aeoUIsybqnOYrCEFWo
	PWDCNNyB+tJUR4Kyl1MpSsgS65oLyDkoKnAK0KUHu+fs6zPaJwaiamC22zMEtEI4F1BSkqb2gW7
	/qjlndSXCY8RakplFmrckLjuLofaDpM4mGseP1mOjJT5vObKW1SBq4ri7EXpTzGKUrDCW/IjDsv
	0Xyj8249VvxPisJRi55fsXtG40Ujm6XJYbgK392EKyyuywshgecTQ=
X-Received: by 2002:a05:7301:6192:20b0:33e:6714:3945 with SMTP id
 5a478bee46e88-3674c43a7dfmr646530eec.2.1792527317682; Tue, 20 Oct 2026
 13:15:17 -0700 (PDT)
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
 <atO3pCuUxI950ftN@mit.edu> <3354ebda-5158-489b-a577-5cb10e5d5fb0@oss.qualcomm.com>
 <atZ4J86j7CXF82HX@mit.edu> <2fef166e-088d-4ffe-8d0a-0143aebc1b26@acm.org> <ate8oESqneK-3sQJ@mit.edu>
In-Reply-To: <ate8oESqneK-3sQJ@mit.edu>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 20 Oct 2026 22:15:04 +0200
X-Gm-Features: AclHuK9I0xWcrNX7NXWJq9hOOMbg7Ab2-5YDs1sW7wOP29vOQ4OJEZYTGTgJ8Rc
Message-ID: <CANiq72kaVqxKtH=mYTbD53M=tawzB5P+GBCuu4yHmCUgVgqPJQ@mail.gmail.com>
Subject: Re: Patch pre-submission to Sashiko
To: Theodore Tso <tytso@mit.edu>
Cc: Bart Van Assche <bvanassche@acm.org>, johannes.goede@oss.qualcomm.com, 
	Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev, sashiko@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 20, 2026 at 9:23=E2=80=AFPM Theodore Tso <tytso@mit.edu> wrote:
>
> but that hasn't been particularly successful.  Should we ask that
> human code contributors do more, such as running kunit tests?
> Perhaps.

I think KUnit is a reasonable ask -- in Rust we already essentially
require it, because examples in docs are transformed into KUnit tests
there, and we ask people to write examples for new APIs.

Cheers,
Miguel
