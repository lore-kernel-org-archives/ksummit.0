Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08CF1DC1AB
	for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 13:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784381921; cv=none; b=GWEVj5NZZhynkasApDCJ5XJWcg+wIKsM6aPj0FFMtdvJENMtFmHb2PRjorOODR2uopIjuHMqsWwWmn4vNoqtslePqoxnabHab96oJpWyyDnrLInDaZnv6/GX/CuSKpIE8Fn7qUHQCmMnC/wEBDP72xBUiiWr8su2QOdqDbNVNB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784381921; c=relaxed/simple;
	bh=GSovra1h8HgSwKxtayXH3L1K+UrrUR3zrObS6IzUChE=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=Z8GsPZ6cH35mXrGEKNDjMfAlgg2eq0LACpWWQlacfHAdsUm8NLjyOfyS5MtCXGNlGYWrt6ctKOuiM3+Uo3nseUjrBM8PP3NLSOL+UVpirpeEkL/smFnA9N7CXuAj3gf1Z387HYojpWMJN6srAG3fhxdYGJBKFIENUMlNJULVr4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C5HTMVfK; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C5HTMVfK"
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-81eef95653fso15452047b3.2
        for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 06:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784381918; x=1784986718; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=I+mjwHi01bweU7t3uEEMu5ScDl+a86SF0pEBlhQXY2M=;
        b=C5HTMVfKliQfv8xHbt6l/AjziMIXoP23WOusu4KkG7RnnzuvW1RXWbNJ8gtOspmnhT
         BJhu6t9TsCD/A1oJRqjVEsprCsU0Wq2bpVqFrgIFBiNeicoY4o9Y+VV9otIlFj5Fkex+
         fWJs/0NGgdi/BxeVhYP8eRcDhA/W5BLZxLfVvDabxYMuwwiOtLdhvOlyUuzlZ/t2iU6U
         FRE1ZLJBoUHdqERw3J9Px+nuFR60ASGc+fIvd5JYTwizak4w3aNyh0rHcJQvuS3KM9qT
         o1jFr1pjdoAglnYRCYIQ9Agrlw9t/i5GfJAwONuBNFs0QaPhgXui3Lv6146vWv1ZimCp
         F9Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784381918; x=1784986718;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=I+mjwHi01bweU7t3uEEMu5ScDl+a86SF0pEBlhQXY2M=;
        b=aNIpxZf50T0j8OwZdbOsGMnRso0hfbXCp5fRQmL5hJHun1Xi3mlnGlMsHElMVAxMR8
         iIF8FUiis+GrFrAhAKaZE2P0eUYs9Kce3EQKfKuqWxdF9Vn63qoLfuiVqcI08d+VBZsN
         Mha5rWksmDR9iVoqmP4B9nlaJjwX6EDK5wWqzwHf/0lGdfS7a553jmmK05Sc13kOmUzJ
         giZkuhU2RDszz12oFb45ozYvF0FfMc5sTdLodSj33p7oH6P4SA9lbmSyu7K09svz+L+r
         H9073cDSvIYJ6HSSSsRqSntNhCB9jCosZQken0LvlV8C87/3kp/wlxPsyzjtotQHY47R
         8Vxg==
X-Forwarded-Encrypted: i=1; AHgh+RpJ0Zba1pBjGAZ15HllE57xuNrvp514ilPRszxIyrTYPMgWSpooS5Q0oJqrNEOLyqnkPdTd2NZo@lists.linux.dev
X-Gm-Message-State: AOJu0YzbVHI+DaJjkwrtqY5LMjgyYngkwtn9ICB5JOeQbmIjLt+3N+Wo
	KcYOKpuaK3EG+/rBG8KiqWZYEK7uACFzHP+QGl1ex3SYJUM9IV9jnuLV
X-Gm-Gg: AfdE7ckoFHfX553AN+DB6fbTYXmnIDXdv81Lpyy52oNRvMMT7mmuQatOiLymTEZHOYY
	ELGSET2K4CFClW+dE1vXxASxzWQnr14+iPeuwV/hiBGTGC5T5KqMVKe5gVvScBxS/t4Uhcb6LIW
	V5qWS1nRzWyiuPWP0wvF6LnLKPjOE4nK0SB/4EJvKnyDn7ShlLPPZm0vrUFJhyuxFhtA141FtSL
	SObm4m6XlhPqBDmWWfGubqPRnfvQFPSq8SuwXHfAUId5XeFRRN0IhwgYy0LHYcYzeK+UOPzNsNz
	q4rEDXJSn2G9GbVfLmfRuN1C7VKJftBylEfYpPrLEJRTaZ3lJxVA6OlQ30xoXDX99FBpc2jaIbX
	2sLQcr7QtAP3Tstnmrmj5Gcxag5hL+eVlYB2f21W5bAhpcfybOE36w9rXlg+q3PJfgTRMWZhz3N
	AF2Nb7P8yCjn4yAGgC2rTvfuqVle23
X-Received: by 2002:a05:690c:260d:b0:81e:45a6:bd5a with SMTP id 00721157ae682-81ef21743e5mr22155127b3.0.1784381918095;
        Sat, 18 Jul 2026 06:38:38 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2804:2bf0:60e7:ae00:680c:818d:aabc:dba])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81ef40534dcsm30613097b3.16.2026.07.18.06.38.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jul 2026 06:38:37 -0700 (PDT)
Date: Sat, 18 Jul 2026 10:38:19 -0300
From: Arnaldo Melo <arnaldo.melo@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC: Roman Gushchin <roman.gushchin@linux.dev>, Jason Gunthorpe <jgg@nvidia.com>,
 ksummit@lists.linux.dev
Subject: =?US-ASCII?Q?Re=3A_=5BMAINTAINERS_SUMMIT=5D_The_place_of_AI?=
 =?US-ASCII?Q?_code_review_in_the_Linux_Kernel_process?=
User-Agent: Thunderbird for Android
In-Reply-To: <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com> <20260715185757.GA191552@nvidia.com> <7ia4pl0oymo0.fsf@castle.c.googlers.com> <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com> <20260718010949.GG1889304@killaraus.ideasonboard.com> <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
Message-ID: <EE6BEE9D-91DB-4593-86D0-79A91EB780EA@gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On July 17, 2026 10:17:18 PM GMT-03:00, Linus Torvalds <torvalds@linux-fou=
ndation=2Eorg> wrote:
>On Fri, 17 Jul 2026 at 18:09, Laurent Pinchart
><laurent=2Epinchart@ideasonboard=2Ecom> wrote:
>>
>> > And then Y doesn't get done, and maybe X doesn't get done _either_,
>> > just because of some unrelated issue was pointed out as part of the
>> > discussion=2E
>>
>> It has caused and still causes friction, but I wouldn't dismiss it
>> entirely=2E I have seen multiple maintainers, including myself, ask for
>> yak shaving in ways that worked reasonably well=2E The key was to judge
>> how much yak shaving is reasonable (and the answer is invariably less
>> than a maintainer would wish for), and not making it mandatory=2E
>
>I agree that it sometimes works, and can even work well - a maintainer
>suggestion of "if you did this, that will clean things up" can even be
>a welcome thing - particularly when it is relevant to the original
>series and not just an incidental tangential thing=2E
>
>But we've also had maintainers that tried to get unrelated work done
>by making it a requirement for the subsystem, and pushed it way too
>hard, and it only resulted in problems=2E

Agreed

>So it *can* work, but as you say, it requires social skills and the
>ability to judge whether it's appropriate=2E
>
>And I think that when there is AI review, people are less likely to
>see it as a positive thing when the AI then points out pre-existing
>problems=2E

At first I disliked these seemingly never ending reporting of preexisting =
issues, but by now I love it, I just ask Claude to collect those in TODO fi=
les by topic, discarding duplicate reports or improving the description of =
the problem if the new report has more details or suggestions of how to fix=
 it=2E=20

It would be waste if I didn't track that free work Sashiko did for me, I c=
an't address them all straight away, but saving them for later consideratio=
n is what seems sensible to do=2E

When I'm bored I go on and work with Claude, or sometimes even alone, like=
 in the old days, fixing what I think is more pressing=2E ;-)

acme@number:~/git/perf-tools-next$ ls -la tools/perf/TODO=2E*
-rw-r--r--=2E 1 acme acme   3647 May 24 00:35 tools/perf/TODO=2Earm64-test=
-gaps
-rw-r--r--=2E 1 acme acme   5151 Jun 16 15:55 tools/perf/TODO=2Ecleanup
-rw-r--r--=2E 1 acme acme   2113 May 23 23:13 tools/perf/TODO=2Edata-type-=
profiling-perf
-rw-r--r--=2E 1 acme acme   1386 Jun 13 15:06 tools/perf/TODO=2Eflaky-perf=
-tests
-rw-r--r--=2E 1 acme acme 106401 Jun 18 17:08 tools/perf/TODO=2Ehardening
acme@number:~/git/perf-tools-next$

>So if the AI then also gives a solution to the problem, I think people
>will appreciate the process more=2E

That would be even better and it's what Chris Mason's kres does:

https://github=2Ecom/masoncl/kres

Kernel code RESearch agent =E2=80=94 an LLM-driven multi-agent REPL for re=
viewing, auditing, and finding bugs in C source trees=2E The Linux kernel i=
s the primary target; any large C codebase with source-level tooling works =
too=2E

-----

More specifically:

https://github=2Ecom/masoncl/kres/blob/main/docs/generating-fixes=2Emd

The document is long, this part should entice reading more:=20

-------
Research Before Editing=20

The first phase is not patch generation=2E It is an audit=2E

Research reads the finding/prose, current source, relevant callers, and en=
ough local history to decide whether the report is actionable=2E The result=
 is structured, not inferred from prose:

- confirmed: the bug and fix contract are proven;
- invalid: source or commit evidence disproves the bug;
- unconfirmed: evidence is insufficient to patch=2E

Only=C2=A0confirmed=C2=A0reaches patch writing=2E=C2=A0invalid=C2=A0and=C2=
=A0unconfirmed=C2=A0stop before edits=2E For finding-directory runs, kres w=
rites status artifacts such as=C2=A0invalidation=2Emd=C2=A0or=C2=A0partial-=
invalidation=2Emd=C2=A0when appropriate=2E

Research is also responsible for deciding whether the finding is one commi=
t or a series=2E
-------

- Arnaldo 
