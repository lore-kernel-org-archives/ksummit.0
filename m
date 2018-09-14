Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9741DE18
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Sep 2018 14:15:51 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED5EC7E4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Sep 2018 14:15:50 +0000 (UTC)
Date: Fri, 14 Sep 2018 16:15:46 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Dave Airlie <airlied@gmail.com>
In-Reply-To: <CAPM=9twrXd4W-Qf_mmqXkBj5bi=PaTdy0KPPTfW9A6bN5uk0sw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1809141530360.10480@nanos.tec.linutronix.de>
References: <8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
	<CACRpkdZeR=0-_tN03jFLGc-j1pW4hfOtqB6icjhpF190A8Z0=A@mail.gmail.com>
	<20180912182343.GI2760@piout.net>
	<alpine.DEB.2.21.1809122037450.1473@nanos.tec.linutronix.de>
	<20180913120811.oilaweiun3z4l5wo@flea>
	<20180913125723.GC14988@piout.net> <87a7olzd7s.fsf@intel.com>
	<alpine.DEB.2.21.1809132136350.1473@nanos.tec.linutronix.de>
	<CAPM=9twrXd4W-Qf_mmqXkBj5bi=PaTdy0KPPTfW9A6bN5uk0sw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Fri, 14 Sep 2018, Dave Airlie wrote:
> I think it's valuable discussion to move from "you didn't invent this,
> we've been doing it since 1956 on mainframes, to how can we make this
> into a process that works for other subsystem maintainers).

It would be also valuable to sit back and think about

  - why the DRM model works well for DRM

  - why it is not necessarily applicable for other subsystems

  - why other maintainer groups have different setups and issues

instead of telling everyone it works great for DRM, everyone should do that
and then pull random statistics to tell people that they have a problem.

I'm all for exchanging ideas and information, but I'm totally not
interested in the condescending tone which tells the world that anyone not
doing the DRM thing has a problem.

DRM is fundamentally different than anything I maintain. The vast majority
of contributors and therefore potential maintainers are working in
corporate teams, which are there to care about DRM and the corporates
graphics cards.

On my end, the only larger group of constant contributors is around perf
tooling as there seems to be a vested interest of distros to make this
work. We have a well working setup there.

The kernel side looks fundamentally different. We surely have maintainers
where we could gain them. We have a few regular reviewers, but that's it.

Everything else is drive by, random corporate feature enablement thrown
over the fence, distro value add etc. Nothing where you can keep people
affiliated.

We do not have the concept of teams dedicated to the problem space. We
can't split it into bits and pieces as it's intervowen at the hardware
level to quite some extent. Aside of that there are neither teams nor
individuals who care about one particular piece more than they care about
the whole thing.

I'm well aware of these problems, I talk openly about them, and try to come
up with solutions since years, but I can't change the way corporates work
and people tick at all. I lost at least two submaintainers after they
gained speed just because they changed jobs and vanished into nirwana.

I'm not buying at all, that having standardized setups and tools and
whatever, will change any of the underlying issues magically.

It won't make contributors more careful, it won't make developers magically
take over responsibility, it won't change the corporate 'get this feature
thrown over the fence' mentality, it won't make people appear who deeply
care.

It's nice that it works so well for you and I wish it would work in other
places similarly well, but please can we take that step back and look at
the specific problems of a specific subsystem instead of telling everyone
that they have a problem and offering the DRM way as Panacea.

Unless that systematic and specific analysis happens, I'm out of this
discussion.

Thanks,

	tglx
