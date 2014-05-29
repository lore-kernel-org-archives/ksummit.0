Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6BEE5B2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 06:13:31 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B47581FA26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 06:13:30 +0000 (UTC)
Message-ID: <1401344001.27691.4.camel@dabdike>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: josh@joshtriplett.org
Date: Thu, 29 May 2014 10:13:21 +0400
In-Reply-To: <20140528233145.GA14933@cloud>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
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


On Wed, 2014-05-28 at 16:31 -0700, josh@joshtriplett.org wrote:
> On Wed, May 28, 2014 at 11:59:02PM +0200, Thomas Gleixner wrote:
> > You need to look at the underlying problem. And that's at least
> > related by the commit statistics. The flood of crappy patches and the
> > amount of review cycles it takes to get even trivial stuff into an
> > acceptable shape is what makes the live of a maintainer and reviewer a
> > nightmare.
> > 
> > The goals of some organizations, to reach a top X contributor level in
> > 201X, results in a frency of half baken "works for me" patches,
> > completely unreviewed inside of the organization and let lose on the
> > maintainers/reviewers who are burdened to educate the submitters.
> 
> While I do think that problem exists, I don't think the presence or
> absence of commit statistics particularly motivate it.  Either way,
> you'll have random driver/patch submissions motivated by "I need to ship
> a product" or "entity X made it a requirement to get my driver
> upstream".

I suspect, but cannot prove, it is somewhat driven by the patch
statistics.  I know in Parallels, I track features accepted into the
kernel, not patches, but we do have a patch metric as well for people
who do incidental bug fixing as they push features, so we're not 100%
pure on this.

When I recently gave a comparison of OpenStack and the Kernel, one thing
that stood out starkly was that they just don't have our volume of one
line, one patch per file hundreds of times and trivial changes, so we
definitely have a problem in this area.

The reason OpenStack has so few trivial and multiply split patches is
mostly grounded in the difficulty of submitting a patch to their tree.
Just preparing it for gerrit takes a long time (around ten minutes per
patch), which really reduces the volume of trivial patches, just because
no-one has that much energy (although some would argue it reduces the
volume too far).

It's human nature to spend more time on the easy problems, so a flood of
trivial patches which are "obviously" correct is easier to review and
include than one patch which alters something deep within mm and needs
careful thought.  At best, excessively split trivial patches are a
dilution of our review effort and at worst, they're actively sucking
people away from tackling the hard problems.

> > That's the real issue. And this needs to be fixed first.
> > 
> > I really started to put breaks into this cycle of hell, where I get
> > spammed with a 30+ patch series in the morning and after I spent some
> > quality time looking at it and replying to a particular patch, I get
> > another spam bomb within a few hours, which is not much better than
> > the previous one.
> 
> That's definitely a good workflow question.  We tell people to break
> huge patches down into pieces, and that can turn substantial changes
> into long patch series.  Which of the following is your primary concern:
> 
> - That people update the patch series before you're done submitting
>   feedback on it?  That does seem like an annoying problem, and I
>   haven't seen anyone explicitly talk about it; we should document it,
>   and develop some standard boilerplate saying "If you get feedback on
>   patch 04/25, don't send out v2 of the whole series until you get the
>   remaining feedback on the patches".  And until users are reasonably
>   educated on that problem, frequent reviewers may want to include that
>   boilerplate in their patch reviews.
> 
> - That people send patch series with too many problems, and you're
>   frustrated having to educate them on a dozen fundamental problems
>   (formatting, standard API usage, etc) rather than just what's specific
>   to your subsystem?  It seems completely reasonable to remind people of
>   the standard tools, improve those standard tools as needed, and
>   ideally set up more automation to run those tools before patches hit
>   reviewers.  You shouldn't need to waste your time reviewing patches
>   that don't build, for instance.
> 
> - That a 30-patch series is painful to review via email?  Agreed
>   completely; I think we need better git-based workflows that don't
>   always have to fall back to the least-common-denominator of patchbomb
>   threads.

This is a taste question.  I really appreciate a well split patch series
tackling a hard problem because it makes working out what changed and
why a lot easier than in a single monolith ... and as a reviewer, that's
gold dust.  I don't appreciate 30 patches changing the same thing in 30
different files.

I see a lot of patches generated by semantic patch scripts (once per
file)  where we add a pattern to the kernel for something (say replacing
kmalloc followed by memset with kzalloc) and people immediately use
semantic patching to change the other thousand places in the kernel
where this pattern was used ... regardless of whether the use they're
changing was correct or not.

I think for the pattern case, we have to agree when adding the pattern
whether it's useful or essential, and in the latter case do a big bang
change if we agree it's so essential that all current uses must change
so as not to have bad pattern examples.


James
