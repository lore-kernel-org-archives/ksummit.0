Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BFA4098F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 02:56:40 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 856D1276
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 02:56:39 +0000 (UTC)
Date: Wed, 27 Jul 2016 08:34:06 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20160727030406.GU9681@localhost>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<CAOesGMiq5Q==Rg97VqmO-=HNYXz9ZA6iCDJ7sBa0tGzJVuYs4g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOesGMiq5Q==Rg97VqmO-=HNYXz9ZA6iCDJ7sBa0tGzJVuYs4g@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>,
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

On Tue, Jul 26, 2016 at 09:45:35AM -0700, Olof Johansson wrote:
> Hi,
> 
> On Wed, Jul 20, 2016 at 5:11 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > But I think the more interesting bits are why I decided to try this
> > out, what I hoped would happen, what I feared might happen. And with 1
> > year of experience, what actually happens and what I think is needed
> > to make this work and an actual benefit over more traditional
> > maintainer models. And of course I'd like to compare notes with other
> > group maintainers.
> 
> Very interested in participating here, for obvious reasons -- learning
> from others how we can do things even better as well as sharing how
> things are working for us, 5 years into the endeavor.

Am interested in this discussion as well for very obvious reasons

> One thing we're low on for arm-soc is tooling, I know the x86 guys
> have quite a bit more than we do in this area, so ideas on what we can
> do to make our own lives easier is valuable.

Okay one of the gripes I have is that it is a bit hard to compile arm
drivers. I regularly compile all drivers in subsystem I maintain and arm
ones are not always straightforward. Figuring our which config to use
for compile testing involves a bit of time, which I would like to avoid.

Having said that stuff like multi_xx_defconfig has improved a bit and
seem to be in right direction (not an expert at arm arch's) but doesn't
seem to cover all. Right now I am manually maintaining 4 different arm
configs to compile test all the drivers in dmaengine subsystem which
isn't a very big subsystem. For other arch's it is one config per
subsystem.

So if you have suggestions to improve my flow, I would like to hear
that, maybe I am doing something not right here...

-- 
~Vinod
