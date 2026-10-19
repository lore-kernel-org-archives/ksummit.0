Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE13390C8A
	for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 05:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792389303; cv=pass; b=F0yNOR/rG/g8npVt/xfgq9JrUOiPhSY/ntzIunZqxrCuXT/Dg4ZUWHze35xUg4k8jM/o5BD0R6e/5i/eOGnkAIB2LqbOI5ui87rBYJPmXCdsrWQ5LEr2XpJnQsreDxdUsCFeR6bF5zGIB6x/ohgfZMrBm3ewT7gt3tIvcel9ckI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792389303; c=relaxed/simple;
	bh=92jjG3em6YkNB3lESKDkVruoPRHZY45Bwwk/55xRxs0=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L1vT+40P+/CfHnLjscSx2uyOIjX2vLtDJQt7j48if7xOceDfJL1hlrF+0dFS0p6AXLbTC6ggudOFvNWWExM2WOvE9K7EfWs3zVGrZlnI0CTBulIYfyq79jW6Xpxlyf7hvM83hzeF1mcvtYkpCC9cGci+g0yLZFLwOMuK5ZmZ7y0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i5/1HIYh; arc=pass smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i5/1HIYh"
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-8b10ac6ab7bso2782877b3.1
        for <ksummit@lists.linux.dev>; Sun, 18 Oct 2026 22:55:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792389301; cv=none;
        d=google.com; s=arc-20260327;
        b=lmyp1woGKeJG57E5sstQLIXgl1Dqnmx5lHBSRi1bdC4nF+Ep5GA6yOzI36V07IVXpC
         jwwaJ+jwpgSMEMUAYv7tQmij8r6HGEJ5+Z8Ta+b39g1gptIbV/2+9EdCeuCaowyK/kOq
         nmQnsWSDCk3dlRgSn71hDbzjzWVrulnBwkAy2KIm3MRyrUyzopyu21YJF+k0t8DEJ75d
         ApGPdtkQAdieuK4EW+8e1C0jqha1tTLhZLu7CmsaDeWM5WxgqsEm5QHV1UVdnc4oLdfT
         bv1V5b0t1cU0jdczNuf7FV1yla/COqrgGV7KkQ7k5ugJi4MHe+KVFwQBxbEpBhDMDpK8
         //+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=uypgfV2yYt+2lqOIzEtJ8QdLzoH8m+SDghswTdMH9hA=;
        fh=KKsu9dfCTqhrg+kzhcP4UeHKdGKeLxZR1hke+c6leKQ=;
        b=JlOoR7WICivpyNqxX5d6R4EmBb2PRZQLx7xqT8uZbTTvd41WKiZoZgTQ/OOoMT0qEt
         ZH1kiQZEJ90DqtcDcI7EcPLoYBMflrr1Ol+eLumlWqSRtxqSo1Bo6vaCCRamaAXOxex1
         nTOCg3YvWrwk8jIxldmGTUqyUvCRlqurZmOicoySZn8qdLs+LX9u78p5GohQpEWh7xzq
         Vp5mGkuAPtxlbiUXeu+HQ2aDPmDxfruLqFQdn9XcZLcLtmXKPS5kjet895Dru+Jh90Hq
         f/KdQ9iZacsg+RCL2D3PBdS4OeP3lP69zjxtX99Cggyz4FASV/AU0y3zkC0QnmpPoVf/
         /UHQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792389301; x=1792994101; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=uypgfV2yYt+2lqOIzEtJ8QdLzoH8m+SDghswTdMH9hA=;
        b=i5/1HIYhU5MH7S8BSWzoBzlnHwVA3BJNvD7Vic7X5lQlCxaXe+30rkZNUbpYJaZlJY
         dvr+2xwOqxOrLCvOujJ5O1daY26iB637Bn6wRY3c1hqUZxt4dkPmcVfdWfBllNpz1G8b
         cgLlOwjJHZJTLNfT7wMyLSNJimT5PKVl3yt8zZhssLNCDnQEja9HGPjfSeUcUz7Mh821
         BOe7WOsn31y2v1kxlYPwnp4leSMgbnO58oyfwPyWgu0lZq6+aUA8cEW1DsMsqhjVqWW0
         xkCVvpY0WHxmn99n7pRGaKqGzTucYSyHdITgNkry6f2UuFs5wyec0CWrWDNeau0ez/Lr
         qE9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792389301; x=1792994101;
        h=content-type:cc:to:subject:message-id:date:from:references
         :in-reply-to:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=uypgfV2yYt+2lqOIzEtJ8QdLzoH8m+SDghswTdMH9hA=;
        b=qboIE5HPY8+rhN/yKawTbDyaUnaipULzIAIyNwilrYhMZTgRb93XO8ZMi4OlOY+vvP
         1rvUdxB0MJDJuumJmpHjGraOanQN2L8U5sJZrb9Ec7+ur4VaIS+iQx86vpVpsSab+XAH
         H3cr2fgQ31y8vQyZsrlKQLxN44j98WWrhwDPMbA/BlELl1CrbtbXb73i9aTo6RcdQeei
         geH531Vm6sFGlZWRlTqEenvdRlxLSJgjf1CNxKKSqdGVo3POpVKRw6fnSCNd8Nn0JiY4
         fm06Fhyk0XzbGqCACkR/U+eGzpjk3d+x/sGAfmWoN8YTeJixlYTFWI1os8YpxbTr/aBD
         FD2Q==
X-Forwarded-Encrypted: i=1; AKwUvBzwH5Qe7tHYhrqNW4QNOFiy93OLOy8CZWWtI4SuYwbirUepam6fMDrCqe1Oy/Mfgc79KD6wEm20@lists.linux.dev
X-Gm-Message-State: AFq9FYLIL4Ryftj3Ux9BEFZfj6lMelrjIIHRnFy83iZ5f6Z27t97dgPL
	fE564YBk0Qab2ocx+r4pOXpcVtIm6Lvdl7+ALl0ZHgS7VbKbl6YQX/Hz3C54DU8QhDbQxmbw808
	CvpF8VtfbbiLENrs74Q/nBXsD+NlvUP0=
X-Gm-Gg: AYBFou1RFENP8nufypAb4jm7kdD9O4gj5C3OTqmi14aMuLsEWaL/o1jtsGpWyAvBtCt
	+SjmwYc/rhCyYadxttccCHqd9LxV1GEUEY5mMFSr/5lRq3QVpso/xms4Ge/OhxRMM6H812i/afX
	VeyuH0kLlF8s/kUdXwPXqrtKB1wu0EQXzFtiklKahqW0CXttL49PFWh2kElnwsh13XZ9gazpVt8
	mOKSpDlfcTnuqgTr87zut/PIGb7uig0K/UP7ptNuaFd4utdxGPGeOXxGblhX2e6TGZ7r8ecNddR
	PIW95Ck3ATQV2dm4Z1e5SLh+iaSfbX4MzHLat3xKl609qOEN6Fdl6owlxi7vL+GV
X-Received: by 2002:a05:690c:47ca:b0:8a6:1901:30d9 with SMTP id
 00721157ae682-8b0f21b60c7mr15082517b3.37.1792389301155; Sun, 18 Oct 2026
 22:55:01 -0700 (PDT)
Received: from 77377267392 named unknown by gmailapi.google.com with HTTPREST;
 Sun, 18 Oct 2026 22:55:00 -0700
Received: from 77377267392 named unknown by gmailapi.google.com with HTTPREST;
 Sun, 18 Oct 2026 22:55:00 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
In-Reply-To: <CAHk-=wj24dSSRDQjvkmcw9LMC=K86d-Xys9=qX=gKoXgrQN1UQ@mail.gmail.com>
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet> <CAHk-=wj24dSSRDQjvkmcw9LMC=K86d-Xys9=qX=gKoXgrQN1UQ@mail.gmail.com>
From: Oliver Slapinski <olliefromcanada@gmail.com>
Date: Sun, 18 Oct 2026 22:55:00 -0700
X-Gm-Features: AclHuK8F3_DrdF6wO0JeANQibELezP9Tx8DyDYRRgQ4ITe3vo_9SMVrwS4CK3ig
Message-ID: <CADJhFpSAafHv7fTdGRRxq-3iq-oNbQ=CxCGMDXa_kg8jnELXzg@mail.gmail.com>
Subject: Re: Patch pre-submission to Sashiko
To: torvalds@linux-foundation.org
Cc: jikos@kernel.org, ksummit@lists.linux.dev, sashiko@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Linus,

I'm working on an opt-in adaptive publication cooldown to address the
rapid-resubmission loop. Suppression of superseded held reviews is
implemented and tested; the adaptive policy is still in progress.

The initial scope is a capped delay based on revision activity,
preserving existing behavior when disabled. Series-size weighting and
cross-posted series are outside this first version.

I've also read your later point about discovering kernel rules and
local-review guidance automatically. That's a separate gap from the
publication limiter.

Thanks,
Oliver

On Sat, 17 Oct 2026 08:20:49 -1000, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Sat, 17 Oct 2026 at 07:39, Jiri Kosina <jikos@kernel.org> wrote:
> >
> > Another option I'd like to propose would be to introduce a way for
> > submitters to run patches through back-and-forth with Sashiko even before
> > properly submitting the Sashiko-polished v1 to maintainers and
> > mailinglists.
>
> I think maybe we should make it really easy for people to run their
> some kind of sashiko setup on their own, rather than rely on sashiko
> itself. After all, these are all people who use an LLM to begin with.
>
> And assuming they sre starting out, they are probably are *not*
> building their own local LLM for this either, so presumably /
> hopefully they have a fairly capable LLM setup, and the problem is
> primarily lack of kernel knowledge (and possibly LLM background too -
> that side was certainly a learnign experience for me).
>
> So maybe at least one piece of the puzzle is us pointing to existing
> sashiko (or sashiko-like) rules so that people who use LLM's get the
> "basic rules" almost by default, rather than burdening sashiko more.
>
> .. and I do still think that we should have some kind of "sashiko
> doesn't answer for 18 hours" kind of limiter. Possibly with some
> back-off per submitter (and by patch series size) so that repeated
> submissions get spread out even more.
>
>                  Linus
