Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2E7EA82D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 05:02:23 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7EE7D1FAA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 05:02:22 +0000 (UTC)
Date: Thu, 29 May 2014 22:02:20 -0700
From: Greg KH <greg@kroah.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140530050220.GA2505@kroah.com>
References: <alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud> <1401344001.27691.4.camel@dabdike>
	<20140529233459.GD11741@kroah.com>
	<1401423973.2163.26.camel@dabdike>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1401423973.2163.26.camel@dabdike>
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

On Fri, May 30, 2014 at 08:26:13AM +0400, James Bottomley wrote:
> On Thu, 2014-05-29 at 16:34 -0700, Greg KH wrote:
> > > Just preparing it for gerrit takes a long time (around ten minutes per
> > > patch), which really reduces the volume of trivial patches, just because
> > > no-one has that much energy (although some would argue it reduces the
> > > volume too far).
> > > 
> > > It's human nature to spend more time on the easy problems, so a flood of
> > > trivial patches which are "obviously" correct is easier to review and
> > > include than one patch which alters something deep within mm and needs
> > > careful thought.  At best, excessively split trivial patches are a
> > > dilution of our review effort and at worst, they're actively sucking
> > > people away from tackling the hard problems.
> > 
> > I have not heard of these "cleanup" patches taking anyone's review
> > cycles up for the "harder" patches, do you have examples of it?
> 
> Yes, me.

Then flat out reject them.  Some subsystem maintainers do.  Or, push
back, like you said later with a "I'll take this if you will maintain
the driver from now on." :)

No one is forcing you to take these drivers, but as someone who has
really old code, I can see how it would get annoying with people hitting
you with cleanup patches.  Maybe you should just do a "coding style
cleanup" set of patches yourself one release to get it all in shape then
not have to worry about it anymore.  That's what I did years ago for the
USB drivers...

thanks,

greg k-h
