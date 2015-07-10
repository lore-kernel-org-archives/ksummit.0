Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5BB38B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 13:03:27 +0000 (UTC)
Received: from pmta2.delivery5.ore.mailhop.org
	(pmta2.delivery5.ore.mailhop.org [54.186.218.12])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 65902F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 13:03:26 +0000 (UTC)
Date: Fri, 10 Jul 2015 13:03:23 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20150710130323.GS23515@io.lakedaemon.net>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150708140727.GH23515@io.lakedaemon.net>
	<trinity-9a36fcd4-7739-40a7-b5f9-0ecf88d0a331-1436383797204@3capp-gmx-bs35>
	<20150708221836.GN23515@io.lakedaemon.net>
	<20150709150938.GF4265@tuxdriver.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709150938.GF4265@tuxdriver.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
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
> consider myself a "drop out".  

Absolutely not.  It was a sad day when I heard you were stepping down.

fwiw, I reached out to someone who I felt was capable to see
if he could help.  Unfortunately, he had some PhD-thesis thingy going
on.  :(  Back to the 'qualified people are busy' ...

Our greatest mistake is if we don't learn from your experience and make
the system better.

> But, I am someone that recently
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

I certainly don't have a lot of the hardware people are submitting
patches for, ergo ...

> The bigger concern was that while I was wrangling everyone else's
> wireless patches, I had less and less time to do useful work elsewhere
> in the kernel.  I definitely have heard other maintainers express
> similar complaints, so this seems like a relatively common concern.
> It would be good to find and promote maintainer organizations within
> subsystems that are less likely to monopolize the mainainer's
> development time.  Previously we have had discussions of how the
> TIP tree is run, but I'm not sure that works well in every case.
> Are there other working models for this?

Olof has already mentioned how arm-soc is handled.  As a submitter of
pull requests to them for years, I can vouch that it works quite well.
Additionally, mach-mvebu is co-maintained by myself and three others
(there are multiple SoCs in there, we each have our focus).

Since I started a new job (hence less time for kernel work), we've
rotated out who takes the lead for each cycle.  It's a *huge* relief to
know it's not up to me *every* cycle.

Similar experience with Thomas and I on irqchip.

tl;dr:  co-maintaining works, works well, and helps avoid burnout.  It
also opens the door for part-time involvement.

> I guess I'm suggesting the opposite of a "professional maintainer".
> Some people thrive at being the center of a subsystem, as I did for
> some time with wireless.  But burnout is a problem, and I think we
> can limit some of that if somehow we can encourage less expansive
> roles for individual maintainers.

Fully agree.

thx,

Jason.
