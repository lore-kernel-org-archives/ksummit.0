Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B4DE56A
	for <ksummit@lists.linux.dev>; Fri, 24 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784851715; cv=pass; b=kRBXY1TuEXtlr1c6JwPimsb9vQ2l77BFCDX2qmbrdY4hyXAoG1hPDmQCKmEcDFGZd+EbNncTDiZhNpD5EbM0ELnKAo6eJORmP7uBMjNSggp0LUeK88nPr1mQoE2o78h23bm3N2d0DK0C7OLc3y4uIV11uUQE6IPe4RtpyOvMbQg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784851715; c=relaxed/simple;
	bh=4xwyWX+3REp/8eJWCNMV/21E59GthgZnKROxD0CNaL4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VkeFPJFfTUQlitDh8kQrQ6fbT1M2CSkSMgU4F3Xc0iYums4J/tA7DgSYvNBU4+3mWMHK6Q+0BaOJnAcc2kRbPDbYSjJjqbiiHZYAHoMtCprH980xLVC0hqWKp+2QGKszex9B7uAghzRjxd9XWO6DBjWn0IZSQ/N32aDD+3L7qOY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ep1dHivX; arc=pass smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ep1dHivX"
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-39c7ce122c7so10561751fa.2
        for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 17:08:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784851712; cv=none;
        d=google.com; s=arc-20260327;
        b=bwONefl18xB/vVkLcKc29TjRUgOQO555hTdSP/CfARcGMMkys9GnAlCwdioiCvv0UN
         Vlp6JSFQutCDmnAiYeAwUskVcxrBKczXXtn8+60NXItsobmuJr3DC2kHBJFnJLLZ75SC
         p012pvEteP82aoimvU5IEl4mBS3nWth6/YpNn6CTqWsyuvutmOYFs2CW3OPKz8Piy5hT
         RoWttdQdQy+QODLxoZSeQ32GHZawutPH3zrFJ+cUPz9lgtBTs+wiUqCS7t4BFmX1aWZQ
         +MqSPSE5mmPzMpiXD3AS/vbJE1eF5fdqTQA3zLq3uT+DnRQfZqYAE2s/RQvCdN3bt1Hn
         J4RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=w58kDa27SXqo5HKGglffjRMKnIv1n38WwRQaEN5Ck+A=;
        fh=teAPuXD4m624Q/1+5zww17Lh6GN2dddt2pShj7xYCCw=;
        b=Qyiq1SEsiaZC5WpfSpiKbQIvcp78vLdqhP6jdcn6g9/WbNtcSoBuSZxw9O9/QUKVVj
         +Jx0MeNzdkZf9+H+JeInrodSQV+g8b6Sr/bwjwH2exFukj/T1kYLo/l/ew6IApMji92Y
         B7H7iQiYiMSZ2+QhY45JWKXVwxo0isgU5zfbeYQr/jjN9oteqO9evG82waj9FN+VINLq
         OTDYkUtrrF9cCAY/wSzvsJbAgh3lVYvNoXffOLc4GJRA2nvBCam5gDEYzlZIpwzHmJur
         pFIJ3eSu9brZJvae5n8WgcC/lPhgWLErQE1oQ05NZJzbkH7AggdSQnq5EZWI9caXa0W9
         X4Sg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784851712; x=1785456512; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=w58kDa27SXqo5HKGglffjRMKnIv1n38WwRQaEN5Ck+A=;
        b=ep1dHivXQbrECFaQq2VXFZhu5olnjgFeUVKMmGAaPOsrnJqujBqJ/Zm/THRobq8NyO
         dUnlU3VbdFhnFD8rlXCnMqkAdT0lbztLHTMHq1NrayUnxQySCXJM/qdCWceqQS0m5Ozz
         SdD8VP9kpJTuSI+Zq9oxAJ9LPr9E4KtDFQvDVt/rAp9DkuQyAiQ7fn424DfHIu69n7jf
         cCeE+6y9V4EMcPVAkUpg/mnD/f4mhBz7BGo1JwnaS3hNxtych+Ci4RfRg0w5HDBKEskz
         FHSu1YM9VnhLzTbkZj5i/TvjbCxsSMPCS4bJKalqLK9AqEVV+dxtqd0h++R19i1hMXaf
         dgcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784851712; x=1785456512;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w58kDa27SXqo5HKGglffjRMKnIv1n38WwRQaEN5Ck+A=;
        b=b4X2J5UPXX1TJLhA+Of1y4YxaK5zhqP7LOjRnbL68V1Bh9IAzZ0NWtAiVC/GhteyWC
         f+oxGwwH8EhMr0H9hAJNaRS6TjFen1sa7zBQPSz8xO79yKBgXnxcIAWpDXwKlau3QE8Y
         MraVQck70ms/ULz1+SVj7bjdMR2sL9avV7FPDwthNY3jqsn8AXfcNxi140vr/0pUg67b
         BwSVIFHsV8uerwhDiESdNv+EMGduCysPnkwf2ilGKmRjkyZhSmQrGGRvZBarkeqWlWJk
         fTx3RtePA+BpLgLVSSQrhK9jYb1L96zckLKCHTFQkAbPAygOvJjxgeT361xpqhGvPBUr
         CEZA==
X-Forwarded-Encrypted: i=1; AHgh+RqyN58c7kBoE9gPFsYByr6alUsxoRyAWpuEu1QkYxVwoJrEr/Y6m2Gedn1PRJIySSdIEFx+DVxD@lists.linux.dev
X-Gm-Message-State: AOJu0YwP7Y+k+Beww0L/OGByqssoS3QmPyrrGLIOkD855aaXDF+5Bt4Q
	GbbbvSOFyaa9EefkZ8LFXbUPKyOUSbsVujaXxEJjhSlYaGWAndLqaq5IzjPuTChMWNT1EKDIETx
	cWQ42uQj1uJXetvi/Fh5qVTYXd49yrs0=
X-Gm-Gg: AR+sD10bltlN4PL1mcm0JIJJjg+A0Q/zgpHdgYHsSOQ7yfts5C/3gFZjUAujHNuzYyK
	oRys9Vm3iDYZ+L9BXCi9Sh8Pk1szPHGWroQw6IwSLB+fu3jx1su+SmFFUjVp82i3my/2SRbsyoj
	xlVUzT+c7cLOYyK79Ra3/13fBC/vH4a2uHimW2CzL30evn7JYrUP4QaDpeA4KtWqtYb7DDfAwqc
	nd/0h69pbz/WVi1FgFZJUJCs34za2yYzTgJ44oZdiJ98IoNRIBxQEdgxpizk5iA7pEEka8kiLNw
	hc5/Sb07iAB3+tk=
X-Received: by 2002:a2e:bcc5:0:b0:39c:6e84:99c0 with SMTP id
 38308e7fff4ca-39f07ee193fmr10804041fa.21.1784851711956; Thu, 23 Jul 2026
 17:08:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <7ia4qzl45h20.fsf@castle.c.googlers.com> <20260715185757.GA191552@nvidia.com>
 <7ia4pl0oymo0.fsf@castle.c.googlers.com> <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
 <20260718010949.GG1889304@killaraus.ideasonboard.com> <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
 <efdce5c5-13a1-4dec-9823-bb2a37084538@roeck-us.net> <20260723084954.42e6a6e4@foz.lan>
 <65fe52a8-d6e1-4c5d-ac74-6c731874db15@roeck-us.net> <4d27a17a-ddd9-49c0-8d6c-e044b28ffa0a@sirena.org.uk>
 <41cffdd7-af79-444a-a086-7861437c96a1@roeck-us.net>
In-Reply-To: <41cffdd7-af79-444a-a086-7861437c96a1@roeck-us.net>
From: Tomasz Figa <tomasz.figa@gmail.com>
Date: Fri, 24 Jul 2026 09:08:14 +0900
X-Gm-Features: AUfX_mz4yOT3jZRA35AMAPke7V4C2ycmIgWlh6LtLjvdYSwZ3CO7HRWIKsg-6pE
Message-ID: <CA+Ln22E2BbKoYHNKbeOeWZuNvH4r3dx5Of_cLg2Mf+xm+xLszA@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
To: Guenter Roeck <linux@roeck-us.net>
Cc: Mark Brown <broonie@kernel.org>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Roman Gushchin <roman.gushchin@linux.dev>, Jason Gunthorpe <jgg@nvidia.com>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2026=E5=B9=B47=E6=9C=8824=E6=97=A5(=E9=87=91) 2:46 Guenter Roeck <linux@roe=
ck-us.net>:
>
> On 7/23/26 07:59, Mark Brown wrote:
> > On Thu, Jul 23, 2026 at 07:34:58AM -0700, Guenter Roeck wrote:
> >
> >> Last night I got a patch submission of a ~350 LOC driver. Sashiko repo=
rted
> >> 9 issues with it. No, it is not ok for the author to ignore Sashiko's =
feedback,
> >> and I am not even going to look at the code myself until the reported =
issues
> >> are either fixed or the author explains why they don't apply.
> >
> >> It is fine (I would say acceptable) to ignore _pre-existing_ issues re=
ported
> >> by Sashiko, but I do expect patch authors to address new issues, or to=
 explain
> >> why they are false positives or don't apply.
> >
> >> If you want to give patch authors the option to ignore Sashiko's feedb=
ack
> >> entirely, fine with me, but please do it on a per-subsystem basis.
> >
> > OTOH I had a submitter send 15 versions of what should have been a
> > relatively simple quirk over the weekend iterating with Sashiko, then
> > the initial human review was "this seems like the wrong approach".  It
> > feels like there's some happy medium here.
>
> That is a different problem, though. Yes, I sometimes do get several
> patch revisions in a single day. Sashiko tries to address that by
> optionally delaying its response for a per-subsystem configurable period
> of time, but that doesn't solve the real problem (which is that patch
> authors sometimes send new revisions too quickly).
>
> Either case, I think your example is rare enough that I'd rather deal
> with the 15 revisions and not have to re-identify all the problems
> that Sashiko _did_ find.

One thing that I find tedious when reviewing further revisions of a
patch (series), and that would be exacerbated by having even more
revisions, is ensuring that all the comments from the previous
revision(s) have been addressed. Is this something that Sashiko, or
some other review tools (possibly non-AI) could help with?

(For a comparison, the Android/Chromium Gerrit, which is somehow so
hated by the kernel developers outside of Google, allows me to easily
see the difference between any given revisions, lined up with comments
from those revisions, making it really easy to confirm the necessary
changes are there.)

Best,
Tomasz
