Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3956291A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 12:50:40 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1E88528C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 12:50:39 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Mon, 01 Aug 2016 15:50:37 +0300
Message-ID: <1897981.4KlpDOAc3c@avalon>
In-Reply-To: <20160729000055.GE3296@wotan.suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<3704346.bW37OlXF5c@avalon> <20160729000055.GE3296@wotan.suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Armin Biere <biere@jku.at>, Roberto Di Cosmo <roberto@dicosmo.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Stefano Zacchiroli <zack@upsilon.cc>,
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

Hi Luis,

On Friday 29 Jul 2016 02:00:55 Luis R. Rodriguez wrote:
> On Thu, Jul 28, 2016 at 07:04:49PM +0300, Laurent Pinchart wrote:
> > On Thursday 28 Jul 2016 09:25:58 Mauro Carvalho Chehab wrote:
> >> For the device-centric media devices, the pipelines should be created by
> >> the Kernel, and not via userspace. On such cases, a SAT solver could
> >> help to setup the hardware pipelines.
> > 
> > That's the part I don't get. How is SAT related to that ?
> 
> Provided you have figured out how to generalize how describe items and
> dependencies, you should be able to use a SAT solver to find optimal
> dependency maps.  For instance SAT solvers have been used in challenges to
> help address Linux distribution package dependency issues, helping improve
> the not only if a request is satisfiable but also help with the most
> optimal solution.

Thanks for the clarification, this matches my understanding. My question 
originated from the fact the we don't really have dependency problems to solve 
in MC, at least in kernelspace. While I can't rule out a change in the future 
there, at the moment our dependency issues in V4L2 are related to probe 
ordering and suspend/resume (and to some extent to device removal, but that 
has been a second-class citizen so far). Improvements there would be welcome, 
but that's unrelated to MC.

The various directions in which this discussion is going leads me to believe 
that the topic would be good to discuss during the Kernel Summit, if only to 
get everybody aware of related developments happening through the kernel and 
foster collaboration in those areas.

> A SAT solver therefore in theory could be used to help optimal dependency
> maps as well for other things, which are kernel-related. For instance we'll
> baby step testing this with kconfig [0], if that proves useful we'll have
> to find timing / limitations, but it should at least give us a lower order
> resolution time, and depending on your requirements it may suffice for some
> needs. Furthermore, say you were not time constrained (linker or compiler)
> and could order things in code prior to execution, you could sort things
> out pre-runtime for a few situations.
> 
> This naturally then varies depending on the problem at hand. I've jotted
> down a few ideas on the wiki but its really all just scrapbook notes at
> this point [1] with an eye towards the long term here, and projecting work
> on kconfig gets done.
> 
> [0] https://kernelnewbies.org/KernelProjects/kconfig-sat
> [1] https://kernelnewbies.org/KernelProjects/linux-sat

-- 
Regards,

Laurent Pinchart
