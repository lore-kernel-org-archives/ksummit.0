Return-Path: <marc.zyngier@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3F4AB83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 10:43:15 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6CC8022A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 10:43:14 +0000 (UTC)
To: "Luis R. Rodriguez" <mcgrof@suse.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Message-ID: <5799E1BF.4000001@arm.com>
Date: Thu, 28 Jul 2016 11:43:11 +0100
MIME-Version: 1.0
In-Reply-To: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
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

On 27/07/16 17:50, Luis R. Rodriguez wrote:
> (first e-mail bounced)
> 
> Rafael has proposed has a set of patches to help deal with functional
> dependencies between devices to help with power management. Mauro has
> spoken briefly before over the media controller feature graph used to help
> build relationship between complex dynamic dependencies. Dmitry has taken on
> to help enable asynchronous probe, however for built-in devices this requires
> very specific platform knowledge otherwise using async probe will blow up
> your kernel -- if you get it right though, using async probe can help with
> boot. Even if you sort things out well -- there are current limitations with
> ordering semantics available, case in point the x86 IOMMUs already have a small
> sort run which expand beyond the core init entries allowed, and on top of this
> the you still have device driver dependencies which are implicitly setting
> order via link order: consider the ordering between AMD IOMMUv1, AMD IOMMUv2,
> AMD KFD, and AMD radeon. This has made us realize that at the module front the
> current 2 levels of init calls limits our ordering semantics leaving only link
> order as a last measure when things are built-in. Likewise I've recently have
> had to look into dependency issues early in boot been due to differences
> between paravirtualization and non-PV kernels, this lead to some current work
> to help generalize custom section uses (linker tables) and then for us to
> consider expanding x86 semantics early in boot to address some of the
> shortcomings implicit by the some paravirtualized boot path.
> 
> The goal behind Rafael's work's goal is essentially to avoid code duplication
> (as without doing that in the core many drivers potentially need to do the same
> thing in the same way) and help to address the asynchronous system
> suspend/resume case that cannot be addressed by any driver by itself anyway.
> The effort behind Rafael's, Mauro's, Dmitry's and my work are all independent
> however the patterns are very similar: addressing complex dependencies and
> relationships at run time and available semantics for these.
> 
> This begs a few questions:
> 
>  o Are there generic issues here ?
>  o Are there generic solutions possible ?
>  o What advanced techniques are out there to deal with this and how
>    are efforts in those domains going ?
> 
> As an example of taste for the last item, consider Vegard Nossum's involvement
> with a SAT solver (picosat) for AFL fuzzing with ext4 on built-in kernels --
> and the possibility to share some of the tools to address some of the
> dependencies here. As it stands kconfig's semantics are a bit of a mess, and
> in turn often tools have to do a bit of inference work due to some of this,
> part if this problem is one reason why current kconfig-sat efforts are a bit
> stalled.
> 
> Benefits for addressing some of these topics generally has quite a bit of
> uses in different domains:
> 
>   o Speeding up boot time
>   o Avoiding dead code, or correctness
>   o Shrinking kernel size
> 
> This is a pretty generally broad topic, and it does cross subsystems,
> I'm proposing it as a TECH TOPIC given that I had already poked Dmitry,
> Mauro, and Rafael in February this year about a LPC microconference
> about this sort of stuff as I thought that would have been a better venue --
> however even early then (February !) it seems they were busy with existing LPC
> microconferences. I recently poked them and they seem to agree discussing this
> somehow at KS would be good. Due to existing time constraints at LPC, but given
> most interested folks may be at KS or Plumbers, it'd be good to use shared time
> at KS and LPC to get folks to organize ideas, problems, and solutions and in a
> more adhoc manner, and then enable organically folks interested to organize and
> discuss short term and long term roadmaps on respective work items. Its unclear
> yet if there is a very CORE TOPIC here -- my guess would be that if there were
> we'd find out at the next KS, but not this one. A workshop for this might
> help.
> 
> Folks required to help with these topics:
> 
>   o Dmitry Torokhov <dmitry.torokhov@gmail.com> (async probe)
>   o "Rafael J. Wysocki" <rafael.j.wysocki@intel.com> (functional dependencies)
>   o Marek Szyprowski <m.szyprowski@samsung.com> (taking on some of
> Rafael's previous work)
>   o Mauro Carvalho Chehab <mchehab@osg.samsung.com> (feature graph)
>   o Vegard Nossum <vegard.nossum@gmail.com> (SAT)
>   o Valentin Rothberg <valentinrothberg@gmail.com>  (wary of some
> kconfig issues)

I'm interested in part-taking in this, and have a vested interest in
looking at improving what we do in the early boot phase with things like
interrupt controllers and timers that we currently do not represent as
devices (and yet have obvious dependencies on).

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...
