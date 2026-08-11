Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A2042AFB1
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 09:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786440888; cv=pass; b=NOvWZQlFgUd57LLJDQBupDQAGL7AKj1qwJ68V4hx3aXYydFvcaz3xkU4vjrWD1/uwEss9F5zPzBfaB1EKAg/Bw3JYhYcblquChUpcVFI3S95CU4uja58mKx6LbDq6xmaZiFjOvj32rcST7oFqXO0gqJLx1R/CjflAoM2JbLEQfA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786440888; c=relaxed/simple;
	bh=Tv/r1pIQDaGObmmnLer7U9bT5oicJlvhHCdbgJN3nNw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WSLueT8+xdpIBhDI075jQvbSvyq6n416jFgb7u78Avb2WDCQvOzfPWw2pj6w05I19iSLPp0HmphBTJDPvRB273fxcRrw17CeulFpwndef0aVl6kfK8H3gOt/Wv/HcMbkc9KE2/4LRASrJtJBncuKeEwtawrxVZDKmnhz/mSuLB8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rrANvCdi; arc=pass smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rrANvCdi"
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-669944f60b3so3148279d50.1
        for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 02:34:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786440886; cv=none;
        d=google.com; s=arc-20260327;
        b=eaCoEv6bEyLcRPusq3wrkiy0LT9bDKMI4mqXQENrZLak0m8gN2NbWWscftz3hpa9vl
         GDC0+77Url27U31qmYi3AJtl6AdIxXAm/agYgH0niFEww8ZSon1ZSgxnAvqFC1/i75Nf
         K02IyQIlc4FP6YX4XsEcqnS7ZkMX3W3WhDRHuFTA15N+zEfYsuebOosiTBRyIiJy7gaG
         HwJVThaOmrx39yLJqyrKGZk09Zmiw3rePTfhv7IjS53KdYMu4P9StJIti0Yk4Z91hKJ1
         oh29Zhv3+4WSTkKp8MLeJG/J27DXnuXmlskQa6Ea1PjAlg2x1tGNXTTPTOVs4LZfvcQ4
         aPfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Tv/r1pIQDaGObmmnLer7U9bT5oicJlvhHCdbgJN3nNw=;
        fh=u8HgMqA+2Y9eR29ZnulHSvTR2bU1Xlok9nz/MwMpSrk=;
        b=gIYe1G0j1La0vTG561lJh+AtzB/tES+zvJN65F1OMcQis2PAaEB7TbtAE0Ltxm7kSQ
         +iewML0iN4ZTP/NI+ewo8SxErv+qLU2m/otUmwpOWsHc/5d6xXbYUXvQYwYHftDG8P2q
         HYi34hPBpFipb5lTv3fN9zLSbW9WwF2TBkVb1iIQdDatWOgmPovw7pwNRS6gsJ9ibewT
         3ZtdtHOGexQdBGbWFnVgLj1udREsJDurA3vMsFm9aPdSE/B8o3LWONWQUvMffCSPk318
         7VC7AsVR7gTi6Kuq+k9nF6A5kLTEMKWy6+f8aXXCnvtdthIg/TI0U+uepJjJThlozot0
         qnMw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786440886; x=1787045686; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Tv/r1pIQDaGObmmnLer7U9bT5oicJlvhHCdbgJN3nNw=;
        b=rrANvCdigQhQvAW26ASX/VXZoE42f0ZcIT6gKK0b3DArg/GEWCtukmkLx4J/0uKjMY
         veMMHi8CFlG8LHmeBZ2XqmEIhbKDUp4LgavauGQCZ5e4yHDEMjYCE50kcAe/hWZA5S91
         rohzMqG6EK8Ww2TflZiVTcRDBjTLPhAKpr6fcQ9gQQLM8FWjRNsr+ZB5i7EnmvOeRDjG
         wmOTcazFs0tA3QYj7D9cA34QSzsi0IWtLdKJNhF7p/8CIzBJ0a6r97DmHVA8Qo4YmXjw
         Yh/pCUxKwZkjJTueokVzv5TY0jrSTV9wgGJeMvjXEUkXq+bit6D9pYgTomIv9nAub+j4
         7Kpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786440886; x=1787045686;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Tv/r1pIQDaGObmmnLer7U9bT5oicJlvhHCdbgJN3nNw=;
        b=DYxVnViW8JLK9sfxnJLGN5wyKke96qgUYAiKRLkSqyrm/iF6ACrPuwFgMFM/5wTQE9
         2WCDDpqHykxFneyZzkFzeaeJWBA3gUfPPecUoTWs3hofXXaMllpHzhAEr8f0nAuaAfNA
         50RI9Tsvh8X/9sxFaktMwjsVRhrmGRHMXUMKnAgKvCZsTEOZHA+jjTrpZPbtIrjG6WfC
         hLPxXxOzqnNEv7VUBmYoNjUtsQg1DMX+U8/FqXDdq4BEdylI+Tfm/V5aUvsC82hhKYki
         TpeGSmkLXiIYJIMeDgeERsoAHGkb4IpO4ElxPqlzelyL5s2mloi3dOmCEDcdFKo3bYwI
         A/6A==
X-Forwarded-Encrypted: i=1; AHgh+Rp0ojDrn28Pqfn13epBwoIOZCMBrQhVe1SgtAk3ReCQN40WIAOZWG4Z+Sun3WdXjJkIcjDTV4J0@lists.linux.dev
X-Gm-Message-State: AOJu0YyIAqyTs+QYzv727SzGjV8Q/DkE0kkcYDmpIgN6+i+qYMUBTYMX
	VA+C4mTPIQDlz2iyV7kaB7/ugmINYwY9AB0ei0Gy2yOfyiriSdsuWZLEDmg6LGpWezhVim2uiwx
	kONv2cpaSXet7TkCHeNfG69caZfTCCWU=
X-Gm-Gg: AR+sD121CgqwPpovh/pgwbOeB0uOQQsyu6knRsiDHNGbHWI3CEf+9/Rsmt+HPz5akWg
	aNfU1QyGFYbkCdh1BOjzFxu5HOVYwHW600MAxiwwr3g54lBN11dVyZ1XN4CTzQg83y/opcU6qlE
	WUzvweHFr06iVl9GzCHsGJBcTtQ27H5ZD4y1xDsayHkuCA5B0ghT8yAs5SW13z7WDrjq9XlVgqn
	ujmLsbi1XibneQLxrAhwlOad1Prsb/+70zXGkGnalOCUxN2NWybu7NvztCXF5Rmwj0Zoo58KTTz
	0aNWc+Zmlx+qj68Ctd/E9Ym4oQ9kIgCRjMch5zwNfwVrlQGs/lig7rGJt4oizaHeTE1pcDqfp58
	qWeQ/X/YdkT42V2EyBddclCyCZaexaw==
X-Received: by 2002:a05:690e:111:b0:666:87b:b939 with SMTP id
 956f58d0204a3-66b22e98aa1mr898034d50.26.1786440885858; Tue, 11 Aug 2026
 02:34:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer> <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer> <CAPM=9tybMTBw0iz2BSQ_p+3ybk=SmoLuRgiyyE6BP+=1+2RkfQ@mail.gmail.com>
 <anrWlBpyy6fmfCu4@lucifer> <7r64n824-1152-7n78-87o1-rq06nso5pop2@xreary.bet>
In-Reply-To: <7r64n824-1152-7n78-87o1-rq06nso5pop2@xreary.bet>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 11 Aug 2026 19:34:33 +1000
X-Gm-Features: AUfX_myk8Pq_EGaZdrtx0PnFNenjMDTya41pAhNwI_zLJBm45qfG6ng1MHXtC74
Message-ID: <CAPM=9tzrtJbdRgB0sKpm=zMW5Rr-PECq555uJ63EmNShhL4AVg@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Jiri Kosina <jikos@kernel.org>
Cc: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Tue, 11 Aug 2026 at 19:06, Jiri Kosina <jikos@kernel.org> wrote:
>
> On Tue, 11 Aug 2026, Lorenzo Stoakes (ARM) wrote:
>
> > > In my opinion, quite a lot of the problems that get raised by the CFP
> > > on this list, often get resolved on this list, which to my mind
> > > suggests we just need to have a better year round maintainers list
> > > that doesn't get consumed by patches or internal subsystem matters.
> >
> > Yeah that's not a bad idea!
>
> I think that the workflows@ ML is more or less pretty much exactly for
> this purpose ... ?

workflows@ the cause and solution off all kernel problems...

sorry I didn't sleep much last night :-)

Dave.
