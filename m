Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0DF41988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 14:26:49 +0000 (UTC)
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 59ECA200A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 14:26:48 +0000 (UTC)
Received: by mail-ig0-f176.google.com with SMTP id hl10so2469698igb.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 07:26:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4700397.FLxRVChBLf@vostro.rjw.lan>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
Date: Wed, 28 May 2014 16:26:47 +0200
Message-ID: <CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 28, 2014 at 12:57 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
>> However encouraging reviewers by treating reviewed-by tag with equal
>> "respect" as signed-off-by seems like the better way.
>
> I would even argue that it should be treated more seriously than sign-offs.
> After all, there are more patches applied (and all of them are signed-off
> by at least one person) than there are commits with the Reviewed-by tag.

Fully agreed on given reviews more credit than sobs. Authors of
feature already get all the praise and publicity for doing something
visible, which means review is always a background chore. But if we
lack reviewers then the pipeline for merging patches gets seriously
clogged up. At least that's been my experience with drm/i915, and
pretty much all the people there work for my employer so I can _make_
them review code. Still not enough.

It's a fine line though since we absolutely don't want people to
rubber-stamp 20 patches in half an hour just because someone told them
they need to "review" them. Plain more visibility to reviewers (lwn
stats?) might help even with the risk that it will be gamed for sure.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
