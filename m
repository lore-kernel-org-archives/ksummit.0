Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0354B955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 12:50:25 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D9749162
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 12:50:23 +0000 (UTC)
Date: Wed, 27 Jul 2016 18:27:51 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20160727125751.GC9681@localhost>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<CAOesGMiq5Q==Rg97VqmO-=HNYXz9ZA6iCDJ7sBa0tGzJVuYs4g@mail.gmail.com>
	<20160727030406.GU9681@localhost> <17304523.rVA3ueAWN9@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <17304523.rVA3ueAWN9@wuerfel>
Cc: ksummit-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@linux.ie>,
	"Nikula, Jani" <jani.nikula@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 27, 2016 at 09:53:24AM +0200, Arnd Bergmann wrote:
> On Wednesday, July 27, 2016 8:34:06 AM CEST Vinod Koul wrote:
> > > One thing we're low on for arm-soc is tooling, I know the x86 guys
> > > have quite a bit more than we do in this area, so ideas on what we can
> > > do to make our own lives easier is valuable.
> > 
> > Okay one of the gripes I have is that it is a bit hard to compile arm
> > drivers. I regularly compile all drivers in subsystem I maintain and arm
> > ones are not always straightforward. Figuring our which config to use
> > for compile testing involves a bit of time, which I would like to avoid.
> > 
> > Having said that stuff like multi_xx_defconfig has improved a bit and
> > seem to be in right direction (not an expert at arm arch's) but doesn't
> > seem to cover all. Right now I am manually maintaining 4 different arm
> > configs to compile test all the drivers in dmaengine subsystem which
> > isn't a very big subsystem. For other arch's it is one config per
> > subsystem.
> > 
> > So if you have suggestions to improve my flow, I would like to hear
> > that, maybe I am doing something not right here...
> 
> We should be at the point where an 'allmodconfig' build on ARM
> gets you most of the drivers and builds without warnings (using
> gcc-4.9 or higher).

The problem is drivers depend on various ARM sub arch's. That is the
sole reason why I have multiple configs now.

> It will take a while to do the entire 'allmodconfig' build but
> it's something that can be done as a background task.
> 
> One thing that we should still do is figure out which ARM specific
> drivers are not included in allmodconfig and find a way to include
> them too. Most platforms are compatible with a 'multiplatform'
> setup (those that are not very rarely see patches at all and are
> less likely to break), but allmodconfig will only include ARMv6
> and ARMv7 based platforms, not ARMv4/ARMv4T/ARMv5. I've thought
> about adding '|| COMPILE_TEST' dependencies to the platforms
> with ARMv4/5 CPUs to have everything included in allmodconfig, but
> I haven't actually tied that and I'm sure we'd see a lot of
> build failures for correct code at first that we'd have to fix up
> to make it work.

Which brings me to another problem :-) why should individual drivers
depend on ARM sub arch's. Depends on ARM, yes. First look at code tells
me they shouldn't!, probably sometime back that was true, but I don't
think that should be the case now, ofcourse you would know better!

And yes some are ARMv4/v5 ones..

-- 
~Vinod
