Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 695E6919
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:12:59 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0CD5529A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:12:59 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Mon, 01 Aug 2016 16:12:58 +0300
Message-ID: <28278780.EQdhaNUfNW@avalon>
In-Reply-To: <20160729215906.3b7a0983@grimm.local.home>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160728114624.GE4094@quack2.suse.cz>
	<20160729215906.3b7a0983@grimm.local.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
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

On Friday 29 Jul 2016 21:59:06 Steven Rostedt wrote:
> On Thu, 28 Jul 2016 13:46:24 +0200 Jan Kara wrote:
> > So I'm complete outsider to media drivers so maybe my question is stupid
> > but I cannot resist: So how is the device bringup supposed to work for
> > devices where you have these cycles in the dependency graph? Do you just
> > bring up the controller and then the sensor and it works because the
> > controller doesn't need the clock from the sensor for startup?
> 
> Thanks for asking. I was wondering the exact same thing.

If this doesn't get addressed during a tech session, I'd be glad to explain 
this for both V4L2 and DRM in the hallway track to anyone interested. If the 
crowd gets large then a room with a white board or a projector could help 
though.

-- 
Regards,

Laurent Pinchart
