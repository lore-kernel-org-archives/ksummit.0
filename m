Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D4F41919
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:09:10 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6A5BB29A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:09:10 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 01 Aug 2016 16:09:09 +0300
Message-ID: <2525670.QGOuaEkzC4@avalon>
In-Reply-To: <20160729111303.GA10376@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
	<20160729111303.GA10376@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
	and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday 29 Jul 2016 12:13:03 Mark Brown wrote:
> On Fri, Jul 29, 2016 at 09:45:55AM +0200, Hans Verkuil wrote:
> > My main problem is not so much with deferred probe (esp. for cyclic
> > dependencies it is a simple method of solving this, and simple is good).
> > My main problem is that you can't tell the system that driver A needs to
> > be probed after drivers B, C and D are probed first.
> > 
> > That would allow us to get rid of v4l2-async.c which is a horrible hack.
> > 
> > That code allows a bridge driver to wait until all dependent drivers are
> > probed. This really should be core functionality.
> > 
> > Do other subsystems do something similar like
> > drivers/media/v4l2-core/v4l2-async.c? Does anyone know?
> 
> ASoC does, it has an explicit card driver to join things together and
> that just defers probe until everything it needs is present.  This was
> originally open coded in ASoC but once deferred probe was implemented we
> converted to that.

Asynchronous bindings of components, as done in ASoC, DRM and V4L2, is a 
problem largely solved (or rather hacked around), but I'm curious to know how 
ASoC handles device unbinding (due to device removal or manual unbinding 
through sysfs). With asynchronous binding we can more or less easily wait for 
all components to be present before creating circular dependencies, but 
breaking them to implement unbinding is an unsolved problem at least in V4L2.

-- 
Regards,

Laurent Pinchart
