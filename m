Return-Path: <alexandre.belloni@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1EE901073
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 18:23:46 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 46F867C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 18:23:45 +0000 (UTC)
Date: Wed, 12 Sep 2018 20:23:43 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20180912182343.GI2760@piout.net>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
	<CACRpkdZeR=0-_tN03jFLGc-j1pW4hfOtqB6icjhpF190A8Z0=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdZeR=0-_tN03jFLGc-j1pW4hfOtqB6icjhpF190A8Z0=A@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On 12/09/2018 11:14:14+0200, Linus Walleij wrote:
> On Tue, Sep 11, 2018 at 5:02 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > That kind of skewed contribution statistics is indeed not sustainable,
> > and indicates some serious problem imo. What exactly goes wrong, and
> > how to best fix it I can't tell without more information though. From
> > my experience in drm, where we also have some areas with highly skewed
> > contribution statistics, it could be the maintainer driving people
> > away, ensuring that there's only one-off contributions. Usually
> > unkowningly.
> 
> This problem is likely psychological and/or sociologial or even
> ethnological rather than technical.
> 
> Despite several attempts of kernel maintainers to actively downplay
> their role (Torvalds sets a good example in
> Documentation/process/management-style.rst)
> kernel maintainers are still perceived from the outside as some
> kind of superior beings to which layperson developers feel
> inferior to and look up to.
> 
> I think it's not an option to try to stop people from looking
> up to kernel maintainers no matter how much we'd like that,
> instead we need to assume the responsibility.
> 
> I do not know how to best deal with this, I guess maintainers
> really need to watch their behaviors, but we would better ask
> someone experienced in group dynamics what desirable
> behaviors are.
> 
> If I take a guess I suspect the same qualities are desired for any
> good leader or good parent: maintainers should have infinite
> patience, infinite time to reply to questions (also infinitisemal
> latency so they are always there!), recognize all their own
> weaknesses and always say they are sorry when they have
> been rude, be encouraging, sweet, nurturing, criticize in a
> way that makes it clear that it is the performance not the person
> that needs improvement, and throwing in some extra rewards
> for desired behavior every now and then. (I think someone
> mentioned a pareto ratio of 80% praise and 20% critique
> is ideal, it's likely an unscientific rule of thumb.)
> 
> Needless to say no real person lives up to the above.
> No parent does either. Some just fail less or in less obvious
> ways.
> 
> I am worried that the intersection of the sets of people that
> naturally have the desired personality traits and also are
> reasonably good engineers is actually pretty small and that is
> why we have a problem.
> 

But is there really a problem to begin with? This is what Daniel wants
everybody to believe. He didn't scale in his own subsystem and basically
gave up reviewing drivers and this seems to be working fine for DRM.

But trying to impose that supposedly "new maintainership model" (again,
the numbers would indicate it is as hierarchical as any other part of
the kernel) to all the maintainers is quite far fetched. Many
maintainers are keeping up with their load and patches are getting
reviewed and applied.

I'm not saying there aren't any issues and that the level of reviews is
sufficient but I really don't think problematic maintainers are as
widespread as Daniel claims. It is really getting tiring to see him
show random statistics and draw wrong conclusions from them.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
