Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04A6A9B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 Nov 2016 18:43:39 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED3C4128
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 Nov 2016 18:43:37 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 03 Nov 2016 20:43:34 +0200
Message-ID: <6135950.bhsQAjX9Wp@avalon>
In-Reply-To: <760458a4-dd9f-b776-ba82-f78f7de0b7c4@samsung.com>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<760458a4-dd9f-b776-ba82-f78f7de0b7c4@samsung.com>
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

Hi Marek,

On Monday 01 Aug 2016 16:03:42 Marek Szyprowski wrote:
> On 2016-07-27 18:50, Luis R. Rodriguez wrote:
> > (first e-mail bounced)
> > 
> > Rafael has proposed has a set of patches to help deal with functional
> > dependencies between devices to help with power management. Mauro has
> > spoken briefly before over the media controller feature graph used to help
> > build relationship between complex dynamic dependencies. Dmitry has taken
> > on to help enable asynchronous probe, however for built-in devices this
> > requires very specific platform knowledge otherwise using async probe
> > will blow up your kernel -- if you get it right though, using async probe
> > can help with boot. Even if you sort things out well -- there are current
> > limitations with ordering semantics available, case in point the x86
> > IOMMUs already have a small sort run which expand beyond the core init
> > entries allowed, and on top of this the you still have device driver
> > dependencies which are implicitly setting order via link order: consider
> > the ordering between AMD IOMMUv1, AMD IOMMUv2, AMD KFD, and AMD radeon.
> > This has made us realize that at the module front the current 2 levels of
> > init calls limits our ordering semantics leaving only link order as a
> > last measure when things are built-in. Likewise I've recently have had to
> > look into dependency issues early in boot been due to differences between
> > paravirtualization and non-PV kernels, this lead to some current work to
> > help generalize custom section uses (linker tables) and then for us to
> > consider expanding x86 semantics early in boot to address some of the
> > shortcomings implicit by the some paravirtualized boot path.
> > 
> > The goal behind Rafael's work's goal is essentially to avoid code
> > duplication (as without doing that in the core many drivers potentially
> > need to do the same thing in the same way) and help to address the
> > asynchronous system suspend/resume case that cannot be addressed by any
> > driver by itself anyway. The effort behind Rafael's, Mauro's, Dmitry's
> > and my work are all independent however the patterns are very similar:
> > addressing complex dependencies and relationships at run time and
> > available semantics for these.
> > 
> > This begs a few questions:
> >   o Are there generic issues here ?
> >   o Are there generic solutions possible ?
> >   o What advanced techniques are out there to deal with this and how
> >   
> >     are efforts in those domains going ?
> > 
> > As an example of taste for the last item, consider Vegard Nossum's
> > involvement with a SAT solver (picosat) for AFL fuzzing with ext4 on
> > built-in kernels -- and the possibility to share some of the tools to
> > address some of the dependencies here. As it stands kconfig's semantics
> > are a bit of a mess, and in turn often tools have to do a bit of
> > inference work due to some of this, part if this problem is one reason
> > why current kconfig-sat efforts are a bit stalled.
> > 
> > Benefits for addressing some of these topics generally has quite a bit of
> > 
> > uses in different domains:
> >    o Speeding up boot time
> >    o Avoiding dead code, or correctness
> >    o Shrinking kernel size
> > 
> > This is a pretty generally broad topic, and it does cross subsystems,
> > I'm proposing it as a TECH TOPIC given that I had already poked Dmitry,
> > Mauro, and Rafael in February this year about a LPC microconference
> > about this sort of stuff as I thought that would have been a better venue
> > -- however even early then (February !) it seems they were busy with
> > existing LPC microconferences. I recently poked them and they seem to
> > agree discussing this somehow at KS would be good. Due to existing time
> > constraints at LPC, but given most interested folks may be at KS or
> > Plumbers, it'd be good to use shared time at KS and LPC to get folks to
> > organize ideas, problems, and solutions and in a more adhoc manner, and
> > then enable organically folks interested to organize and discuss short
> > term and long term roadmaps on respective work items. Its unclear yet if
> > there is a very CORE TOPIC here -- my guess would be that if there were
> > we'd find out at the next KS, but not this one. A workshop for this might
> > help.
> > 
> > Folks required to help with these topics:
> >    o Dmitry Torokhov <dmitry.torokhov@gmail.com> (async probe)
> >    o "Rafael J. Wysocki" <rafael.j.wysocki@intel.com> (functional
> >    dependencies) o Marek Szyprowski <m.szyprowski@samsung.com> (taking on
> >    some of
> > 
> > Rafael's previous work)
> > 
> >    o Mauro Carvalho Chehab <mchehab@osg.samsung.com> (feature graph)
> >    o Vegard Nossum <vegard.nossum@gmail.com> (SAT)
> >    o Valentin Rothberg <valentinrothberg@gmail.com>  (wary of some
> > 
> > kconfig issues)
> 
> I really wonder if all those 3 topics I identified are really connected
> enough to be discussed together. I see the following topics:
> 1. functional dependencies between devices in pm and runtime pm
> 2. the device probe order (and how to avoid deferred probe)
> 3. SAT solver for Kconfig and others
> 
> Rafaels patches (which I already used for solving the problem of runtime
> pm for Exynos IOMMU)

Rafael's patches don't address creation of the dependencies. One 
straightforward solution for this problem is to manually create them in driver 
code. This isn't well suited for dependencies on IOMMUs though, as IOMMUs are 
often handled transparently in the DMA mapping implementation and drivers are 
not supposed to care about them. Could you briefly explain how you solve that 
in the Exynos case ?

> are just providing infrastructure to create dependencies for power
> management (both for system/resume and runtime pm). They don't solve any
> probe dependencies and all devices, which are a part of the dependency have
> to explicitly register for it. I would like to help resolving all the
> issues with those patches and get them merged, because they implement a
> feature that we had to workaround in the internal trees for at least last 3
> years.
> 
> Solving probe order problem might use the dependency links infrastructure,
> but I still don't get why we would need to have SAT solver for it.

-- 
Regards,

Laurent Pinchart
