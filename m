Return-Path: <alexandre.belloni@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 69DDFF2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 12:44:37 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9C869716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 12:44:35 +0000 (UTC)
Date: Tue, 11 Sep 2018 14:44:23 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180911124423.GM2494@piout.net>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
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

Hi,

On 11/09/2018 00:44:57+0200, Daniel Vetter wrote:
> gitlab (or well anything with a concept like pull requests) makes the
> 90% so much easier. And it doesn't take more work for contributors if
> you set things up right - it's just a git push instead of a git
> send-email. At least after initial setup is done.
> 
> And at least in a corporate environment (and I kinda have to care
> about that) gitlab wins on the initial setup front hands down against
> email. gitlab only needs https (even for git push/pull), and
> coproporate firewalls are pretty ok with https. They are not ok with
> smtp, like at all. And the amount of time we spend debugging random
> git send-email setup issues is epic.
> 

I would like to chime in and remind you that there are many subsystems
where you get a lot of drive-by contribution from random people. I'm
obviously thinking about rtc but I think this would also apply to codec,
IIO, power/supply, hwmon... In that case any initial setup would be
prohibitive.

I feel like these subsystems are often left to the side when I read
threads like that talking about getting every patches reviewed, doing
more CI, etc...

So I need to emphasise that there are subsystem where people are not
backed by a company to contribute or review. What I often see is someone
having $random hardware and submitting a patch adding support for it.
That developer will definitively not review other patches because he has
no particular interest in them. He also probably doesn't have the
experience to do a review.

It is quite different from having a few big companies with huge teams
each maintaining a single driver in a subsystem... You simply can't have
the same expectations.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
