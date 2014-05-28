Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 555109B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:37:48 +0000 (UTC)
Received: from e33.co.us.ibm.com (e33.co.us.ibm.com [32.97.110.151])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4D9B91FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:37:44 +0000 (UTC)
Received: from /spool/local
	by e33.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Wed, 28 May 2014 10:37:42 -0600
Received: from b03cxnp08027.gho.boulder.ibm.com
	(b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
	by d03dlp03.boulder.ibm.com (Postfix) with ESMTP id C1AA919D803F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 10:37:32 -0600 (MDT)
Received: from d03av02.boulder.ibm.com (d03av02.boulder.ibm.com [9.17.195.168])
	by b03cxnp08027.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4SGahbg65339478
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 18:36:43 +0200
Received: from d03av02.boulder.ibm.com (localhost [127.0.0.1])
	by d03av02.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s4SGbcHJ026955 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 10:37:39 -0600
Message-ID: <1401295058.13546.106.camel@dhcp-9-2-203-236.watson.ibm.com>
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Guenter Roeck <linux@roeck-us.net>
Date: Wed, 28 May 2014 12:37:38 -0400
In-Reply-To: <20140528160556.GA22194@roeck-us.net>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<20140528160556.GA22194@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Wed, 2014-05-28 at 09:05 -0700, Guenter Roeck wrote: 
> On Wed, May 28, 2014 at 04:26:47PM +0200, Daniel Vetter wrote:
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
> 
> It gets scary if people start to ignore the "Reviewer's statement of
> oversight" in SubmittingPatches. I don't treat my "Reviewed-by" tag
> lightly, and sincerely hope others don't either.

Patches can be reviewed at different levels.  There are those things
that are generic, subsystem independent, that don't require low level
knowledge, but they do take time.  Unlike a low-level review, nobody
doing this type of review, would want the responsibility of the
'Reviewed-by' tag added.

Mimi
