Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BB9FD9B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:28:45 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 15F5F1FA26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:28:45 +0000 (UTC)
Date: Wed, 28 May 2014 09:28:33 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Mimi Zohar <zohar@linux.vnet.ibm.com>
Message-ID: <20140528162833.GA23815@thin>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
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

On Wed, May 28, 2014 at 12:20:20PM -0400, Mimi Zohar wrote:
> On Wed, 2014-05-28 at 16:26 +0200, Daniel Vetter wrote: 
> > On Wed, May 28, 2014 at 12:57 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> > >> However encouraging reviewers by treating reviewed-by tag with equal
> > >> "respect" as signed-off-by seems like the better way.
> > >
> > > I would even argue that it should be treated more seriously than sign-offs.
> > > After all, there are more patches applied (and all of them are signed-off
> > > by at least one person) than there are commits with the Reviewed-by tag.
> > 
> > Fully agreed on given reviews more credit than sobs. Authors of
> > feature already get all the praise and publicity for doing something
> > visible, which means review is always a background chore. But if we
> > lack reviewers then the pipeline for merging patches gets seriously
> > clogged up. At least that's been my experience with drm/i915, and
> > pretty much all the people there work for my employer so I can _make_
> > them review code. Still not enough.
> > 
> > It's a fine line though since we absolutely don't want people to
> > rubber-stamp 20 patches in half an hour just because someone told them
> > they need to "review" them. Plain more visibility to reviewers (lwn
> > stats?) might help even with the risk that it will be gamed for sure.
> > -Daniel
> 
> Like the other tags, 'Reviewed-by' isn't automatically generated and
> requires agreement from the person.  Perhaps the tag name implies too
> much responsibility, perhaps a 'Commented-by' tag would be less daunting
> for people reviewing the code.  And if it was highlighted in the
> statistics at the conference talks, then maybe there would be more
> participation.

Or perhaps in LWN's statistics, which focus on Signed-off-by but don't
mention Reviewed-by at all.

- Josh Triplett
