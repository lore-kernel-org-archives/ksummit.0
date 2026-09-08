Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206163AD503
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 21:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788902015; cv=pass; b=FMOMmR6FZGJbo4EpiHkIsan8pwuYcMBFlJUCBwk78Qq+HAgLe4Wtnk/lAAjpLj4HqTWQe352LSNzcjNExEFKcfpOvsuo5LqJGMyhjeF31XWfnwP98sOlstbIkcoWUmELMzX9ZNgs/Q4sWLsqtmdu7TYiaIDo7r/F6WNLLAMTOnU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788902015; c=relaxed/simple;
	bh=4o4E93MpE9KgoYMh7DYoN/m95sfraw8LANDFhnNwvA4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bk2J0ghleKNdkl82HQpScVPUFUdpbVQwN1j1zXN+NZUKuvzWTPEDxvHiOT1AuKEZzqX5xTlknvBxt3CCm9uPq4lKddIZxGll4nkzk5TCpQkQX6FK7ydeDcU6OejHUe1WqNn4qGPTlSzi9Relikm3Iu9Vj7NCJmKf6UU4qZKeRMI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gpaFy02r; arc=pass smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gpaFy02r"
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4843e397f74so5520297f8f.1
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 14:13:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788902012; cv=none;
        d=google.com; s=arc-20260327;
        b=nnXzbgfsYamo9uj64XAkgL3ldqg9lsAhHEz0ZcyCBTifdpkHM5/t4GFugVxvgh0abM
         pOpKk1LSNo/48O9Rl4XdFacxzljAzAHjFW0WRK6VWxzd8wnXabdGARCiUvFIJR1AkIgd
         bR1WS1vxsS5HRkr9n2gz/4pmuFtavEzysioL6kHiqL3vzU+SVV+BdA7hNPza43rXk03c
         PkKlT7FjYberYrQWLH4C96iTKwAB2TH6RtPrkEGEkqwgAQ1BIKkB7vErYVbPsn2rDUPF
         YtwwEAJ+fwKMMB0sYql+35oaU8Y2iHnS48mtWHCN0vT8CbmaC6pGibIUl/eqB3cUkai1
         NVDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lIs1r8t4sujmkJB8wXcexEf7FSBQ6RZtglCZGGAWn9U=;
        fh=jYia/rkyLP7ty8lRpdoyi4hntWZjgJA6+w0OJgmMAZ4=;
        b=OMhTuwPOt/70nIJKFJshfiuZpr57esZedoS0zAoXiBokFvYlWs70pYFP7M51AMneiD
         rHS1CjbJMYvr3R/DKUvw7j5gZ8Uj6CqYytY7ci4GSUzq1i0pZA7xZxF9fzTgcCVBiEJR
         qYxC2Fh6aAZgQz4VQG8RwJ5YAzjm+Qr5zxyA52WLxO9ADcZzdz0ui7M4TnkiUK7UAQE7
         RNcjQ0ySGtLAMXW/AYbT2RpJmj4Pg9J/6WqvS3QbxPW8PjGRlNWhBJgp+4S7ImFyEEO8
         XjgrxN3PCEApqY6iJhb+TuutWAGTgszFB1rpFxnM/P+W2L5jLlP0JkPWSs0TFFjqM16Q
         1MyQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788902012; x=1789506812; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lIs1r8t4sujmkJB8wXcexEf7FSBQ6RZtglCZGGAWn9U=;
        b=gpaFy02r1qrYKpu6ThmrC7GMHAssqZ3XOvHuJSceb6HV0/wjKPqDfAswavgHmlG5nZ
         +OvPYT6Vp1LA2UG+L0SpvAQL8tiu3+V0F0bcq6usLRnz7rg4xIostD5+CndEkB95TUuW
         9AHE25F1EL8v1S9iPVzFxlTlnyHSkIEtLdz6yQecrcODYqeaEGK1gNoYC0E35PtAyUQL
         GONWJQkG5xB1MnJze0bt55taBCXgOp4B1ghkCdNKqZRil3rmvNbJyDodiamsxk4Nod5J
         zila53tYG2WKbagjeL6Fd2QZgRUimx2UGb8JFqAEfeltbY3NnDBzMvbDqdl5fhD7lS7c
         PiwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788902012; x=1789506812;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=lIs1r8t4sujmkJB8wXcexEf7FSBQ6RZtglCZGGAWn9U=;
        b=slwMtniXIquYxNEcc5Bh+CP5blrOMWDGJshT/z+/suJ9OK7KOQ6qu7O0S/AjPC5T/H
         RFKKLj8hByim7zjU15m5a5IUj58YbeIuoPZq9d7ey4t1FEKrbr3VeKuu/2SssjGWRCmk
         cV9AjEQpqF3I1sL/0QIs2ajLHlG0HXKqt8TSQAYfjku/w2/QnKtXBAM2DWv6g3Wcv4yH
         j3coScMNTztaQtOZsLs2pSJbWvUJGZb0Nya0L5PQIqcBF6yM3JflKdGA9XE0zZC8/vmD
         N/KoV/HUacEIxqs9nE6V9/OJNUa7moa/eXlzcqedqE+gMnxHuSZKJmDPtxqrz9uf8etk
         mc0A==
X-Forwarded-Encrypted: i=1; AKwUvBxCKXcehEkmKN+KEalHc15ls/ji/8e6oF8uVWNqi2h29oBPXu/ci9D0CqXYtjSliMvix3gfbdsv@lists.linux.dev
X-Gm-Message-State: AFuF++kSUQo3uEisiBtipQG/OFq5N/YJ7BbamlWS912wYZUzE0W7Zu9z
	abmYGCGE0DQcEPQxbW5WMGKVWCbBK1nmmfq2LllhM4LZbNUYIn1Rjstr1ke4W083Z216Wuc8i+x
	SmXQDrK6aOy6lkhP/RfQDsZhpyxfvpp0=
X-Gm-Gg: AYBFou0ojZN5R3Zljuef9CL6jVES1KAxINqVRkQPb2bSiQ6rwW5zDR1lmwyU/be2UGl
	Zgi727RjeV5fcZl65qAjK8ICyPp2PFDgKy2wRbLJt5tDz395Q7KIL59WK3wgns1QfKj7hyoZquS
	NW1BQYXQZqaSy/OFPkhCnn6fVA5TlR4q9l2tTqX6nHOkohXR+xuCHlI4SP+ayxOFem0+VvzKsPi
	VaZPr5PcGadbaH1sTosk5A683cWxHW3uZRyrp52Lc8w3xZMI+hzunye8E9poFKLMcogGIxaB8D0
	wd3Gm43468Clxa6U2i8y1CxU69VbP84QcOJir3+fmBTrTg==
X-Received: by 2002:a5d:6508:0:b0:47f:e7f7:370f with SMTP id
 ffacd0b85a97d-4857e50ac36mr36855264f8f.10.1788902012042; Tue, 08 Sep 2026
 14:13:32 -0700 (PDT)
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
 <20260908152921.3c90bdfa@gandalf.local.home>
In-Reply-To: <20260908152921.3c90bdfa@gandalf.local.home>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Wed, 9 Sep 2026 00:13:19 +0300
X-Gm-Features: AcwNN1Uzea_xFLylVSDvywfkYJx_MG5h7YMPoe0nRMhhWS1zdTWzmvvN8GeAFnE
Message-ID: <CAH2bzCQYFDvUXdUwE-vS03=QSqO9TuYdN+=kdrYGhL+ttw=BOQ@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Theodore Tso <tytso@mit.edu>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com, 
	Kate Stewart <kstewart@linuxfoundation.org>, Gabriele Paoloni <gpaoloni@redhat.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Sept 2026 at 22:28, Steven Rostedt <rostedt@goodmis.org> wrote:

> [ Adding a couple of people working with ELISA ]

[...]

> Hence, a process that you don't realize is a process!

Even intentionally not having a process can be seen as a process :)

[...]

> From what I remember, certification requires documenting the process and
> showing that you are following it. And have artifacts to prove it (git
> commits, email trail, etc). Repeatability is crucial. Being able to create
> tests may also be needed.

Indeed, and having a process, test cases, repeatability and what not,
it is all necessary to get to the doorsteps of a safety qualification.
That's what is called QM - Quality Managed.
Which in itself is already a significant achievement.
CMM belongs more or less there.

The problems come when one wants to move into the field of actual safety
qualification.

To name what is perhaps the most recurring term: FFI, Freedom From Interference.
It means that a given component which has been identified as the recipient
of safety goals, must not be silently altered in its safety-related properties.

Alteration can be both spatial (e.g. scribbling over its memory)
and temporal (e.g. altering its execution timing in whatever way).

Contrary to what one might guess at first impression, though,
this doesn't mean that said interference cannot be allowed.

It can, provided that it is somehow managed timely.
The classical case is a process not being scheduled and failing to ping its WD.

(I'm not missing the irony of me preaching to the choir, but if I have
to say this, I might as well
try to make it as accessible as possible to everyone who might be reading it)

Watchdogging done right is in itself not trivial, but often overlooked.
However more obvious problems arise with the other aspect, spatial interference.

Assuming a bug can lurk in one of the many kernel components,
there is a possibility that it can compromise the integrity of some information
that is writable in kernel space.
Information that might be fulfilling a safety goal.

How to ensure that, if this happens, such an event will be either prevented
or detected within the allotted temporal window?

The bug can be anywhere, and it can manifest itself only once in 10
blue moons, or less.
And it might not even be normally noticeable, because under most
conditions it scribbles
over memory that is irrelevant or even unused.

But that one time that the bug hits the jackpot, what is gonna prevent
it from causing
an unsafe situation? E.g. wrong angle passed to the steering actuator,
car that doesn't follow a turn.

These situations must be covered, explicitly.

The surface to answer for can be very large: from private data of
device drivers to
parts of the linear maps providing backing for processes.

Some argue that by virtue of a process, they can guarantee that a
specific build
of a specific configuration won't cause that sort of problem.

It more or less amounts to claiming that the entirety of the kernel is
devoid of bugs that
might cause that unwanted behavior, under a very diverse set of conditions.
That, and statistical data obtained from very different builds,
configured in very different ways,
running on very different systems, under very different loads.

Without entering the merit of the claim itself, one observation that
can be made, objectively,
about that sort of approach.

If even one bug of the wrong type has escaped the process, then the
system is not safe anymore.
If it has ever been. I leave it to the reader to decide what is the
likelihood of such a bug-free system.

What said so far might sound like paranoia, but it is what is
necessary to provide safety.
Besides, there are various levels of qualification, for safety.
Any process-based approach won't go very far.

Hence the approach I described earlier, where we are perfectly happy
to let the vast majority
of the kernel as it is, not a recipient of any safety requirement.
If maintainers want to improve their processes, that's great,
but we wouldn't be really asking for any extra effort, for safety.

> I'm guessing that this will affect the core kernel the most (scheduler,
> interrupt handling, memory management) which should be treated with a bit
> more scrutiny than normal device drivers as if they go wrong, everything
> goes wrong.

Actually, no. You are describing availability. MTBF.
Great to have for a marketable product, but not mandatory from a safety angle.
What matters for safety is to detect and report timely any safety violation.
That's all.
Each system can be designed to cope with it in its own way.
E.g. some cars will disengage the main unit and activate an auxiliary
system with reduced capability.
Others will simply turn on an indicator and tell you that a certain
functionality (e.g. ABS) is unavailable.

> File systems have a similar requirement because if they go wrong, people
> lose data, which is never good. Funny enough, I'm not sure if file systems
> are part of the safety portion, as file systems are mostly used for logging
> in safety environments, but may not be part of the safety path.

What we want to ensure is the absence of unsafe operations.
In many cases one can tie it to integrity and timing.

But, without downplaying filesystems, the first and foremost integrity
problem is
memory integrity, because what good is it to have a safe filesystem, if then
things can get silently altered once they are in memory, due to a bug?

> What you should strive to achieve is a way to make it easy for Linux kernel
> developers to follow the process you need. If it makes sense to follow and
> not a bunch of bureaucratic BS, you may have people following it.
> Especially if it helps make their code better.

I know you have been exposed to what Kate and Gab are pursuing.
That is the process-based-approach.

While we do not disagree with the benefits it can bring, we don't
really rely on it.
As I wrote earlier, for us it's perfectly fine if the present
development model stays as it is,
we don't have any dependency on it, for claiming safety.

We have fences to take care of unwanted behavior.
Which means that we don't have to worry about where the interference comes from,
as long as we can model and manage it.

[...]

> It sounds like you want to do what I mentioned above. To have a process that
> kernel developers can follow that's not too different than what they do
> today, but just in a way that it helps satisfy your requirements.

Our method doesn't need anything like that.
It's been designed specifically to not have that need.
We certainly won't oppose any process improvement.
But there's also the problem that what you describe would not be found
to be sufficient,
by certain stricter assessing bodies.

OTOH our safety concept has been found to be adequate, provided that we
bring it to completion.

-- 
thanks, igor
