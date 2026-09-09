Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57F547DD47
	for <ksummit@lists.linux.dev>; Wed,  9 Sep 2026 09:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788946834; cv=pass; b=bszK8f0uvvPGm45PUWT+alNE6zxDSFq6LbfF3fMJrVrGeD0Lzw1ANXYWLQNDhO0lU26n0O/glSemLLzFC2gpbpYTwygwtsIS7nB+q/9eB0MXx6pDK5HQqFThZeEO184PCO8yu5wgQrZYVmQ18Ke7A6AS67mkP3SABezkLMhyFn8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788946834; c=relaxed/simple;
	bh=FcU1MVPtthA3FH57jNXnndf0LODqNpdmykml3EEHrHs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s/d0kcIccfZDt2PHHOEbRUSFHiv0nHe68fDzWMH9QcaFHHXGi9XvfUQLvIAPfU97VBt2XGykIGLPfs2l0cqtm5v54Rlv6NocEvvVb286O8PbmxGHfHGo/nwOXR8ZznZnBawPSvUQmaW8e+DY54n9GQh1ZUKAbuQUx0FOWII+Qr0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mNlCJWnN; arc=pass smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mNlCJWnN"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4957eefd361so44505535e9.1
        for <ksummit@lists.linux.dev>; Wed, 09 Sep 2026 02:40:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788946831; cv=none;
        d=google.com; s=arc-20260327;
        b=P7fLQzJtgX6Icdfo6jhKcYZQvgmyvqSupDTZYT8f8AOF3wkCOthbU13vsVCt7TGjhF
         UFvEMAJdE1tOY4niUVaJIbSDEHncvfOmpJlP10brKMfKd1ySQJ7ByiAWd1dRcqWoOIxO
         hl+hGHZT1uYbK+zFPoQzqJlLcY0YQloFxp+t6NyrgtOaUQVJE5K0bAY74KofJvjIHorg
         WFYSHV8kP3+wWWpS8Y5NIqngmWy3K2ZOqha3KsFl3VCMQ7VD1mMEOFGE6ibiKWDSV8t1
         5Mez/p4PiZ+/7nbHNOfPRmLJStCfOnjl8PZVZheVdNKRTm1zxyJlicePO/wxJ3SbGl9s
         gCfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FcU1MVPtthA3FH57jNXnndf0LODqNpdmykml3EEHrHs=;
        fh=wRO8FpKC+UbGowf9hfRbotfHUsgXqnwuRwl7nY4hOJk=;
        b=iCUnxuzPV1NSDaCbyMWOsSO3tnBzKO+JUhny1vVBzx2eY2WMP4VY3KYw/WjSGfvjTo
         jqgE/MUD0oSG1w1q0RPaJ7S2TDpQHrZc4dif2QIszE9MxrJeE5K6OUtJHUb/PYe+/cIU
         jmNk6mXAM0VnVIXEOtqOqPWeZZ0q4JTMdcpdrSgiarPALvhs3D1IOQ40bRHwJ6iHxsaQ
         5OimMBhXFlZhM80FC0Wa+hQl58fX1WQNyO1J1vFdpn+Il9wQbBkE3RUbaimvdCPYS8s/
         4GZnalANuueI8sQ/XOGfoXkxjKf8L9WkxVuqnBxpd/r5QuchSY34tfEFfh/Z0sbbU6sm
         XFjA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788946831; x=1789551631; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FcU1MVPtthA3FH57jNXnndf0LODqNpdmykml3EEHrHs=;
        b=mNlCJWnNNBb8JTZDUdO4Eheqaf2PWtAWXBLvzizIlmPeVLjJXWde4TJsldBpD+RSBm
         xpLF+cHw88VlQxitBXPcjPXI08dFWIqt2O/I5iISjUMpo1ZfXXFqUYOTgkEY6aH5ET2J
         jpSsU1gQqtW7tInbupmxNhDWWYV7ksNtK0W4wVVIWfPtwCA0xaEfQSgIUmvixLXwQXaI
         J6hfRoqBCMXddQpNV0LcLyGu7NJToDqRFT8RPa/4I9KLbnEIuQ8gjtV/htnOv+0AZy7z
         DAECn/cUQMSpoWqd6so8P4GTvY3d6je+uUqz5Xyt2GoJbknLZPtqVHyUOtvCrDZF9/oF
         /eUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788946831; x=1789551631;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=FcU1MVPtthA3FH57jNXnndf0LODqNpdmykml3EEHrHs=;
        b=hxqy/+VfeHWPAybXcSQVu7DYz4SSBBDujBwieh9rUuN5RCOOqfoTNpiNc6EKVkUK7P
         qcNMS+f6+7UajlFY9/w08UN8nKveP96MTmj3SC1n6tu769Iy3dMspGQJuRSBaMz2qhF1
         WgfPgprcP915CcU1rUlt5Mm2nQd1TqMCaXyCOX5Ai4+PGU8p8xTXeUdDsd49o7Oz34bA
         XPLk+sFo7atqOxhI8nR1b/kQKwC+Rfn6Apnbb9jqRM6J29KRGkiD6u1y/ae5HG/H31aK
         My2me8XLG5iByU1n5SZ6qU0wHX7HYbpc/lYNBRJi736E15L0pKhEg16l9GScLGHvRjE4
         5r+Q==
X-Forwarded-Encrypted: i=1; AKwUvBwst0z2ZTi8/w65vTkJc8SHWE6tpF5csv2TcQ4e774hJJ9Wf39YoddmiQtGUJUPH5/OcXlYGiFH@lists.linux.dev
X-Gm-Message-State: AFuF++lZybp9UAs5dW55Em5e1DlYhKgUbsWZUTcFKJcqRV8arSt+5QZs
	76f2fi18eeWoY2YCW6hwL3d2Hyurep4w0i7aQUGLfEG7GYjyUSxwozDT3RPVSwRTpvSveII12PP
	+2El2PrMzhG9rJyRFK2OGCHJZvA6BqJk=
X-Gm-Gg: AYBFou1+CPqhl/kbFCYGR5gJBYWOfCPdPZ6je953j9QDCbp0DiUIf3KmbTrHWv76stl
	hxTyzcQnj8XHoY7M9GhhCj08fBzX35bN31phMgMOwrcyGQqky4roPEjcEhWN3kRNVnNhG4xWaXH
	oAJ0ZvYh7v7F5IJyg9NyzuW462jSwPgarrMCBR29TUOFdh9x9V3pdHcNbKBgYbL+SJ1XpxRmgIq
	K+WGk5CETdmqdLKHkp0AjtF4CwoPPTUasYP5ovsEzSngO5+JcEeMmo5i6+UNLjuQmOAMrg0Uf6C
	QhFxywiR3IzEHdnqkAdMUxnZ6eJyubfz+yVqp5/O4/Gv5nIBephME/go
X-Received: by 2002:a05:600c:698c:b0:49c:fc6e:a3df with SMTP id
 5b1f17b1804b1-49cfc6ea7camr332899615e9.30.1788946830498; Wed, 09 Sep 2026
 02:40:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <ap-AmsGgDNFYLlw8@mit.edu> <CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
 <aqARgWGWYG5kZW9g@mit.edu> <CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
 <20260908152921.3c90bdfa@gandalf.local.home> <CAH2bzCQYFDvUXdUwE-vS03=QSqO9TuYdN+=kdrYGhL+ttw=BOQ@mail.gmail.com>
 <20260908191440.65efef15@gandalf.local.home> <CAH2bzCR3_DJOuW+jfkH7tkx-j4KbPJHVx2k2Z6X=+vaS6rmqng@mail.gmail.com>
 <7d1c7f9677b6c5e9abec4d1ebc7c83cbdaa3e1ad.camel@redhat.com>
In-Reply-To: <7d1c7f9677b6c5e9abec4d1ebc7c83cbdaa3e1ad.camel@redhat.com>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Wed, 9 Sep 2026 12:40:19 +0300
X-Gm-Features: AcwNN1Um_4GW46N-oLUNHISMLXrIXV6BI72NSSI31Oxk32Xykcug9bG9f7ZzZ4g
Message-ID: <CAH2bzCR_hwxVbH-rfUHzj1-70mU7SkRY=3OgHEe7om5kZ605sQ@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Gabriele Monaco <gmonaco@redhat.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Theodore Tso <tytso@mit.edu>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	ksummit@lists.linux.dev, istoppa@nvidia.com, 
	Kate Stewart <kstewart@linuxfoundation.org>, Gabriele Paoloni <gpaoloni@redhat.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 9 Sept 2026 at 10:44, Gabriele Monaco <gmonaco@redhat.com> wrote:
>
> On Wed, 2026-09-09 at 02:48 +0300, igor.stoppa@gmail.com wrote:
[...]

> > So, we intentionally limit ourselves to having, as dependency of our
> > custom fences, only functions that are simple enough that we can honestly and
> > credibly claim to have reviewed adequately.
>
> About this last point you make, RV was originally designed with this specific
> idea in mind. The simple Deterministic Automata have very few dependencies and
> the code path is as simple as possible to be verified.

Maybe you are unaware of this, but you are picking up a discussion we had
with the late Daniel Bristot de Oliveira.
I'm glad for the unexpected chance to remember him.

> Monitors can, optionally, add more bells and whistles like timers (most timed
> automata) or a dynamically allocated hashmap (per-object monitors).
> Those are not even compiled on monitors not using them.

To be clear: I have nothing ideological against the RV
Different tools have different capabilities, and what matters is to do the right
matchmaking between tools and use cases.
And the safety problem is too complex for affording any form of NIH-ism
I have spent some time studying how the RV works, and I am convinced that it
can deliver on its intended initial purpose. And well.

> There is also Linear Temporal Logic that sits somewhere in the middle, with
> slightly more complicated code but still few dependencies (bitmaps).

Yeah, bitmaps are one of the basic tools.
There is only so much variety one can achieve, given a certain HW architecture.

> Obviously all types of RV monitors rely on tracepoints, that's how they attach
> to kernel code and it isn't negotiable.

It is a limitation that - as expected - comes from trying to adapt a
tool that was
born with a different purpose in mind.
The idea of leveraging the existing ftrace infrastructure often bubbles up in
FuSa circles. It's undoubtedly tempting.

> You may be aware of it, but the issues and requirements of RV in the safety
> domain was discussed in [1].

Yes, I am aware, I had notified my concerns already.
Both Kate and Gab should have heard them many times =)
But I can do an encore, here below.

> Whether RV can be made free of interference to fit the functional safety use
> cases is still an open problem, though.

This is perhaps one of my favourite pet peeves with the approach taken by
many functional safety initiatives.
They start looking for a tool that might solve the problem, but skip
what should be
instead a mandatory entry vetting:

Is the tool immune from the type of interference it should monitor?
In other words, is it qualifiable?
If not, can it be made compliant with FFI requirements?

If the answer is no, then why bother going forward?
First find a solution to that. Or else there is no safety story.

Instead, often, this aspect is neglected till the very end.

Let me give an example that is similar in spirit:
containers, or rather cgroups.

They are often advertised as the solution to safety problems.
It is undeniable that one can use containers for limiting resource consumption
of certain groups of processes.

But is their implementation safe? They are pervasive, and if _their_ metadata
gets corrupted, they can actually impede the correct execution of those very
processes they were meant to protect.

> And of course, as you mentioned, in some cases RV just doesn't fit the
> requirements, but where the logic is complex for hardware-only solutions RV
> could help, if we figure the other issues out.

Precisely, "_if_ we figure the other issues out".
That should be the starting point. Not something postponed to the future.

An assessor worth their salt will go straight there:
"how does the tool defend itself, in the first place, before thinking
of how to save others?"

From this perspective, safety is worse than security, because security usually
lets you plan your defences so that you can use anything available, to
prevent an attack.
Because the core system is assumed to be trusted, usually.

With safety that assumption doesn't hold.
One needs to prove that the dependencies are acceptable.

You wrote earlier:

> The simple Deterministic Automata have very few dependencies and
> the code path is as simple as possible to be verified.

That is a start, but that statement is formulated in a subjective way.
And it is qualitative.
To be adequate, it should be turned into something objectively quantitative.
Measurable, verifiable.

e.g. if your "only" dependency is kmalloc or get_free_pages(), that is already
pretty much unsustainable, if you expect that those functions must be safe.

And if your automa depends on internal states (what else could it do?),
then what happens if those states are corrupted?

Some people will tell you that what I just described is too strict, and that
the standard allows for "expert opinion" or "expert judgement".

First of all, that sort of approach fails the completeness test:
it is assumed that the expert knows enough to actually assess the whole system
thoroughly. Or that you have a collection of experts.
Same thing: who knows well enough the entirety of the kernel code base
to confidently
assert that it has no bugs that would be harmful in these situations?
Would even the collective of kernel maintainers be comfortable with
that statement?

Another thing that you will hear is that things can be tested adequately.
There you have another completeness/observability problem:
who can ensure that the testing input/output vectors are sufficient to
expose all the
configuration of internal states that are relevant to safety?

It doesn't mean that this will prevent obtaining a safety certificate from some
assessing entity: different entities have different interpretations of
the standard.
One then should ask: what is the purpose of the exercise?
Getting a certificate or reaching a certain level of demonstrable safety?

The risk with the typical top-down approach is that one invests so
much in a certain
solution that it becomes extremely difficult to accept that it might
turn out to be unsuitable.

With bottom-up (ensure FFI of the monitor/fences first), that risk
doesn't exist.

--
thanks, igor
