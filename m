Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A92399357
	for <ksummit@lists.linux.dev>; Wed, 12 Aug 2026 08:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786521951; cv=pass; b=W3VltTMEM4naajlzUG/5PYeAUAfKQtz82VueP0dkZesWWF4Gx9GB7VxsAFb2goNGYN0Zgw96+5utO8oNcDOrbljO+MNCAxIYAIk3AZhztt4yStlDce53cMcfT0RLgSnUzYt7JS/buaRAj/FUJch8Q6KQCAEITxHQ2FixPz6eD9c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786521951; c=relaxed/simple;
	bh=Td4DoLD/zfAi95wL5cUfYBgq08TNHSr6jF6BY+PJbEc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B/HSyfbC8EQdx5lyoHjiqXPTNgK94GIv5kzraI9FpuuEu7p6GbMQFW9BN6Pb5pGWv7U6/Of8zkY/QRL0TSIrOin6esuNOTjYQmre/pSv7LLPmEjAehc+Dr0SMDwTonMUseUYdjL2R+ksL3z2jM2tCpeqAIB9saylbf7QHtrGBs8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O5AUynFr; arc=pass smtp.client-ip=74.125.224.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O5AUynFr"
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-6626b5ace23so2715889d50.0
        for <ksummit@lists.linux.dev>; Wed, 12 Aug 2026 01:05:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786521948; cv=none;
        d=google.com; s=arc-20260327;
        b=D0I+5/Wd96k5Y13Vp5NRvG13b5u546vUt56C6OL8iMAixkGoC6/z2LFQk1NI0pIyRR
         egdWE6rrbnk7KQ57qyDkXB69vvwsfwfwLrLXnJTCB+0FQFSy1h+af8dWIwFyd0zHChbQ
         M4N6ABwTQsXugQ23ywMO4vfqBsjYposOubB08mX1Tn1bp+up3Anb4OqFxS2doF+CKhOn
         j46mmK0i37uj/AqeFflVXSNaF/QGEhuIxTeh0TS3ItWHhCkQocoqyxi2o/P4mg5XE9SZ
         IzN/Sir3WUV9YvJ7t5bvdWRo3IFrFmXgpdJnuE1fAhXqLl06DDz0TVEOrsccxxPqpbjn
         8qJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kzOo+Ci3XqiLZw/TvujRVzrd9Pc8lI3YII6NefBMbMg=;
        fh=5lP/MnwFEWYc5/+NjZYEMJxvn7KXhCzwYUt6nwV79Nc=;
        b=d7/d7bVhqO4apvJLyhrYs0uoCdA176H1r8ehPPGIvIvqFrEWwk6LbayzmvtlWWV1Uh
         fR3CkyTlwYz1fU5DUL1PMiPs4HePmmFCLkcu6GZNr5y2sGJhA7gFYskDpxw0VVDey2DE
         bP/D8UVbWjyk/e7USTbZ/2JSCCgySgwQfK4qPxT6MCGGYFXq+n2D5slkNrNKV2vKgHCn
         IzjD9ECJoqOMgpIzkakD2L0o52ApCC2r8gyTlAu2oFb9A5UEujBDhk5IJ7zsi74Dek7i
         nFEWQt7BdeTH6yYBHI0o/XJDFG6JNdm7Q1N362OlBEw8H99n2SZWoWMwrW8nivnhJxC6
         GLNA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786521948; x=1787126748; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kzOo+Ci3XqiLZw/TvujRVzrd9Pc8lI3YII6NefBMbMg=;
        b=O5AUynFrCSg2Tyw3X2C5ZJbIen8lwERBcGQTVwm7SRlmESdDSl9RjghCQc79bIJ8aq
         30O9PJlFEpZ4WQD2KvTgLbMXfb5W91biXOWtOytP+Kcl62gahBRAmA3scAqBEMaWJ9G6
         1wEg+Nhn/ZLPKNMWwDGkvQKRZxKXB5PUVIe0Lr2KoUwFRjfNPLntq8A/stii4kzo+5Lg
         s9Whte4O9RkoL+JK5xn9s5YEehig8IJnPHbCvBUvL0yq8lQMEcqRFmWMREBEzmxRUPmS
         GrDbCvSee4FhAPbevWRcPY8RNY+XgNnC6bAFCOlNWUbEs5VYuhBdK2jterXroFNGcmcr
         0ZJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786521948; x=1787126748;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=kzOo+Ci3XqiLZw/TvujRVzrd9Pc8lI3YII6NefBMbMg=;
        b=nvI8/CnYVxzMfTDlgUNzUKXEi4o0I+GU/TpqUGgFBxRAWBMypCy9Cys+EiO5LDpb7h
         J3McahAqm0XKx7ReDymXkZcNtljKjEKRoWx9hFeaweGEDp07wZKGc/UlVOh0UNLcWa9a
         gII51oE4Fi8PDnMKB4Tg2qCPQTiPspj0fGPJYkxsickyxiwNV/whxBTksiNqKezzxI0t
         qNBwwim3Y+P/25njsZBa+xd2wWvSnG0Ajt50Q1Pn2FYyweEFEICE/Y2XN1qhR3lg2+q9
         hYdtbZvOYa8kKd60QAJr5ICSF+3jPavY4tIIDtbwAyv/g0P5yPIDO51GDd6rdqaoy0w2
         hFHQ==
X-Forwarded-Encrypted: i=1; AHgh+RoX9xeXYhp0vo3HURfsd+HEqVyWLwqMZxZSUdFrcqAE3RulhOP9cog4xzQokgyybpmxApsiGiBP@lists.linux.dev
X-Gm-Message-State: AOJu0Yy6b4Y/6Lg+BS2VTeeNlM8r+4OmkYaYSrDQ6b9VpJUW8po8Nf+l
	0gkvg/Gh9gKpSnnFEZx/uStEmpUkN4xq+V3RfGokv0uJYM2JAJuzKiaG3MyauyLeUAIx1F8vdtL
	rJuiJRUZF/HS14I8fOXtQ9G7ZWKABnP4=
X-Gm-Gg: AR+sD137gTEMFfwX+M9CbA4G0UbRkKAt9QLeqczIVL7hPCoT0gDULtDQVJK97QhQw1C
	acOPX2ag5w4VVNzj67gSWsUd26CRp3dPRIIcTXnjoiCXDj92idPUpS0EnU4zTGuTgIjH2iUqB6r
	+zouwNOsGnTrGfI+WHW6SFMWA8hcx+gQJApy+67cPB+QdS11Em2tYhUKtVl8wsakTHtpvoNYiip
	3Uud91C47pM58w+36SznNEwYYFZ70AIpB1Rj9X+4PusleXjQ9G4cr7XPmzkdkxPjnSXmFQ3AmT0
	buDpHSVTjQH6trUbvEdZKBUJ1QGv58CaCFFaJKUvAmplSPuO1un18+oLiMPij7WelWWe+1QRisO
	5pua0IAc9nE2ogmyDvz7UaAhI+E6nsQ==
X-Received: by 2002:a53:a64b:0:b0:664:d5ff:2856 with SMTP id
 956f58d0204a3-66b2cbc1c20mr3003561d50.14.1786521948491; Wed, 12 Aug 2026
 01:05:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <anii3u-87kSrB9K3@lucifer> <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer> <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home> <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
 <0c95dc03-5b33-49aa-8368-bac482b8b40e@kernel.org> <CAPM=9twMwxo-yO1Ke45D0Sxmji8Mt23BqxUMv-_GY1gzssVCiA@mail.gmail.com>
 <2026081254-scrubbed-avert-b5b4@gregkh>
In-Reply-To: <2026081254-scrubbed-avert-b5b4@gregkh>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 12 Aug 2026 18:05:32 +1000
X-Gm-Features: AUfX_mz4fYhaRUX8qgivIGi5JapXotwZvu1fsj9gY07ZZGJOxKaQfLkOx1FixL0
Message-ID: <CAPM=9twhoA2_ngguhxj7t52kvnuR0DGgqznp7cWhTVztX_ryrQ@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Greg KH <greg@kroah.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Aug 2026 at 17:43, Greg KH <greg@kroah.com> wrote:
>
> On Wed, Aug 12, 2026 at 04:20:04PM +1000, Dave Airlie wrote:
> > We've tried to keep the upstream schedule for ages, as Rodrigo points
> > out it falls down, stuff goes missing in the shutdown periods, telling
> > teams to stop working for 2-3 weeks isn't an option in most companies.
> > Intel and AMD are trying to upstream GPUs that aren't even on the
> > market yet, velocity mattters a lot more because thier customers are
> > usually on the end of the pipeline via Linus' tree,
>
> Why would anyone need to "stop working" for 2-3 weeks?  That's not what
> other trees do, the patches just go into a different queue/tree until
> the merge window is over and then they flow into the normal -next branch
> (or whatever you want to call it.)

Where is this magic tree, how do you keep CI on that tree, is there a
maintainer who isn't saying, I won't review stuff for 3 weeks because
the merge window is open, etc. There are plenty of examples of
maintainers not merging stuff into trees for weeks on end around
release->rc1 etc, shit developers get used to but it cuts their
velocity for upstream work. We've had plenty of examples of
development been taken in house and then upstreamed by separate teams
later, which is the result of what we previously did. I hate to sound
like an asshole, but we tried most of the things people with the 5-10
developers 5 years ago and 5 years ago before that, and they never
scaled out. There was always shit falling on the floor because of
various bottlenecks introduced by the upstream process vs what
internal teams were trying to deliver. Often you have internal teams
trying to deliver a coherent driver across non-upstream and when that
becomes easier or the priority upstream suffers from it.

> The only one that needs to worry about the merge window is the
> maintainers.  Developers just need to be aware of "is this a new feature
> or a bugfix", and all other subsystems seem to be able to enforce that
> tiny rule, which guides which branch to apply a commit to.

Maintainers care about the merge window, but also disappear or
shutdown progress in it, if you tell me this never happens, I've got a
number of bridges I'm selling.

> And again, I hate how the DRM tree works, and I think overall you
> greatly suffer for this model as the "Fixes:" tags all are wrong which
> cause regression and CVE tracking to be totally broken for all
> backports.  So I guess the teams for those 2 companies don't really care
> about stable trees?  :)

Hey you said very explicitly and in many forums in the past that
nobody needs to care about stable trees, not my fault if people
listen!

They are not aware if they are fixing a bug in Linux or Windows
sometimes, they might not know what Linux release they are fixing a
bug in, or what the state of backported patches to that tree are. They
also don't have access to CI for all of that. They also don't know
that rc6 fixes are different than rc2 fixes, and sending Linus an rc2
fix in rc7 is an internet fame earning offence.

There is a lot of subtley the smaller trees get away with if they do
one next and one or two fixes pulls to Linus. We send 1-2 next and a
fixes round for every rc for Intel and AMD, I'm lucky if I get one
batch of fixes out of qualcomm in the middle of the rc cycle. Despite
Kryzstof's efforts to convince otherwise, Qualcomm are small potatoes
from at least a GPU pov.

We have tried to fix Fixes: and tried to fix cherry-picking, and to be
honest I've lost track of the objections we've had from the same
people no matter which way we go.

It's possible to have a coherent view of things and Fixes can be made
to work, how do I know, because we deal with this inside of my
employer quite regularly.

Dave.
