Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6DEF4CE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 11:48:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D0CB48B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 11:48:26 +0000 (UTC)
Date: Sat, 8 Sep 2018 08:48:22 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20180908084822.79b321e8@coco.lan>
In-Reply-To: <10978266.ZcOyfo1TOH@avalon>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uEsN9YDjEus5hndhhF1jbSS+=P804bS8iKJmyp76hmtKA@mail.gmail.com>
	<20180907180633.564b798c@coco.lan> <10978266.ZcOyfo1TOH@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Sat, 08 Sep 2018 12:44:32 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> On Saturday, 8 September 2018 00:06:33 EEST Mauro Carvalho Chehab wrote:
> > Em Fri, 7 Sep 2018 11:13:20 +0200 Daniel Vetter escreveu:  
> > > On Fri, Sep 7, 2018 at 6:27 AM, Theodore Y. Ts'o <tytso@mit.edu> wrote:  
> > > > On Fri, Sep 07, 2018 at 01:49:31AM +0000, Sasha Levin via
> > > > Ksummit-discuss wrote:
> > > > 
> > > > There actually is a perverse incentive to having all of the test
> > > > 'bots, which is that I suspect some people have come to rely on it to
> > > > catch problems.  I generally run a full set of regression tests before
> > > > I push an update to git.kernel.org (it only takes about 2 hours, and
> > > > 12 VM's :-); and by the time we get to the late -rc's I *always* will
> > > > do a full regression test.  
> > > 
> > > This is what imo a well-run subsystem should sound like from a testing
> > > pov. All the subsystem specific testing should be done before merging.
> > > Post-merge is only for integration testing and catching the long-tail
> > > issues that need months/years of machine time to surface.
> > > 
> > > Of course this is much harder for anything that needs physical
> > > hardware, but even for driver subsystems there's lots you can do with
> > > test-drivers, selftests and a pile of emulation, to at least catch
> > > bugs in generic code. And for reasonably sized teams like drm/i915
> > > building a proper CI is a very obvious investement that will pay off.  
> > 
> > IMHO, CI would do even a better job for smaller teams, as they won't
> > have much resources for testing, but the problem here is that those
> > teams probably lack resources and money to invest on a physical hardware
> > to setup a CI infra and to buy the myriad of different hardware to
> > do regression testing.
> > 
> > Also, some devices are harder to test: how would you check if a camera
> > microphone is working? How to check if the camera captured images
> > are ok?  
> 
> The same way you would check the display output. Cameras can be pointed at 
> known scenes with controlled lightning. TV capture cards can be fed a known 
> signal. Even for microphone testing we could put the camera in a sound-proof 
> enclosure, with an audio source. Solutions exist, whether we have the budget 
> to implement them is the real question.

Solutions exist, but they require a hole new kind of environment control.

In the case of DRM (and TV cards), display output can be tested with some
HDMI grabber card. No need for a "controlled lightning environment" or
anything like that. Once it is set, people can just place it into a
random datacenter located anywhere and forget about it.

However, in the case of hardware like cameras, microphones, speakers,
keyboards, mice, touchscreen, etc, it is a way more complex, as the
environment will require adjustments (a silent room, specific
lightning, mechanical components, etc) and a more proactive supervision,
as it would tend to produce more false positive errors if something
changes there. A normal datacenter won't fit those needs.

Thanks,
Mauro
