Return-Path: <alexandre.belloni@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB0CEBBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 15:17:28 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7A499102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 15:17:27 +0000 (UTC)
Date: Tue, 11 Sep 2018 17:17:15 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20180911151715.GO2494@piout.net>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<20180911143538.GA10123@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180911143538.GA10123@sirena.org.uk>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 11/09/2018 15:35:38+0100, Mark Brown wrote:
> On Tue, Sep 11, 2018 at 02:44:23PM +0200, Alexandre Belloni wrote:
> > On 11/09/2018 00:44:57+0200, Daniel Vetter wrote:
> 
> > > gitlab (or well anything with a concept like pull requests) makes the
> > > 90% so much easier. And it doesn't take more work for contributors if
> > > you set things up right - it's just a git push instead of a git
> > > send-email. At least after initial setup is done.
> 
> > I would like to chime in and remind you that there are many subsystems
> > where you get a lot of drive-by contribution from random people. I'm
> > obviously thinking about rtc but I think this would also apply to codec,
> > IIO, power/supply, hwmon... In that case any initial setup would be
> > prohibitive.
> 
> Right, and this is also a potential issue for people working kernel wide
> if we end up with a bunch of different instances of gitlab or something
> similar.  
> 
> > So I need to emphasise that there are subsystem where people are not
> > backed by a company to contribute or review. What I often see is someone
> > having $random hardware and submitting a patch adding support for it.
> > That developer will definitively not review other patches because he has
> > no particular interest in them. He also probably doesn't have the
> > experience to do a review.
> 
> Even where people do have corporate backing for what they're doing
> they've often worked pretty hard to even get the time to do submissions,
> or they're doing it as a byproduct of whatever the "real" goal is.  It
> also reduces the impact from CI quite a bit if you've got lots of random
> drivers with most of the changes going in there, though it's still a win
> for the core and for any hardware which does manage to make it into a CI
> system.

Yes, that is also one of my points, I often get submission form people
getting the driver to work on a specific revision of the kernel (quite
often a vendor tree) and it is impossible to ask them to test changes on
later kernels because either they are not able to run a recent upstream
kernel or they already moved on and are not interested anymore.

I personally would rather not raise the bar for driver submission
but that also means that I have to make untested/unreviewed changes in
some of the drivers when refactoring.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
