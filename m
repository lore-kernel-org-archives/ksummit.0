Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B6124BBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 19:02:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5D45A177
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 19:02:34 +0000 (UTC)
Date: Thu, 9 Jul 2015 12:02:29 -0700
From: Darren Hart <dvhart@infradead.org>
To: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20150709190229.GC9169@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150708140727.GH23515@io.lakedaemon.net>
	<trinity-9a36fcd4-7739-40a7-b5f9-0ecf88d0a331-1436383797204@3capp-gmx-bs35>
	<20150708221836.GN23515@io.lakedaemon.net>
	<20150709150938.GF4265@tuxdriver.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709150938.GF4265@tuxdriver.com>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 09, 2015 at 11:09:38AM -0400, John W. Linville wrote:
> On Wed, Jul 08, 2015 at 10:18:36PM +0000, Jason Cooper wrote:
> > On Wed, Jul 08, 2015 at 09:29:57PM +0200, Peter Huewe wrote:
> 
> > > Not only the bad people drop out, I've seen quite a lot of good devs
> > > vanish for good - and these should be the ones we also should try to
> > > keep - especially since I'm not sure whether we can allow such high
> > > drop out rates over a long time.
> > 
> > I'd love to hear some specific examples, links to email threads so we
> > can quantify this.  I suspect a lot of it is: "I scratched the itch,
> > and didn't have anything else I wanted to add. Then daily life took me
> > away."
> > 
> > Which is the hard part about qualified people.  They're busy. :-)
> 
> Hopefully I'm not one of the "bad people", and I don't reallly
> consider myself a "drop out".  But, I am someone that recently
> (i.e. since the last KS) extracted himself from a maintainer role.
> It seems like I should have something to add here...
> 
> I was the wireless maintainer for roughly seven years.  My situation
> may be a bit unique in that I was always more of a "Linux guy" than a
> "wireless guy", and most of the contributors were bigger experts in
> the technology itself than I ever was.  That was fine for a while, but
> over time that became less and less comfortable for me.  I've never
> really heard anyone else express that sentiment, so this is probably
> not a widespread concern...

I've certainly found this to be the case for me where my little corner of the
kernel, platform-drivers-x86, is basically an integration point for many other
subsystems, such as rfkill, backlight, input, etc. with a lot of ACPI thrown in
the mix. I also never have the hardware to be able to do any testing myself. I'm
100% dependent on my submitters for any testing beyond build and static
analysis.

> 
> The bigger concern was that while I was wrangling everyone else's
> wireless patches, I had less and less time to do useful work elsewhere
> in the kernel.  I definitely have heard other maintainers express
> similar complaints, so this seems like a relatively common concern.
> It would be good to find and promote maintainer organizations within
> subsystems that are less likely to monopolize the mainainer's
> development time.

For me, the concern is that I'm basically acting as a pro-bono proxy for various
vendors who don't maintain drivers for the products. So speaking of recruitment,
we could use the vendors to get more involved with the drivers for their
platforms. Some, Dell and Toshiba most notably, have been providing more
documentation, fortunately.

> Previously we have had discussions of how the
> TIP tree is run, but I'm not sure that works well in every case.
> Are there other working models for this?
>
> I guess I'm suggesting the opposite of a "professional maintainer".
> Some people thrive at being the center of a subsystem, as I did for
> some time with wireless.  But burnout is a problem, and I think we
> can limit some of that if somehow we can encourage less expansive
> roles for individual maintainers.

Something along these lines is probably relevant to a number of subsystems where
the professional maintainer is problematic since some to all of the content is
of no interest to the employer (unless it's the LF).

-- 
Darren Hart
Intel Open Source Technology Center
