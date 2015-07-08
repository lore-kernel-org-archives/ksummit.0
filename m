Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A67DAB68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 18:08:36 +0000 (UTC)
Received: from pmta2.delivery5.ore.mailhop.org
	(pmta2.delivery5.ore.mailhop.org [54.186.218.12])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 22E8611D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 18:08:36 +0000 (UTC)
Date: Wed, 8 Jul 2015 18:08:32 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Mark Brown <broonie@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@googlemail.com>,
	Thomas Petazzoni <thomas.petazzoni@free-electrons.com>,
	Gregory CLEMENT <gregory.clement@free-electrons.com>
Message-ID: <20150708180832.GL23515@io.lakedaemon.net>
References: <201507080121.41463.PeterHuewe@gmx.de> <2102387.OD8sBG4Eol@avalon>
	<20150708164310.GR11162@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150708164310.GR11162@sirena.org.uk>
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

On Wed, Jul 08, 2015 at 05:43:10PM +0100, Mark Brown wrote:
> On Wed, Jul 08, 2015 at 02:49:47AM +0300, Laurent Pinchart wrote:
> > On Wednesday 08 July 2015 01:21:40 Peter Huewe wrote:
> 
> > > We are definitely short on reviewers and thus have mostly overloaded
> > > maintainers.
> 
> > I was about to propose a related core topic.
> 
> > The reviewing and maintainership process seems to have a hard time scaling to 
> > the amount of contributions we receive, to the point where even well known and 
> > respected kernel developers get discourages.
> 
> tl;dr - upstreaming support for out of tree SoCs is currently often
> hard and time consuming.
> 
> > Throwing more maintainers, co-maintainers or sub-maintainers at the kernel 
> > won't magically solve this, as the more core developers a subsystem has the 
> > more difficult it will be for them to synchronize. I would like share 
> > experience about good practice rules that have proved to be effective.
> 
> Right.  In the specific case of upstreaming out of tree SoCs it's often
> in a large part part that there's some massive technical debt in the out
> of tree code working around generic problems in mainline, things like
> missing features or subsystems.  On the one hand those are the hardest
> bits to get solved upstream, but equally because they present generic
> issues they should be the easiest to collaborate on.
> 
> Tim Bird (CCed) has been working to try to get people together to try to
> analyze what's in the kernels people ship on product and see what we can
> do to bring that debt down, there's already some people starting to do
> some active work on this.

I'd like to include Sebastian Hesslebarth (maintainer of mach-berlin) in
this discussion.  Him and the free-electron's guys (Thomas, Gregory,
etc) have a lot of valuable first hand experience in this topic.

thx,

Jason.
