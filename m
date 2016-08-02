Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C480093D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:56:46 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id C4890298
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:56:45 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 02 Aug 2016 02:01:56 +0200
Message-ID: <1555444.RIYpEbA2F7@vostro.rjw.lan>
In-Reply-To: <20160801190309.GX3296@wotan.suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Oded Gabbay <oded.gabbay@gmail.com>,
	=?ISO-8859-1?Q?J=F6rg_R=F6del?= <jroedel@suse.de>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Cristina Moraru <cristina.moraru09@gmail.com>,
	Roberto Di Cosmo <roberto@dicosmo.org>,
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

On Monday, August 01, 2016 09:03:09 PM Luis R. Rodriguez wrote:
> On Fri, Jul 29, 2016 at 12:13:03PM +0100, Mark Brown wrote:
> > On Fri, Jul 29, 2016 at 09:45:55AM +0200, Hans Verkuil wrote:
> > 
> > > My main problem is not so much with deferred probe (esp. for cyclic dependencies
> > > it is a simple method of solving this, and simple is good). My main problem is
> > > that you can't tell the system that driver A needs to be probed after drivers B,
> > > C and D are probed first.
> > 
> > > That would allow us to get rid of v4l2-async.c which is a horrible hack.
> 
> I'd like to understand the requirement for this a bit better, so someone explaining
> this would be good if this moves forward as a tech session.

One case I'm familiar with is when a device has two (or more) device IDs, where
one is more specific than the other.  The idea being that if the OS has a driver
for that particular device, it will use the more specific device ID (say A) to
look for it, but otherwise it will use the other "generic" ID (say B) to match
against a "generic" driver.

Of course, that only works if the driver for A is probed before the driver for B.

> > > 
> > > That code allows a bridge driver to wait until all dependent drivers are probed.
> > > This really should be core functionality.
> > 
> > > Do other subsystems do something similar like drivers/media/v4l2-core/v4l2-async.c?
> > > Does anyone know?
> > 
> > ASoC does, it has an explicit card driver to join things together and
> > that just defers probe until everything it needs is present.  This was
> > originally open coded in ASoC but once deferred probe was implemented we
> > converted to that.
> 
> OK that's 2.
> 
> Another piece of code that deals with complex dependencies I've recently
> ventured into was the x86 IOMMU stuff. The complexities here are both at
> the built-in init level and also later at probe.
> 
> For the built-in code we have a code run time sort where based on a simple set
> of semantics used to declare dependencies final code that was compiled in is
> sorted out so that the code that needs to initialize first triggers first. hpa
> had suggested long ago that generalizing this was desirable, so I've taken that
> task and have some basic building blocks which are now being proposed in their
> RFC v3 series [0]. If it seems that the run time sort mechanism is left out,
> its correct, upon review with Andy on RFC v2 we don't *yet* need a run time
> sort, even though I expanded on the existing one for IOMMU and strengthened the
> semantics there, its still available on the userspace mockup solution for
> linker tables though [1]. I should note that I did at least determine that
> generalizing a sort for dependency maps which shuffles code at run time
> did not make sense due to the fact that you'd either need to generalize the
> building blocks used for defining a dependency map. If you move one item used
> for init from the end to the front, your iteration function must use the same
> structure in the same way. Run time sorts for code sections then are left up
> to each subsystem to implement. On x86, I evaluated sorting out dependencies
> further, for instance on setup_arch() -- however it just seemed not needed
> at this point. For other subsystems this may make more sense.
> 
> At the probe level IOMMUs face another issue when dealing with GPU drivers.
> The kernel has 7 levels of initialization possible (pure_initcall() == 0,
> core_initcall() == 1, ..., fs_initcall() == 5, device_initcall() == 6,
> late_initcall() == 7), module_init() maps to device_initcall(), but modules may
> also use late_initcall() if they know a driver built-in needs to definitely run
> very late. Naturally if you're not a piece of code running very early on, and
> you want the option to be a module as well (device_initcall == 6) then you
> really only have at your disposal two levels available before you get to an end
> device driver. It turns out that for GPU drivers this is not enough to map out
> enough dependencies at the higher level, so the only next best solution
> available is to implicitly rely on linker order. This is the case for ordering
> logistics between AMD IOMMU v1, AMD IOMMUv2 (depends on AMD IOMMU v1), and
> AMD KFD driver, and the AMD radeon driver:
> 
> 0. AMD IOMMUv1:    arch/x86/kernel/pci-dma.c
> 1. AMD IOMMUv2:    drivers/iommu/amd_iommu_v2.c
> 2. AMD KFD:        drivers/gpu/drm/amd/amdkfd/kfd_module.c
> 3. AMD Radeon:     drivers/gpu/drm/radeon/radeon_drv.c
> 
> For details refer to a recent discussion on this [2].
> 
> Using linker tables for initialization should enable us to scale initialization
> levels well beyond 7 levels, in fact this could be however long an ASCII string
> is acceptable in C as the order level is stored as a string (part of the section
> name) and also enable each subsystem to have its own set of levels / heuristics
> for initialization as well. Ordering would actually be done at link time, so
> the code is already ordered *iff* all dependency heuristics are available at
> compilation time. If dependency information can only be available at run time,
> a run time sort is optional but using the existing x86 IOMMU code as an example
> and precedent (and considering my expanded stricter semantics) -- in the future
> this can be an option for any subsystem as well as a supplement.
> 
> My interest in the media controller and the SAT solver is I consider the run
> time sort nothing but a sloppy hack (see my userspace tree for tons of
> semantics fixes), and formalizing this to something more concrete that can be
> generic should be more useful to other parts of the kernel. This is why I
> wanted to discuss these things. Is there a generic common goal here and
> can we share code ? If so what would that look like ?
> 
> My impression at first is that linker-time dependencies should suffice to cover
> a lot cases, but that should still mean then that binutils ld SORT() could
> potentially be enhanced further in the future, specially if a simple dependency
> map could be expressed. For instance can we make it run faster, or would
> having it interpret certain other criteria enable us to use a SAT solver
> to optimize dependency resolution / ordering. Then there is run time sorting
> and optimization -- but the same questions apply here.
> 
> I think a fruitful session would be to:
> 
>   o review / explain each of the complex ordering problems from different
>     kernel subsystems
>   o review / explain existing solutions to these problems
>   o finally try to figure out if a common solution is possible, both
>     short term and long term
> 
> [0] https://lkml.kernel.org/r/1469222687-1600-1-git-send-email-mcgrof@kernel.org
> [1] https://git.kernel.org/cgit/linux/kernel/git/mcgrof/linker-tables.git/
> [2] https://lkml.kernel.org/r/1464311916-10065-1-git-send-email-mcgrof@kernel.org

I'm still wondering why probe ordering is special and suspend-resume and runtime
PM ordering isn't (and shutdown ordering too, for that matter).

In the majority of cases when probe ordering matters, suspend/resume and runtime
PM ordering matters too, so considering one of them alone doesn't seem very
useful to me.

Now, even if you can address probe ordering issues by using some link-time
methods and similar, runtime PM is async by nature and suspend/resume is
async for many devices too (for efficiency reasons) and the only approach
that works here is to have the dependencies represented as data somehow
and use those when you need to carry out the operation.

Thanks,
Rafael
