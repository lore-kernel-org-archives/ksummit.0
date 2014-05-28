Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F299C9C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:06:13 +0000 (UTC)
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6BAF0201A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:06:13 +0000 (UTC)
Received: by mail-pb0-f49.google.com with SMTP id jt11so11245505pbb.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 09:06:13 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 28 May 2014 09:05:56 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20140528160556.GA22194@roeck-us.net>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
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

On Wed, May 28, 2014 at 04:26:47PM +0200, Daniel Vetter wrote:
> On Wed, May 28, 2014 at 12:57 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> >> However encouraging reviewers by treating reviewed-by tag with equal
> >> "respect" as signed-off-by seems like the better way.
> >
> > I would even argue that it should be treated more seriously than sign-offs.
> > After all, there are more patches applied (and all of them are signed-off
> > by at least one person) than there are commits with the Reviewed-by tag.
> 
> Fully agreed on given reviews more credit than sobs. Authors of
> feature already get all the praise and publicity for doing something
> visible, which means review is always a background chore. But if we
> lack reviewers then the pipeline for merging patches gets seriously
> clogged up. At least that's been my experience with drm/i915, and
> pretty much all the people there work for my employer so I can _make_
> them review code. Still not enough.
> 
> It's a fine line though since we absolutely don't want people to
> rubber-stamp 20 patches in half an hour just because someone told them
> they need to "review" them. Plain more visibility to reviewers (lwn
> stats?) might help even with the risk that it will be gamed for sure.

It gets scary if people start to ignore the "Reviewer's statement of
oversight" in SubmittingPatches. I don't treat my "Reviewed-by" tag
lightly, and sincerely hope others don't either.

Guenter
