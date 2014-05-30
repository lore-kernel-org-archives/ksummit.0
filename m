Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 927E38A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 04:26:20 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 162821FA26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 04:26:19 +0000 (UTC)
Message-ID: <1401423973.2163.26.camel@dabdike>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Greg KH <greg@kroah.com>
Date: Fri, 30 May 2014 08:26:13 +0400
In-Reply-To: <20140529233459.GD11741@kroah.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud> <1401344001.27691.4.camel@dabdike>
	<20140529233459.GD11741@kroah.com>
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

On Thu, 2014-05-29 at 16:34 -0700, Greg KH wrote:
> On Thu, May 29, 2014 at 10:13:21AM +0400, James Bottomley wrote:
> > I suspect, but cannot prove, it is somewhat driven by the patch
> > statistics.  I know in Parallels, I track features accepted into the
> > kernel, not patches, but we do have a patch metric as well for people
> > who do incidental bug fixing as they push features, so we're not 100%
> > pure on this.
> > 
> > When I recently gave a comparison of OpenStack and the Kernel, one thing
> > that stood out starkly was that they just don't have our volume of one
> > line, one patch per file hundreds of times and trivial changes, so we
> > definitely have a problem in this area.
> > 
> > The reason OpenStack has so few trivial and multiply split patches is
> > mostly grounded in the difficulty of submitting a patch to their tree.
> 
> And I would argue that this is going to be a long-term problem for them.

Well, I think they make it too hard, but I think they also demonstrate
that some friction in the process is a useful refiner.

> > Just preparing it for gerrit takes a long time (around ten minutes per
> > patch), which really reduces the volume of trivial patches, just because
> > no-one has that much energy (although some would argue it reduces the
> > volume too far).
> > 
> > It's human nature to spend more time on the easy problems, so a flood of
> > trivial patches which are "obviously" correct is easier to review and
> > include than one patch which alters something deep within mm and needs
> > careful thought.  At best, excessively split trivial patches are a
> > dilution of our review effort and at worst, they're actively sucking
> > people away from tackling the hard problems.
> 
> I have not heard of these "cleanup" patches taking anyone's review
> cycles up for the "harder" patches, do you have examples of it?

Yes, me.

> In fact, I would argue the fact that we do so easily accept cleanups
> across the board that keeps our developer community engaged and new
> people joining in easy.

OK, so this is a difference in style.  I prefer the find a bug and fix
it approach.  The thing that worries me about cleanup for its own sake
is that we're developing ever more elaborate tools to detect pattern
changes, so it's spawning an industry in its own right and some people
see it as an end in itself, not a precursor to graduating to substantive
changes.

I also have no objections to cleanup coupled with substantive changes.
In fact, when someone wants to clean up one of the old and crufty
drivers, I say yes, provided they can maintain it.  We've had a couple
of successes in this regard.

James
