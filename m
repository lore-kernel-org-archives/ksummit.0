Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD6522652AF
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 23:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784330248; cv=none; b=pl/aY3hHpWge4J6V6RPb/bmzUCfWv2H+49x4thQHjq3HRMhvEnAomllfUS3Il5yugHSWjyv2U7vOvct7sILeHa2mCbLQb8FK6y0GBw9e14fiPNIwN6bPF4Awhj4NenIrbVb7TPprHN0cjE6lndiXgVoLHWFWZccNlqaItpFIt6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784330248; c=relaxed/simple;
	bh=zzmr4er05HmBpzVN+HbhsW5hKZs6e0aTrcedewwsx9g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g8bHz4ovY03ZmQ9caVXWHzI85mUoU2EsB4wXWW97j+XdqEIG7OaVY9Dl1VbnE/I88axwmxxntknaGgEoymO2UQzQmG9722iqymypa7Em9US2OaLTpp82pac7rh9FlMn7utc5MnohThKjI5+fQcLBsdju1WhPrwRLpeswN85QOek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=Kfuu8RUV; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="Kfuu8RUV"
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-c1614804757so889276566b.1
        for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 16:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1784330244; x=1784935044; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dab0VLLoXckx4lIJTjjFtwYbTS3UpH4Z/6a9c5Brojw=;
        b=Kfuu8RUV8D2ZeH2Ta7gEvkvgUXUfO+GPyzo+h/znxT50AH1JAEPWn0Ykcq3wvkUJvi
         CdF9a3VvbzhKMsw18am9TbFLZkX7hZ3L20ZNAdw178RBSLzLMw2teU3Ywlq8Y8a8yNu6
         adter04XtlLgQYG/slM5re+MfH3bvc8dddR34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784330244; x=1784935044;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=dab0VLLoXckx4lIJTjjFtwYbTS3UpH4Z/6a9c5Brojw=;
        b=pJSqgxDg/7ZOI+DIo4okViSzzd6fvppWko+9+apGpO7axtjmEdkl3MYAEmhW4JGRnM
         ZCgBjdU20sgcf8zotFUapPt1NGPL/a+0KbL2ERNKzKJ9xIDV71kTrjKvozDxApsUvh8Z
         h6w9cCEugzpN+T2C85SBn6/4FD+PVijvFjBNUb+juRNpTMh9YgO9ThmHucOOUlyDWmN0
         hoVj3AOl0w2b/WXSPRInS90+u+RPxUel1Pnwq9+bbWxuOFvIG1CVhrswWhxpUfR5y/8/
         fYDj7hkoy5umWh3RJX2wxuxXl9pyDzi2eGAjmR40fSUHOaon1IM1Uy2hUjDCj3Q0CkNE
         sqPg==
X-Forwarded-Encrypted: i=1; AHgh+Rq27pGFghhzBDpp2Fq3pB7oQSOo8BRQ7nxwLuchM/2jvBldVJaR2ztEkQQsO2sGiUKBUbOaqPbI@lists.linux.dev
X-Gm-Message-State: AOJu0Yy+gQtgL7GEn2Mjrj0i1ECXBMEAGCLm06dErPJ8TSbWJnuCP23K
	asZJBd0eIbEeFLhnaKwZPvsg4TizkCqwLL9lPtSHdUiYUwSFN079rYwKt+TlFufReBf20UcljaA
	uvCbe/sM=
X-Gm-Gg: AfdE7ck2CR3VUBBPdJXtVjFYSnekSjeEe/bZ816Fi0SZo4jDSVmeDTLm7mYba72IO10
	wnv9kVuw7BwAb2P/XZJpUvUyFIwvz7WYTb6WpYtn/CfLgtFbcW9RCqu/qhQT96PH9LjvrHxPK2g
	yUJTggPmwPW3H1h36s2UK+NjZW8Rb2RwB9eXMipNvRxl0wc84DqPfVAb6qm5FM569BP62MnnQnF
	aAVPJ11o8yCZ1WuxGBZj+M1RDjpQbejgz0VvwPSxCwpS5TypcyfKm/jvSIzSsFvGxSBJ1HGvavs
	4HcyMZe01Jh4Bzm4S/59Do1+ItjyDPS2INo/O8cie1/VqZ8J4ClRKeWlvfxodjWEApV0JdeKchy
	3CW3kTvGCcWJj33h/CfXU2MjTFA4HTF045F0G2NgNGKM5IIMHX/TFpfLxmOOD7f6QcokOfOG5MR
	uYgnl11crjjixkdZA4xdbxhCI3zBlApQ9OOrZAnV3lnphf3YmnNA005p7gkcXcyg==
X-Received: by 2002:a17:907:9309:b0:c16:8cd0:c6b7 with SMTP id a640c23a62f3a-c16b46e2994mr282873866b.14.1784330243691;
        Fri, 17 Jul 2026 16:17:23 -0700 (PDT)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com. [209.85.218.46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1712a63d99sm143340766b.41.2026.07.17.16.17.23
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2026 16:17:23 -0700 (PDT)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-c1671ec8692so465579466b.0
        for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 16:17:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rp/KESS4SW3IZo/DEQiPK6r2qR3LiamZHa6IhLME8SrSgAGxmKneJAlmITCncE3W4RMSG0g9lTO@lists.linux.dev
X-Received: by 2002:a17:907:ea6:b0:c16:7a4b:33f1 with SMTP id
 a640c23a62f3a-c16b46f1897mr226815566b.21.1784330242810; Fri, 17 Jul 2026
 16:17:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <7ia4qzl45h20.fsf@castle.c.googlers.com> <20260715185757.GA191552@nvidia.com>
 <7ia4pl0oymo0.fsf@castle.c.googlers.com>
In-Reply-To: <7ia4pl0oymo0.fsf@castle.c.googlers.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 17 Jul 2026 16:17:06 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
X-Gm-Features: AUfX_mw0Sf6sMIHPcHA4e_GvlMgRWUWYWI27LFNKDmJLJ5KITFAurKTWo-UkBYc
Message-ID: <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: Jason Gunthorpe <jgg@nvidia.com>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Wed, 15 Jul 2026 at 14:21, Roman Gushchin <roman.gushchin@linux.dev> wrote:
>
> Jason Gunthorpe <jgg@nvidia.com> writes:
> >
> > I would really like a syzkaller like dashboard of all these
> > pre-existing issues and a nag/summary email so they actually get
> > fixed.

I'd actually be willing to go even a bit further - because I suspect
we will need to at some point.

> > I've gone and fixed a bunch on my own, mostly out of fear that they
> > will just disappear and be lost, but it is an annoying urgency. I'd
> > rather have as a giant todo list (that maybe other people could help
> > with too)
> >
> > Often alot of tokens are spent to find these things, it feels wrong
> > that they are effectively lost in the endless stream of reviews..

I think this ends up being one of those things that easily frustrates
maintainers: low-grade constant noise from an AI that adds extra
overhead and another thing people feel they need to look at.

(Or feel they really don't have time or interest to look at, and then
just the knowledge that there's that nagging thing that you don't
really care about adds stress and frustration).

I think AI code review typically fits fairly well into the pattern we
already have when people post a patch to the proper list, and then you
have automation that reacts to it. And whether that automation is
something we've been doing for years like the 0day bot or Sashiko is
then almost incidental.

However, I think that "pre-existing issues" ends up being a pain point
because it's just a _separate_ thing.

And honestly, it's been a pain-point long before AI. This is very much
not a new thing. We've had this discussion at several maintainer
summits:  some maintainers finding pre-existing issues - whether
outright bugs or just ugly interfaces - when some patch series is
posted, and then some trying to make that part of the whole "in order
to get this patch series accepted, you should fix these pre-existing
issues that I noticed".

And that really doesn't work, and has caused friction.

Developers who do some patch series for X and find that interesting -
or get paid for that - are *not* necessarily then just going to do Y
just because the maintainer notices it.

And then Y doesn't get done, and maybe X doesn't get done _either_,
just because of some unrelated issue was pointed out as part of the
discussion.

This whole "Sashiko found a pre-existing issue when looking at a
patch" very much smells like the same pattern.

And I don't really think that "we'll have a database of it" is going
to fix it. Sure, at least things won't get duplicate reports due to
it, and maybe it won't get forgotten, but it's still going to result
in the same kind of friction and stress, I feel.

Which is why I would actually like to at least explore taking the AI
patch review further:

> A minor problem is that for prompts there is no point to stick to the
> kernel release schedule (merge window, etc), which will only slow down
> things. So it requires Linus being onboard with the idea to accept these
> pull requests all the time.

Yeah, I don't want that, but what *would* be interesting is if an AI
tool that we trust(*) might even build up some kind of "trivial tree"
for issues and patches it finds as part of the review.

(*) IMPORTANT NOTE: I do not believe in "trusting the AI tool". The
reason we'd trust the tool is not because we trust the AI, but because
we'd trust the person or group who is orchestrating the tool!

Possibly as just patch series on the mailing list (for "b4 am"), but
possibly even as a git tree. Very much a "let's get this unrelated
fixed next merge window".

We've tried trivial trees before, and they have been mind-numbingly
boring, and they've never really succeeded at them because of that.
It requires human effort and tracking, and it's a lot of work, and
it's by definition not really very interesting - so people start doing
it because it feels worthwhile, but it's just not motivational for
anybody.

That would seem to be the obvious "next step" from just doing patch
review. Trivial patches that the AI has high confidence in, and we
have high confidence in the group running the AI.

Because I think it would reduce stress if we had some sane workflow
for the trivial noise that is just incidental to the patch review.

(And again: this would only be for simple and straightforward patches
with high confidence, and we'd probably have maintainer Ack
requirements, but the point is that I think it would be good to have
the AI not just point out problems, but also actively get them fixed.
At least eventually).

                Linus
