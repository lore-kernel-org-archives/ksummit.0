Received: from fout-a7-smtp.messagingengine.com (fout-a7-smtp.messagingengine.com [103.168.172.150])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B912C36E467
	for <ksummit@lists.linux.dev>; Wed, 30 Sep 2026 03:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.150
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790737211; cv=none; b=FCWzQyBgPPFMMO/XK9cMdATcS8DhA90GUCo1GEx2FPe+VDansuAzpTRJdvl2uYesvyWPnLmjXeMChorowT/m7l69zCP45vpK9G//edFawscC15X0jpmKGuX9L379BA41NvkZM59ZMOgK7kQxwUKclTaDuwQlutSvagGK371x7Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790737211; c=relaxed/simple;
	bh=F0iA2FOWtphrZLjTlmtwZUdkwLKJTmGEPKSdjpgNY30=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=n1aF42bJN1I9Z4gZWE0jyDGMhm1+91odIQ0GEjlMGzGeWstsjyVILGGlMsvS30VoxicxLTNnExbudbZSoLXyulAbpMX9sv3YQFw1zVJh3+/olS3enKY4i/Nu/9meZDp8JJy7jrAOzgHxf16GUvGrWDOMnvHkpGjuJL2hgeHE4w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wolber.net; spf=pass smtp.mailfrom=wolber.net; dkim=pass (2048-bit key) header.d=wolber.net header.i=@wolber.net header.b=gNhvXPgt; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=ONDsgeMa; arc=none smtp.client-ip=103.168.172.150
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wolber.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wolber.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wolber.net header.i=@wolber.net header.b="gNhvXPgt";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="ONDsgeMa"
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.phl.internal (Postfix) with ESMTP id AB709EC031D;
	Tue, 29 Sep 2026 23:00:07 -0400 (EDT)
Received: from phl-imap-03 ([10.202.2.93])
  by phl-compute-03.internal (MEProxy); Tue, 29 Sep 2026 23:00:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolber.net; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1790737207;
	 x=1790823607; bh=F0iA2FOWtphrZLjTlmtwZUdkwLKJTmGEPKSdjpgNY30=; b=
	gNhvXPgtZvsKEfyS6w4WxF4LCTEymf6G+r+dNkniDjc6C8kc1uc518MwjTzO3e7L
	g3Y0COMOVzu5f6FzusV0IEepeBrsnXDnTl5x7/f+qePRoqh09i7oVTHRvuDZhG0A
	j/tegYgXqNlGNfXlm0c0IQPqt21GjY63OrYcQSbPTghvLnvADhsi7yDjf0hOZZUL
	2P6dxFfnFM6+RZFKNJrEyNn/z4MMF5m6L4vxKIqTJHWTT691MEU9Bi1jvs5me5u0
	i5+k20ezeZPK3VAoY4/U5ZTOVLJXz2//FS2VQz7Rpbxba9GKhA3W7+POBgJhhs3Z
	hshL98lEXlEj8TCiizZAbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1790737207; x=
	1790823607; bh=F0iA2FOWtphrZLjTlmtwZUdkwLKJTmGEPKSdjpgNY30=; b=O
	NDsgeMarhPwJSYlr/UwksHH88b+3gj6S/f8LdoUlU6jL02TaNAq0WcywcqXXWX8Y
	tCRpmvymGeAHeAsTC2vTYIBPCKQsknmYi4TZ0W+os8eyN2JZ2lD5l7TSBb8v1mhj
	bsfr3BsX0svrvIfaJjrg32ScVQ9zYtvSbHiWp06V9xwDf50aRucHvT9NCAzGjWgc
	pqs4pKBdEJqqPnKuq1IjpgtS1QF1aXG7n5Opt1zJUg9A8CBB6K/FBJDW34Tqp3+u
	dj31a8PzGrdaMvARKBXWlqMIVbZnx7Rz6sKf/IpuCzefBhkSXcKPc0eLLhPYeEBI
	hOuDoBzY3I0/grM8/EOtg==
X-ME-Sender: <xms:N3u8anMDtbnxGYnjzBZFn8sKx-Dqx2nm4IumIXtR4iZPLA4nT5w28A>
    <xme:N3u8asydvnYA142xorcWJFR3Lof9-h74S2neJNWJYSpRYh9AwJhlVeVFxdVccpVfm
    8xaHbU59dDx0T7bWxT2popLmE4iB5qya4Wq5VXgjoLLCGnH6RlQgg>
X-ME-Proxy-Cause: dmFkZTFvO/hMUsX7XqC+JC253ekDDkyRYOwKPtUdyZyWmQDWkxv7GqNkxyZ1Y+8dLq65so
    iUBAs44/QXlRbfZk8atqGjnV5Oy/fqdfwa9FJJS7xgMQV/HubhmZHU+nljIsYX4vAUaj9R
    B61wqTIdf5VhLpspd0cF7czjxy9J/ct/DP1Bl5eNqOkafNS/mLyKtfVvxmRJF+h9e3RCT+
    sRaB8XVVCMWcXIPtpljtCVYBYdPmDoAJW2zYEe9L2Q1w2dNKeYWd8j7LF5u5lgqPDMrOSP
    VMXyqE7hYileXfprrWTQ42UQr+9TgSvSoUfJta4NdbZuxDOIPAvhgObGn23PZG9tvuC4aH
    7GYzQLB7nV4HlvGtOyWkQ7IyUijqQ9lx8SJSU/kY09ORVKdTrOt9UNV73qAlyAlD0kmVjx
    ZeUozS0AYVkIPsVu3aDTFNKnZuiFEHrWcXu6DFcglXsES4/tnI16/8uBeohv36ArmxVaEn
    beQlx1vWCDDgCpQjMSLsy3PUUAqrVDW8WNP0vCURHqQlWZ9FJULXvPPBxbphaspP009GqO
    wLI74Dq46Uas1yy6/u95FZw+OBif2eNpGmkOl60UKexnDhqsEKsub2I+5mky01XazylIBY
    TfJ2kxHc7PqStzTrIPC5RCQ95gBCMAkEf7ABs7IwBO0HkkVqNMMa5FodLjBg
X-ME-Proxy: <xmx:N3u8aitSH7Rk9hHRwnHjvn19DcGwkKcLCQvv5CujW4h7f_bug4QPjg>
    <xmx:N3u8aqifQQ80rc24iRxw6eEqr5tusu5jGfa-dILn3ElmDx59eIN_Uw>
    <xmx:N3u8aobCX68qZ6dNs92lXlK1km3MIwLSSL6z-sMXattxQiKgxLHVWA>
    <xmx:N3u8apauFBWc4dyjq4noQ2PDewo0zlEYQUg15In2xFwBEV6GvLoAhg>
    <xmx:N3u8alLhIbFndHvT-VYTxyXTXSM9_NGYvjfeXQHTUBc8SIYYYuitFzqN>
Feedback-ID: i5cf64821:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 2FDED18E006C; Tue, 29 Sep 2026 23:00:07 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-ThreadId: AqdtmtEvmY77
Date: Wed, 30 Sep 2026 02:57:03 +0000
From: "Chuck Wolber" <chuck@wolber.net>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>,
 "Gabriele Monaco" <gmonaco@redhat.com>
Cc: "Steven Rostedt" <rostedt@goodmis.org>, "Theodore Tso" <tytso@mit.edu>,
 "Miguel Ojeda" <miguel.ojeda.sandonis@gmail.com>,
 "Greg KH" <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev,
 istoppa@nvidia.com, "Kate Stewart" <kstewart@linuxfoundation.org>,
 "Gabriele Paoloni" <gpaoloni@redhat.com>
Message-Id: <620a54dd-3930-4dcd-a9e6-ebdbb103e164@app.fastmail.com>
In-Reply-To: 
 <CAH2bzCR_hwxVbH-rfUHzj1-70mU7SkRY=3OgHEe7om5kZ605sQ@mail.gmail.com>
References: 
 <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh>
 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <ap-AmsGgDNFYLlw8@mit.edu>
 <CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
 <aqARgWGWYG5kZW9g@mit.edu>
 <CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
 <20260908152921.3c90bdfa@gandalf.local.home>
 <CAH2bzCQYFDvUXdUwE-vS03=QSqO9TuYdN+=kdrYGhL+ttw=BOQ@mail.gmail.com>
 <20260908191440.65efef15@gandalf.local.home>
 <CAH2bzCR3_DJOuW+jfkH7tkx-j4KbPJHVx2k2Z6X=+vaS6rmqng@mail.gmail.com>
 <7d1c7f9677b6c5e9abec4d1ebc7c83cbdaa3e1ad.camel@redhat.com>
 <CAH2bzCR_hwxVbH-rfUHzj1-70mU7SkRY=3OgHEe7om5kZ605sQ@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by generalizing ad-hoc
 safety mechanisms
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

On Wed, Sep 9, 2026, at 9:40 AM, igor.stoppa@gmail.com wrote:

[...]

> And the safety problem is too complex for affording any form of NIH-ism

Safety is deterministic behavior within a specified range of conditions.

Outside of specific industries, the word "bug" is used to describe
behavior that violates expectations.

The safety case is just a desire to make Linux more deterministic so
that it can be used in places where failure has a greater cost.

The payback is more deterministic behavior under all conditions.


> It is a limitation that - as expected - comes from trying to adapt a
> tool that was
> born with a different purpose in mind.
> The idea of leveraging the existing ftrace infrastructure often bubbles up in
> FuSa circles. It's undoubtedly tempting.

Both RV and ftrace are excellent tools, but they are only part of the
story. Deterministic behavior in a safety critical context requires an
answer for when those tools detect non-conformance.

That is why pruning the potential state space (e.g. your fences
proposal), is almost certainly worthwhile. Even non-safety critical
contexts should benefit from it.


> This is perhaps one of my favourite pet peeves with the approach taken by
> many functional safety initiatives.
> They start looking for a tool that might solve the problem, but skip
> what should be
> instead a mandatory entry vetting:

My pet peeve goes even further back than that.

The case for safety is just a version of what we all expect from any
software - something that does not violate our expectations.

It makes little difference that our expectation is to not die when we
are ensconced in a tin can at 40,000 feet.

The safety case is just finding a way to make software work the way we
expect under some pretty hostile conditions.

If we can make it work on an airplane or an F1 car, your cloud server
and desktop experience is going to be significantly improved in the
process.


> Is the tool immune from the type of interference it should monitor?
> In other words, is it qualifiable?
> If not, can it be made compliant with FFI requirements?

Qualifiable == evidence of deterministic behavior under specified
conditions. It is no more complex than that.

Every industry has specific means-of-compliance, but all roads lead to
"works as expected when operated the way the designers intended".

That statement is also the hope that is wrapped up in every single
kernel release.


> From this perspective, safety is worse than security, because security usually
> lets you plan your defences so that you can use anything available, to
> prevent an attack.
> Because the core system is assumed to be trusted, usually.

I presented on this at OSSNA in 2024. I characterized it as the
"Cinderblock Problem".

https://www.youtube.com/watch?v=c8KCZFvIA2s


..Ch:W..
