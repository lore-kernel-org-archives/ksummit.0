Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F132B9A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 20:32:59 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7FA6B246
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 20:32:59 +0000 (UTC)
Date: Mon, 1 Aug 2016 22:32:55 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20160801203255.GC3296@wotan.suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<3704346.bW37OlXF5c@avalon> <20160729000055.GE3296@wotan.suse.de>
	<1897981.4KlpDOAc3c@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1897981.4KlpDOAc3c@avalon>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Armin Biere <biere@jku.at>, Roberto Di Cosmo <roberto@dicosmo.org>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Stefano Zacchiroli <zack@upsilon.cc>,
	Marek Szyprowski <m.szyprowski@samsung.com>
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

On Mon, Aug 01, 2016 at 03:50:37PM +0300, Laurent Pinchart wrote:
> Hi Luis,
> 
> On Friday 29 Jul 2016 02:00:55 Luis R. Rodriguez wrote:
> > On Thu, Jul 28, 2016 at 07:04:49PM +0300, Laurent Pinchart wrote:
> > > On Thursday 28 Jul 2016 09:25:58 Mauro Carvalho Chehab wrote:
> > >> For the device-centric media devices, the pipelines should be created by
> > >> the Kernel, and not via userspace. On such cases, a SAT solver could
> > >> help to setup the hardware pipelines.
> > > 
> > > That's the part I don't get. How is SAT related to that ?
> > 
> > Provided you have figured out how to generalize how describe items and
> > dependencies, you should be able to use a SAT solver to find optimal
> > dependency maps.  For instance SAT solvers have been used in challenges to
> > help address Linux distribution package dependency issues, helping improve
> > the not only if a request is satisfiable but also help with the most
> > optimal solution.
> 
> Thanks for the clarification, this matches my understanding. My question 
> originated from the fact the we don't really have dependency problems to solve 
> in MC, at least in kernelspace.

If I understood what Mauro was explaining correctly, it would seems that in
future this may change and that kernel dependency resolution may be a thing
to address in the future. Is this correct ?

Even so -- if you have a dependency problem in userspace and have a solution
for it I'd like to take time for this session to understand it and see what
further optimizations might be possible. Since its in userspace it may
in fact be easier to toy with certain test concepts faster and more easily.

> While I can't rule out a change in the future 
> there, at the moment our dependency issues in V4L2 are related to probe 
> ordering and suspend/resume (and to some extent to device removal, but that 
> has been a second-class citizen so far). Improvements there would be welcome, 
> but that's unrelated to MC.

OK so what you describe here is the dependency issues with respect to the
kernel only, is that right ?

> The various directions in which this discussion is going leads me to believe 
> that the topic would be good to discuss during the Kernel Summit, if only to 
> get everybody aware of related developments happening through the kernel and 
> foster collaboration in those areas.

Great.

  Luis
