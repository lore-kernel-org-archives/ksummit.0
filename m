Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454E22E401
	for <ksummit@lists.linux.dev>; Sun,  9 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786313435; cv=pass; b=fMKB8WysI5hJKwdNwOd2o1Hp2ujg4546nOEkwHAay1y/JMqpRvnhP5vTuIL9Mt8m+dxdscHFN2WTkK1QN9T+OWDw5n8yFQ/47qeAP2JMr0FmM0CvmVycysTSL4USy6C2Ka44QPMyGEAbLp/0WaEAl6z935+ze6CNs8Xtm6g1ygM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786313435; c=relaxed/simple;
	bh=F5tR3iPPHU+fYqPzO7kZSCJHhoLAKTg+b+R7YAnsJpI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P3mGWQlbnpKoTcr1M5zYcgP+Kv2GNNR3twxgJhC1dGv1hg2YvI6M3XvPSbGYy2+iytrmzhe1dbi0lLKjAbVsp7PUbfVp8QvUPqxHdhrNJWmmjpAAdw+osFhbNXFX1Y2u0PfGzpdbxP1JNOLrVvgm5bec2gnXjzPBQpav7J+Hq/I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=q2XZHJkO; arc=pass smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="q2XZHJkO"
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-66899c7b57bso1785984d50.1
        for <ksummit@lists.linux.dev>; Sun, 09 Aug 2026 15:10:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786313433; cv=none;
        d=google.com; s=arc-20260327;
        b=W2oD4mnHwudlfZ6KWuDBn2E2u8B/UyySraPJ4tSaEPOkkURJsengO0Xa/g436CDYP6
         ZqxNaASwiAIOYlSbKmJmfEHTD/+sqjQH/sObLIpbm3sxPMhA69w7Szy4J7+sI0cHmkW1
         AxldbE2D6pgzi5D0AwZAn8tNSbqPfwPpKCypVEMA2Or1G/llkY/pCwhZUlFzZblCWSSC
         29qnAM2cAKEhgvqXgxmOGxjv2YAkJDK6yu61VFfRuEeFgrlGQdF6IsHc7qQcogCYnQTj
         ePCBD894vSviI6erNbwyE2/e4WpTfikhGoMitUVVLZTiLU64sOGTEOqCRQrOuu26POJU
         8f2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=F5tR3iPPHU+fYqPzO7kZSCJHhoLAKTg+b+R7YAnsJpI=;
        fh=8Mz4eZcfhsLtJaY0NNc5SXB0pOuzbkdjKjbxGHcoBs0=;
        b=D//MHbcnmkCQZ5jEcV6+dekTZOINAiWDnoQIbIXN2+5qjYS8zc/v8Zxf6PX1moYwYk
         jHzJ3Z6JVh01luzgT2/Oxe/qvUeyfLy+WvA8Fub+z4+jLwCHlcZhwy0rENj/uVu+ixsz
         URYp3j/x1et/vVCzW291WURk7iorXJfMEFMPnm0Poe4Y9QMpcloyQ+LIrOSDJo+W6aY1
         isU+N9lbbzBJWQfp7KIT043sd6Zt2JFwBdWpHeI9Bvjp6WpXGTDfL1hP1DNU1oMfZ+gO
         vfCNrfrTH0E3oqrLr/SN0zZZX7bLY6N6qacEnmSfhS22jiBiRTuAjXCazBN/Vw+quzac
         51Uw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786313433; x=1786918233; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F5tR3iPPHU+fYqPzO7kZSCJHhoLAKTg+b+R7YAnsJpI=;
        b=q2XZHJkOkSEHR4hrNrxE7clte9mp3/XefxjhfEXPyPjm6rdMKIgFv84ff6konW2Hu0
         X3eATCuhbyX5j2ZldfTjcFJl88IV9khuPq6gQ5gQc2UYJCUEgdcYb+s9X11J0lNqD4Pj
         w9rMZjkyYcYflVEJ5/SVXBArT5mUaiUh13VDBdutJs3uima/GXf2TM0JQDz9zG9zn2dR
         z0GEKb6TLMGmO6lyccz6wDeZ1jlBX5Pi+QeAcvig5Q8q9c+i/yXRWKws9DpYEp4iyiWL
         StCF9Kp9FBo6NJJEOR0q3dzYZcbTFvY3VTHvfaxNK+FgMVPnuvFtlw3XRJvnMlJJfa3Y
         lkdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786313433; x=1786918233;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=F5tR3iPPHU+fYqPzO7kZSCJHhoLAKTg+b+R7YAnsJpI=;
        b=i/G23Twtq9NqZuxhzZ9dsvGwy9m/CkSpinfth2TRSvyxytizwR7rOSmHXLZxCqCfHj
         kWIPN1gEYKn9CBsJGTFklqeHCtiruLwo2pstoUTORPpwmLSpbpVVOdAgVNKFIxcjZH/J
         +MlvdwilkJ7hCHSIPP/Uj4OnKHWS1QIKSN5//jMeuIonCc4/RMyYHSAKlwA2jKSGSlsB
         oDBYqArGNYNQrPNNrxHg5NKOoDVnzvV3ulNRUWuaiWnrtyB7B4hhBlgDOCVOuizD7PWl
         bTJgwAJXAUtGd2rNuj85NseT+it3J2RhnltxQx+0h9MkH9vWa4s/yBlaQe2hipZ0e2UK
         pVgg==
X-Forwarded-Encrypted: i=1; AHgh+RpWBRiwh21wV7yMRwdB5cEGA4LBA60Ki+lBtFSEthmIlilzhjQ21ohy3UoTDJSF0MWT31Q0eyf9@lists.linux.dev
X-Gm-Message-State: AOJu0YzyCyVA3jtdJA7c2nnFlMIGyyjHzjL9arOus3BFkm6BOnkKwYlC
	H99xSjI5zIx1m9aMubG7hlt0w8DqiF/PfVgbk5rcvPLtyMdGsWo8nvfyJ9aINJXwQCsfbdZOlJ4
	5xoOCtAwrVJcNmTtzfHTcH/CQphZl0Hc=
X-Gm-Gg: AR+sD11mmp7hpZwdoWyfXvyA3xpiRvGaxdwxWZUvP1PexW9aMpGKUKjBksyPERG+3y8
	j2e/YjUIQAgfmlNSBlpVvsc/OC4kScqoL6FQmlgXlKdj/T7M0X3OPDkMh6qnBFqcvL/vSbapQh2
	bHSWNW/CbUtotSr7zOJhPPzTu339L/herRUkpHrI34Z8LVRTThw6OW2hqtTGa0QPBQCSerDRtQ2
	Pj5Q5KoqoM6LBsqsD5K74rx2yUNV/Q+OFdaxfqpjqAeGBiOqChTIKajxcl5qjdhlAri/SfO0vKT
	QtMyHWxPUhBA2RPN1r9QEbmUX7m+iDAFLmQxlYT56fWbKbKkgkH+ior95QVpP0vR+JT2Z/NgDsD
	z5LLJj4wIOAD7v5tkQw0a6EHGhPM4IUw=
X-Received: by 2002:a05:690e:1589:10b0:668:112a:19c2 with SMTP id
 956f58d0204a3-6699aa3eb22mr17756914d50.10.1786313432967; Sun, 09 Aug 2026
 15:10:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
In-Reply-To: <anii3u-87kSrB9K3@lucifer>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 10 Aug 2026 08:10:21 +1000
X-Gm-Features: AUfX_myxHNh-lCtksOqBZ5F7d0GP5alxR38OHQ6HS8fzzrVaodbRWiY3ryFame8
Message-ID: <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Mon, 10 Aug 2026 at 04:41, Lorenzo Stoakes (ARM) <ljs@kernel.org> wrote:
>
> On Fri, Aug 07, 2026 at 10:27:27AM -0700, Linus Torvalds wrote:
> > The maintainer summit being a pretty constant "in-group" is
> > fundamental, but it still feels a bit sad and wrong to me.
>
> It feels less like a naturally emerging in-group and more like a clique,
> and I've heard the same view expressed to me by a good few other
> maintainers.

Not to be pedantic, but these are the same thing. How can you make any
reasonsable interpretation of clique vs emerging in-group in a group
of 30-100 people.

I'm one of those who attended every maintainer summit since inception,
including the one at 2am my time during COVID. I'm quite vocal in the
room on behalf of my subsystem and myself, but at no point have I ever
felt part of a clique or in-group at all.

I think people really have a misconception about what goes on at the
maintainer summit, the best explanation I've been given was that it is
Linus's staff meeting. The people that Linus works with closest, get
invited to talk to Linus and help him figure out where the overall
ship is going and where things are going wrong.

There is usually 0 useful technical content, and we've certainly never
taken a vote on anything. Like I get some parts of mm might feel
controversial and you want to think that talking in that group might
be useful, but it's not.

I generally go on behalf of drm, because I'm the person who interacts
with Linus the most, and I'm weary of wasting anyone else times on
going because they feel there is some brilliant clique or in-group
they are not part of.

> For instance, I made a submission last year (I was nagged to by somebody :)
> but I had no expectation of being invited as I did not (nor do not)
> consider myself anywhere near elite or established enough to fulfil the
> criteria above.

Your language choice already makes it feel like you see it as some
elite or special group. It's a bunch of technical project managers
talking about the processes of producing the kernel. If a talk about
the technical content of the kernel sneaks in it's very rare and also
usually not of interest to half the room.

> I mean I don't know, maybe it's necessary to run it as a tight ship of
> trusted people, but I think we should at least be more clear about that.
>
> However I wonder whether we should look at an alternative approach like
> those with M: entries in MAINTAINERS voting on topics, or something
> similar.

Voting on what though, I'm already over the number of times
maintainers with small potato problems think that the lives of
maintainers with big potato problems would be much simpler if they
just adopted their niche one-person mutt based review process.

Dave.
