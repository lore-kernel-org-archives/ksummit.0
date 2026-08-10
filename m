Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3A19443E4A
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 21:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786397464; cv=pass; b=BBhzzZbOOkFHgn1Pt+WJT734KSOTuirGPi6zLCqlDpPOndGqZxzSvHljFneWDJp7jKiGLH4mw4JP6jau5bVh2PJxBQAENEqTO58ob3QB37NBo/pHBNFp7e6ue8EG118yYdYfb66QrcZR0hCBL7brq91GN/gbnx3Dg7qeJx7fwQQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786397464; c=relaxed/simple;
	bh=nhpOv0JNBcRm3knjorQhKiDL7XfM1R8m7N1XLP21PZ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f+8frlTf6+Ar1/pLxGsLdg+r4VCSvDvxuPnKBtkfkzMxs9iME+ZeOrCq2eqB0HBDNX89bIo7NyUjfPnxYu+fGwpZwLCYHaH2ni9b19YzMFYpj4ZqSnggt2Lj0IwUxbYLwDHHSkd80Nn9TUzT0JKm45ttaPPKtcgBL2LUChhSOeo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kUOKhcQE; arc=pass smtp.client-ip=74.125.224.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kUOKhcQE"
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-6680ae2031fso1935387d50.3
        for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 14:31:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786397461; cv=none;
        d=google.com; s=arc-20260327;
        b=eLZ2VW3q7KY1FJQF6dV5CXPzqhV4oDPZLqbv8xhrxDFBICUS8WD6py4rAxicsUHFh6
         Iy05qIq62EIK/YEn7/72doM+/jv1GXKspmFj61e73sNZrnXHxYZWN0amsAdIoGKzYCxH
         uraueW2SNLa/rGrC13onydsdkeygOSztaisXUXNl/vktaoATcmipLsgH/Fxpa1CPnFxk
         HS5aSUDlQ9XLAdIyetQwmuXnyxf07DJ+Xk7yk/W/eLxIS30bL1RAbooidu413O8C4tbt
         LRmAATbuIH3xJ9RkcTNhiDsmoq6DKmRdZb4Q0lNp8nOO/CjfDRwdpEsZtFw4VvsMfcXb
         YAqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nhpOv0JNBcRm3knjorQhKiDL7XfM1R8m7N1XLP21PZ4=;
        fh=CVwMSkNCSumNfDu67Os2pTz3sGQu2eqIFYgt/GVsUqg=;
        b=WomDibxh8ogdDCN2rtmPzqgN5K2H5ollfog2k5aWkrLnmiy5zVKJ7pIbMCSZICtKok
         t+da+j6vETSXbAxNmU3eModrM3dAw5eU0KSLjRXF2S+SxkLHBTVNGGfQXWVRJjxrJGn9
         L49acxaZ4shVuRyqBDVDQQch3A7xNdTOQdY1oYWtGwNq/oWwJvpaHjbW5BXjeB18hP2W
         x68hPySTh4KVHLmxxduzjA0FcAv1rSM7Kwz3lZkqbTob1YNvH71SfOaayKI1NtwJdCMZ
         nPhbLUg4PphQ91xsE1APvhPp7Dn/IQwne8ThJhNEsrGUCTMxXzCl7wNcc+6ZiLLmjfb8
         6Leg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786397461; x=1787002261; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nhpOv0JNBcRm3knjorQhKiDL7XfM1R8m7N1XLP21PZ4=;
        b=kUOKhcQEgIipy6pc7IiaSPM3e/fj7YnSLiGKzvG/lry2Qideriwd0b6JJBzQ3lGA0d
         u0/2KYFIzv5lyR7+NvLGNwnT55lLD/QlFpyROhFPByimpQY6hGc099l/g1qXTW8iDlK1
         gTqX2w7GuCdVCBcPjBeCHthUQkHMbCJP+4pUdkX+A7K3+zy0mcKL/Fn3dyTQNRBYe3Ch
         gwIgFI3f0jWJpYi9ImTJ7Z8J4Lx9tik9tHoh8Pi3moCaDJsX43dY4i6cVNeivpbRRfW1
         Gq+5DeVEUd2sJYy8EbjXfKn28/RbXn9UiVm6bPO21WYB2O6fal9Yf3WIN3Y4IHvdo0dZ
         ywRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786397461; x=1787002261;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=nhpOv0JNBcRm3knjorQhKiDL7XfM1R8m7N1XLP21PZ4=;
        b=e8/D/d7pYDHcNbfuEbicqQL/WUWA1g8HocGf4pSQcbaPW3X/nUFjLswI3imyvT3PU1
         k37s/xYkAVlLvepgO34UnAsnV8VWCKXter16VpLHlEZ3odCvMdtlSlUvOUwhPrOklXml
         7MJMdXWEfVJhoUBMEcmuNENLACOmwJ3YWmOmcsWKtdG/7dd+o+ey6w6O5TGSoyw4dSbH
         P9rCNToL/OuSwCy7zrczcaft7QFZQnU5+MGJ7fOihhOkylfsUbltLkwcgJVhh51O8JjR
         G4zsSXQayEv2wSamiXefdMDRv2axV0x3RCPqLSFArvPLzT3tF+Gx9mIMukWilaCqOCY1
         HGmg==
X-Forwarded-Encrypted: i=1; AHgh+Rrdj10t3C30hAKUTFvtD6V0kg7xrt35zoNSL5zQzuL0CcjJm2dyAGDtHahXiRtBoVzpESz6DYVc@lists.linux.dev
X-Gm-Message-State: AOJu0Yw1aoZG4yrjQ2eeLq80aNmDUYKDSU27xAwBtAhMDv78KHy8voRO
	WgQ9kOyvwJz7/3jhewyiEzEypTGmiIgEASwP1UB9uNVzRUWLtjLIsAjhvRHVcPnAeczuPV9c3gn
	FZn0cwIpfjW6QrnU1wkflvd0jsQfw4z0=
X-Gm-Gg: AR+sD105LKy7JEiPG4DQuOWh/v86pp1J9M1cJg5WrWstqu/m9D0Pbv6zIyY1wrRKIZa
	T7KFmdEhLrfU2h0thBbUZ5jYaejHXAIFqcjCfHFDR6QLNQQCifQs8KZl7htXby2wG20t4gkuJ/w
	cYj6Wgx0NbNmT1g4mEbEbFzUG50DjRXPYnfX5kH4DN97WxK5igr294xeoHIHTuPnsDQdy6LOi/I
	lutDETT7hIWm9y9ekQbvFs/zrhRkEOhprbPvU7glCo2ZZURPL1I2ABpFClTUacSpRyzLByADDcQ
	Hi/13ijGnh3Kjd8FIOh/Ea7VO+cnOScbPXMXdsQw9kvnqTvn/cfqBioQMZcVjmbSutDuBrgAvNn
	v92yjxjAUk9PZlz4OtoYwA4RnUagxTw==
X-Received: by 2002:a05:690e:1689:b0:668:8f2d:c25d with SMTP id
 956f58d0204a3-66ac2c23bcdmr16797050d50.0.1786397461031; Mon, 10 Aug 2026
 14:31:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer> <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer>
In-Reply-To: <anl7CgkKb6tORavG@lucifer>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 11 Aug 2026 07:30:48 +1000
X-Gm-Features: AUfX_myZrkwITZheDZ49e9wBbYerDl1cYvlreROkdmA07DsmpW1-ItPDju0xHko
Message-ID: <CAPM=9tybMTBw0iz2BSQ_p+3ybk=SmoLuRgiyyE6BP+=1+2RkfQ@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Mon, 10 Aug 2026 at 17:26, Lorenzo Stoakes (ARM) <ljs@kernel.org> wrote:
>
> On Mon, Aug 10, 2026 at 08:10:21AM +1000, Dave Airlie wrote:
> ...
> > I think people really have a misconception about what goes on at the
> > maintainer summit, the best explanation I've been given was that it is
> > Linus's staff meeting. The people that Linus works with closest, get
> > invited to talk to Linus and help him figure out where the overall
> > ship is going and where things are going wrong.
> ...
> > Your language choice already makes it feel like you see it as some
> > elite or special group. It's a bunch of technical project managers
> > talking about the processes of producing the kernel. If a talk about
> > the technical content of the kernel sneaks in it's very rare and also
> > usually not of interest to half the room.
> ...
> >
> > > I mean I don't know, maybe it's necessary to run it as a tight ship of
> > > trusted people, but I think we should at least be more clear about that.
>
> I mean this is kinda my point.
>
> It is being advertised as X but is actually Y. So say it's Y.
>
> That's not what Ted's posts or the write ups or generally any comms about the MS
> say it is.
>
> The CFP-ish bit is probably pretty redundant too on this basis?

In my opinion, quite a lot of the problems that get raised by the CFP
on this list, often get resolved on this list, which to my mind
suggests we just need to have a better year round maintainers list
that doesn't get consumed by patches or internal subsystem matters.

>
> > >
> > > However I wonder whether we should look at an alternative approach like
> > > those with M: entries in MAINTAINERS voting on topics, or something
> > > similar.
> >
> > Voting on what though, I'm already over the number of times
> > maintainers with small potato problems think that the lives of
> > maintainers with big potato problems would be much simpler if they
> > just adopted their niche one-person mutt based review process.
>
> Ah good to know core mm is small potatoes ;)

I was more referring to the idea that voting would make any sense in
that forum, I do believe mm should be well represented, but also you
have your own very successful forum, and maybe the mm leadership can
meet at LSFMM and pick 1 or 2 delegates to send to the MS every year,
and they would get auto accepted, this of course wouldn't stop
additional mm folks from attending but at least make sure there are
voices in the room.

Dave.
