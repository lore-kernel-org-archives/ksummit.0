Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1486433E82
	for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 14:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.121.94.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784817052; cv=none; b=GcpOBxSPFmqvxEpa9oAP8P74CvAQciflLKOn9AQ8R7IksGmwSoBUtMN9BB3I1pZm8Qw87VR0p5NqhrZ+qW4/ynYlFk4pLHrj7YoQq9yu73t6nhMDIetYfYQyfuRyWvYm5q6iF9PsyETVF7JolRi/cp1zsiB16tgD5Q2MI94Mclw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784817052; c=relaxed/simple;
	bh=/Hqp/NqqRMwC4PKzzOIPOZFMKfBiqNckhs2JQzuaLwQ=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=gDnsAyF5LG0gONXGS7g3pj6VHTAImQ8Ta2v9dDHjbkjum3bNFLNdAakMAkOUtFIXxYbIbweTTW8vykWPBq7b4j1Vn2HHm3jmxalXQiqiDOS3pVKv3ZAD7bv2ePscddnMhh6ymdsJZaR7IkV6pUiDon+8f3uDv//LkKWIeUAqsEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xs4all.nl; spf=pass smtp.mailfrom=xs4all.nl; dkim=pass (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b=IQRK/sqf; arc=none smtp.client-ip=195.121.94.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xs4all.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xs4all.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="IQRK/sqf"
X-KPN-MessageId: 14b3114d-86a3-11f1-8f54-005056992ed3
Received: from mta.kpnmail.nl (unknown [10.31.161.190])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 14b3114d-86a3-11f1-8f54-005056992ed3;
	Thu, 23 Jul 2026 16:30:41 +0200 (CEST)
Received: from mtaoutbound.kpnmail.nl (unknown [10.128.135.190])
	by mta.kpnmail.nl (Halon) with ESMTP
	id 14b21036-86a3-11f1-b312-0050569977a2;
	Thu, 23 Jul 2026 16:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:subject:message-id:to:from:date;
	bh=ch/p2ObCgGW33W+zR+tzGHWAmCLGwLt640QAadpOQII=;
	b=IQRK/sqf6t9Q9IiRhGZK53eiF4IDKpfnauBw/YaM7w364I+2JDPhTMo/QFcurXwAqQnBSQaywc+yf
	 2E1MTR1aNkkOiwzdbUyVnb1yry/BkId6978Pi/29wkzjVyyo8IMoRUenYliXiELv9MD8FHpPBY0ak0
	 a/dx4stjkBKOo6IR/pUSadoFR28zE0c+tWRrqJDKeU1jZf0AKzOtiQaUjgOFGeUKRHbOFZpOHyWPso
	 Ufh2SqBtZyr0QpGs1id4Iil+Kg1HlcnL4L3feY4SpKBnxUQcYkPNheLwdSiPeNWQx/uM+nbKGVqhHO
	 QwE2gWCM3HUfEd6hpg/eY/M/bX9LQpw==
X-KPN-MID: 33|u5BSxb4mXvWhve+k0sdIxMI6nlNoLWeVFG+tNLymMS7sVZxVClJr/hgU4wr+Szs
 HeIkvto/DVTeHf+YGnoc1m2M1icV1I/Nqy83mE1u5AAc=
X-CMASSUN: 33|Wo3So6+xRPqu3CpLfour8fXCBytLDHoSISVlDKGlonHfk/2YoP249X1Ndtz3qU6
 qCPuoCM7JbO+eYXnxPqHW1w==
X-KPN-VerifiedSender: Yes
Received: from cpxoxapps-mh08 (cpxoxapps-mh08.personalcloud.so.kpn.org [10.128.135.214])
	by mtaoutbound.kpnmail.nl (Halon) with ESMTPSA
	id 14a7d8bd-86a3-11f1-916a-005056995d6c;
	Thu, 23 Jul 2026 16:30:40 +0200 (CEST)
Date: Thu, 23 Jul 2026 16:30:40 +0200 (CEST)
From: Jori Koolstra <jkoolstra@xs4all.nl>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Sasha Levin <sashal@kernel.org>, Mark Brown <broonie@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Message-ID: <329279638.294603.1784817040949@kpc.webmail.kpnmail.nl>
In-Reply-To: <CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com>
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
 <alkFzdJobnnMjJ4v@laps> <amAEIpVXxJbVgT2Z@lt-jori.localdomain>
 <CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Normal


> Op 22-07-2026 02:57 CEST schreef Linus Torvalds <torvalds@linux-foundation.org>:
> 
>  
> On Tue, 21 Jul 2026 at 17:18, Jori Koolstra <jkoolstra@xs4all.nl> wrote:
> >
> > Can't we just deprioritize invasive contributions to core subsystems by
> > unknown people?
> 
> I think that's something that should be happening pretty much by
> default, and has nothing to do with AI except in the sense that AI can
> make it easier for random unknown people to generate likely-looking
> large and invasive patches.
> 

Yes, but this is precisely the issue right :)

> Basically, I think a big issue in open source - in fact in my opinion
> *the* biggest issue - is the basic notion of "trust" in contributions.
> 
> And that trust can happen either due to knowing the people involved
> and trusting them - regardless of whether they then might use AI
> tools.
> 
> Or it can happen by looking at the patch itself, and trusting the
> contribution that way (and then the submitter grows his or her trust
> over time that way..
> 

Even regardless of correctness, which is of course the main concern for
kernel development, trust is also involved in spending time on a review.
For this reason, in the kernel mentorship program, we are not accepting
of AI contributions regardless of correctness. The mentors spend time to
review code and engage with first-time submitters, not because the small
bug fixes or deprecated API removals are very important, but because we
invest in these people so that some of them will hopefully learn and be
encouraged to eventually become contributors or maintainers. So we have
to trust that someone does not automate this in order to just get their
name in the kernel.

So trust and AI are mixed-up in this way too.

> But basically, without trusting a submission some way, the submission
> shouldn't be accepted.
> 
> And the corollary to that basic issue of trust is that invasive
> contributions from unknown people should be much less likely to be
> accepted.
> 
> (Here I define "invasive contribution" as something that is hard to
> verify as a patch - there can be large and invasive patches that are
> easy to verify with tooling, so it's not necessarily about the size
> per se).
> 
> Now, I think the other side of AI - and this is where Sashiko comes in
> - is that it basically does end up being a tool that can then increase
> the trust in the patch.
> 
> So AI giveth, and AI taketh away. But the basic issue shouldn't be AI
> per se, it should be that notion of "trust".
> 
> And yes, some maintainers will then trust tools like Sashiko more than others.
> 
> And that's perfectly fine.
> 
>             Linus

It might be worthwhile to discuss how LLMs affect trust and the various ways
maintainers/contributors/reviewers are dealing with this. Not to formalize it,
which I agree is likely to lead to poor results, but as an empirical reference
points.

Best,
Jori.
