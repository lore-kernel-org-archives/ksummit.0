Return-Path: <christian.brauner@ubuntu.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 019CCAD8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 21:03:34 +0000 (UTC)
Received: from youngberry.canonical.com (youngberry.canonical.com
	[91.189.89.112])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5D26289E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 21:03:33 +0000 (UTC)
Date: Mon, 19 Aug 2019 23:03:25 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190819210323.phehe5ldld552ym7@wittgenstein>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
	<alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
	<20190819065710.GC20455@quack2.suse.cz>
	<alpine.DEB.2.21.1908191024430.1923@nanos.tec.linutronix.de>
	<20190819161624.yeups3ugpyb6d4v2@wittgenstein>
	<alpine.DEB.2.21.1908192103270.1796@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908192103270.1796@nanos.tec.linutronix.de>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 19, 2019 at 09:04:49PM +0200, Thomas Gleixner wrote:
> On Mon, 19 Aug 2019, Christian Brauner wrote:
> > On Mon, Aug 19, 2019 at 10:26:01AM +0200, Thomas Gleixner wrote:
> > > On Mon, 19 Aug 2019, Jan Kara wrote:
> > > > On Sat 17-08-19 21:35:29, Paul Walmsley wrote:
> > > > > On Mon, 15 Jul 2019, Theodore Y. Ts'o wrote:
> > > > > 
> > > > > > I'd suggest changing the text to read:
> > > > > > 
> > > > > >  	 - Acked-by: indicates an agreement by the maintainer or
> > > > > > 	   reviewer of the the relevant code that the patch is
> > > > > > 	   appropriate for inclusion into the kernel.
> > > > > 
> > > > > This would be a positive step forward.  I would be in favor of this. 
> > > > > 
> > > > > It would also be good to state here, if it isn't stated already, that 
> > > > > "reviewer" means "someone who is listed in an R: line in MAINTAINERS".
> > > > 
> > > > I don't think that 'R:' entry in MAINTAINERS should be really asked for.
> > > > IMO that is unnecessary bureaucracy and discourages review from people
> > > > that are not core developers. Sure the quality of the review may be lower
> > > > than from core developer but still there's some value in it. So I'd really
> > > > leave it at the discretion of the maintainer whether he accepts or just
> > > > ignores Reviewed-by tag.
> > > 
> > > The R: in MAINTAINERS is there to make sure these people get actually CC'ed
> > > on patches against that particular subsystem. It does not mean that others
> > > are not allowed or encouraged to review patches in that area.
> > 
> > If I may, I agree that only accepting acks/reviews by people in R: is
> > too strict.
> 
> It is.
> 
> > Imho, it sends the wrong message and probably discourages
> > participation in kernel development. It's also a high bar currently to
> > get people even listed as R: In my experience people are reluctant to
> > suggest they be added as R: in that file because it might be conceived
> > as being overly assertive of ones abilities. One easy fix could be to
> > encourage maintainers of a given subsystem to be more open to add people
> > they trust as R:
> 
> We do, but not over the head of the developer. We ask people before doing

Sorry, I implicitly assumed the asking-for-developer-consent part.
You're right.

> that and quite some decline.

Right, I had that experience as well. Imho, that's even more of a sign
that restricting "valuable" reviewers to R: is not a good idea.

One idea I had a while back - and this maybe crazy - was to make a
review by a certain person mandatory: A way to mark a given patch as
requiring a review by someone before it can be considered for inclusion,
i.e. something stronger than "Cc e.g. "Requires-Review-by" without
necessarily having that person to be listed in MAINTAINERS. Maybe that's
already expressed in the R: field though...
