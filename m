From: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Sun, 19 Jun 2022 10:45:00 -0400
Subject: [Ksummit-discuss] [MAINTAINER SUMMIT] Are we becoming too fearful?
 [was Re: [TECH TOPIC] Rust]
In-Reply-To: <cefa5e41b74c96c81003cfd421cf754a03cc7f52.camel@HansenPartnership.com>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
 <Yq6+p+aRCjeZ7QsS@infradead.org>
 <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
 <2513dc4528c71d34d400c104e91ada6517869886.camel@HansenPartnership.com>
 <d3ba4011-a31d-05fa-b5de-808a1a5ee56f@kernel.dk>
 <Yq8qaqr673UFFG6y@pendragon.ideasonboard.com>
 <cefa5e41b74c96c81003cfd421cf754a03cc7f52.camel@HansenPartnership.com>
Message-ID: <ca6243160b36aa42f4d0ad23853b84e57ca366f1.camel@HansenPartnership.com>
Message-ID: <20220619144500.vTBi86CxHWRxq6ZwvGlcrOSB3k6QfrgChVDNVRZkrWQ@z>

On Sun, 2022-06-19 at 10:27 -0400, James Bottomley wrote:
> On Sun, 2022-06-19 at 16:53 +0300, Laurent Pinchart wrote:
[...]
> >  Whether it's worth the gain or not is not for me to decide,
> > but I'm certainly concerned that it could lead to a catastrophe if
> > we don't carefully think about the issues, acknowledge them, and
> > find ways to solve them. I don't think winging it is a real option
> > here, but I'd be more than happy to be shown that my concerns are
> > not founded :-)
> 
> Have more faith in the community and open source process. We've
> screwed up many times (devfs anyone ...) learned from the mistake and
> fixed it. I'm happy to bet that accepting Rust will be no different
> from all the other screwups we allowed in and later fixed.  So I
> don't think there will be a catastrophe.  Either the rust experiment
> works or it will become fairly quickly apparent if it doesn't and it
> will get removed.  The worst case, I suppose, is that the benefit is
> marginal in which case there's no consensus on removal vs
> continuation and we simply continue through inertia.  I bet in that
> situation Rust penetration will be fairly minimal and confined to
> enthusiastic subsystems with the rest taking steps to isolate
> themselves from it.  What we'd need in this case is some opinionated
> person running the tree and able to make the call for us ... now who
> could that be?

I think there's a growing problem in Linux which is exemplified by this
Rust debate but which goes way beyond it: We're becoming too fearful of
making big decisions to sustain innovation in some areas.  This really
is a creeping cancer of inertia that has destroyed many projects before
us and if we're not careful, we'll go the same way.

The biggest area where we currently squelch innovation is around
anything that touches the user space ABI.  Allegations of having to get
everything right ab initio because we have to support it "forever" and
all the subsequent wittering and second guessing are really stifling
innovation in pretty much anything that could be exposed to user space.
I really think, to counter this, we need a crash course reminder of all
of our mistakes and how we climbed out of the hole they dug us into,
because without that we're becoming too fearful of making mistakes.

The object is not to avoid mistakes at any cost, it's to be confident
that if you make them, you're good enough to find a pathway out of them
again.

James


