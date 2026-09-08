Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF2E49AA3F
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 23:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788911345; cv=pass; b=d5B1fzdW0+EAmTyNxxOIe8gANOOgm7eqLixWa5g4ffqNYbOEJSsMTvxPtsHlpL30emFpqoAidvhRvDU/HxbysfrGtakHxE0gCFSktmU+0FaOo3CtjGxybUSOvwhrvZ3MKb2bi8jO5gfdFviD+eqIZn6zg2B5e8TQt/rQKyVNbKA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788911345; c=relaxed/simple;
	bh=DGreL4F71GnxdLbbCA3RiV8cN27LgRiF2EZcNGs15hU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iCOxFPuQLdBWcc7tK+Eic+fPlBFkXvZgm24dhlOdDjYjpbQi+48romW40kwqiDm6aH7U/X+i26UbSwibDJWnfsN6C4lSgYoZ3RczlUqPkvjiZ6tKTKc1FmSfLUA4MZiOxq4lVMVfx4m9cTQs5zhwdxp4ikTaqGO9DFT42b4hCWA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aSVAGJvV; arc=pass smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aSVAGJvV"
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4858be8b509so2311367f8f.0
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 16:49:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788911342; cv=none;
        d=google.com; s=arc-20260327;
        b=I2YLd1s9QroY+6caMzRXzPPq2uVF6HfgJR6vtumlWNfdMGZBRch27ldpzUCsJ56mI+
         sx8PtOY+L9Zgg0C2XOW8ML4LO8FH9wt4iLEknZDDuhbpl0b7PRL3Tsx9hQVLnOwlj/Eb
         1J+SI3wI2Rmf+AxEYe+zeZgQ1cH7paBBThJtDUjB3J3b7wAvI/s6LjCV3y/EbeDatxof
         Mjo3jNvx7AB9/5cFQiDcYFGrA5IrWYAW5JkSRiiYnn8XEoo524sDKLJmBXLgxBBQsSPI
         VGhZzzv3DBHl9ID5Xr2TvXfMaANzjW0xXJA3JS0fhwgQRDdteRXVsrBgjn891OH1BXrZ
         wjtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vYcRwN1CbpQfOHMFhuXVPhSzQf1CxYu2+kVQ+7hsl2A=;
        fh=yg/hr3KqZB/b4RcbTTQVnDB8qE34nDR1DijgSftXaH4=;
        b=dKEP2/LvMcKPv6qPXT6yJ1pe8vMBopMyFB8Uj7tTGjTjoKgq8S4rLDkdMkHVlHd9Ue
         EzRJ74N0zeaVGQYay+jiFaTgshyga1H1IkcG1V2SqHRUbnBzLPBG8ccKpzzeCU9i38jb
         f33MsN/LXiJFrncl4C7MFo4Q5j6fIHQNWGqRcgNvCSEbnj5E9GPfr0OYo5LOxhvcZ7b6
         Djg4htOnvK1rlJJK5oOMmHbJoXUzO0h/nU+A/+5eW8H3FDxqaOProaZYu0iCQuyjADGk
         PynuzYAQ9LXoqoT3uuIGmGHGnMZ9T2/pP227OvMvPRlUKiWdpaR0f62QGmm6hbPr4zXf
         92Bg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788911342; x=1789516142; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vYcRwN1CbpQfOHMFhuXVPhSzQf1CxYu2+kVQ+7hsl2A=;
        b=aSVAGJvVLR7lwDF6jc97vnqFRyPKCvsb1/y07NCR807I6OSaSjyzTbhB9bG4Uo+t96
         u0gecU3qXIjOKFrW6voSDrZ0l3kaawCSSgNdxSPLmX2qA1bMbeNQ1tNYZBoxLTSALf5e
         YbYhbIxXi5U/dFCiRCOrpPHxDJcbamnRgk7FZr6bjfL+cL0yM8/bNqr9hznOZrp7jbjE
         lVdrH+gzF6DJI0cxxVrYN3jHhQqhXrwrUWkUW3rBPLymsW+1abYIN58FqjK14gIW9BCg
         vhqRb2UhTwxNABhU/S64ketb5upqd7T9YMbr3qCwEvqLTfcL759+vt9g+x9OV3o65DNC
         LlSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788911342; x=1789516142;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=vYcRwN1CbpQfOHMFhuXVPhSzQf1CxYu2+kVQ+7hsl2A=;
        b=pP3pbKQc/tpQokM1nygXmhnmFv6QtSR9FsyvLMrNj6OlgqrIdMxkK74MdqFbx7k0gF
         ZUIFXWxMIo1KTCbL34i341zUL+DAgU2gfs1SBI3UufhBsOrFR4ybaZ4JwdnsRIHmOFcz
         EhuocpV0m1kY2o7vsMAgYH/o7fOiTuwrmdq8g1PQEH6CObM4wJ5sFLG+Y3sfPpmctoCE
         iKrORfZedcxGAJDi+cbqWjkz0BoedaNNpzHSrRUq2umaDlBf7YmPeKxGg/H2ly/BKtBQ
         SbDBDkdkx2pvHz0p54oFvwNcxy+EgfpmSWzM6Dp7XX63pNfAM9rsj5N3gqPoizP1sRWa
         QHqw==
X-Forwarded-Encrypted: i=1; AKwUvBwGeubCrgCQNdgE493RzDYJ5YVf1WwndEhmkx4hHJUCc0EZP+MPE51XORXtk+6WeMAs7TewwQqb@lists.linux.dev
X-Gm-Message-State: AFuF++lAipE/LIeL9W+KFLHkz6iLjhnqNUFUqn7parCy6aIuT8mMxGc2
	cKQjm13/W3BBJJBl2YiII8+YkQ3te5ddL5Vm7IZILUvbhqHYQfp5j4JpoZgHU2J29yKlP+Wiezf
	hee0qFLin8L4O4/5LFaXRgbBrQB+TtKE=
X-Gm-Gg: AYBFou3Oh3N4YeCRM33Q4uteII4XRNKop20dy8E+MJDj1DU1dxvND69PWZFk5dB9kWK
	1vQp9UpmjTk1VNI/ihAdlqgi3OBq4V2jvnJCVa2GUdNr/tU4QTdwjbolXnIljroynN4FKje63f2
	AAfZF3KmdJ5Ug20NWpmE3ll/Qmqqw2aj0Ju47FNOXn3YuOoeVxU3I3/D2G0g9Fs7PfY4l/t+5ln
	hAAmDJtKtx9D9nepOZCcBtZGqki4hlf38OrlaVTSEbR54Nmpx8bkfcJt6kWaiFSdtBsJiToncUA
	zpwIsydCgx6EZ1/bTfDW/UkiRlvlh1EsMp0CH+buTDQEng==
X-Received: by 2002:a05:600c:4e8e:b0:49c:dada:f57f with SMTP id
 5b1f17b1804b1-49cf823cd42mr290047725e9.7.1788911341829; Tue, 08 Sep 2026
 16:49:01 -0700 (PDT)
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
 <20260908191440.65efef15@gandalf.local.home>
In-Reply-To: <20260908191440.65efef15@gandalf.local.home>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Wed, 9 Sep 2026 02:48:50 +0300
X-Gm-Features: AcwNN1XnNkFrgGPN2lmuVJb-QgytZ4JV2MY50EbCWHcQ4RnGp1z1T6B75NJrnPs
Message-ID: <CAH2bzCR3_DJOuW+jfkH7tkx-j4KbPJHVx2k2Z6X=+vaS6rmqng@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Theodore Tso <tytso@mit.edu>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com, 
	Kate Stewart <kstewart@linuxfoundation.org>, Gabriele Paoloni <gpaoloni@redhat.com>, 
	Gabriele Monaco <gmonaco@redhat.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 9 Sept 2026 at 02:13, Steven Rostedt <rostedt@goodmis.org> wrote:
>
>
> [ Adding another Gabriele to the mix ]
>
> On Wed, 9 Sep 2026 00:13:19 +0300
> "igor.stoppa@gmail.com" <igor.stoppa@gmail.com> wrote:

[...]

> > But that one time that the bug hits the jackpot, what is gonna prevent
> > it from causing
> > an unsafe situation? E.g. wrong angle passed to the steering actuator,
> > car that doesn't follow a turn.
> >
> > These situations must be covered, explicitly.
>
> Sounds very much what the Runtime Verifier[1] is used for. It is code that
> adds a model represented by a state machine and hooks to tracepoints within
> the kernel. It moves the state along based on the information it monitors
> and if it were to ever detect an anomaly it would trigger a reaction (could
> be simply panic the kernel to go into a safety critical mode).

> [1] https://docs.kernel.org/trace/rv/runtime-verification.html

Monitoring is a way of doing it, yes, and I am familiar with the
runtime verification monitor.
We actually did consider it, some time ago when we were feeling the waters.

But it won't cut it, for most practical safety cases.

In order to detect a deviation, first of all you need to be able to model it.
Modeling it adds extra complexity and detecting it adds overhead.
Even if minimal, once it starts to be applied to potentially large
targets, it adds up.
And that's for the drivers.
If I have a SR (Safety Related) process, it is still exposed to interference
from the kernel through the linear map.

Adding monitoring to pages worth of data used by the process would
kill the system
(and I'm intentionally leaving out code, but that's exposed to
interference as well).

The humble MMU is the simplest and most effective way to protect
things with minimal overhead,
once one has in place the support for individually selecting which
memory map any given kernel
thread needs to use at a given moment. And for marshalling allocations
so that SR data gets
backed by pages that are not writable by non-safety-qualified code.
We happen to have it.

The other problem with these sort of readily-available components from
the kernel is that usually
they take freely from any available API (and why shouldn't they, if it
is compatible with their intended purpose)
which leads to a dependency hell when it comes to qualifying the code
supporting safety goal.
Because they would pull in more than half of the kernel.

Qualifying rigorously a single kmalloc invocation would spiral into
endless work.

BTW, "qualifying" means reviewing the code and analyzing it and
"proving" that it has
no bugs that would be compromising the intended safe behavior.

Frankly I would never even entertain the idea that we could seriously
claim to have done
carpet review on the kmalloc function call graph and proven that all
of them are safe.

So, we intentionally limit ourselves to having, as dependency of our
custom fences,
only functions that are simple enough that we can honestly and credibly claim to
have reviewed adequately.

-- 
thanks, igor
