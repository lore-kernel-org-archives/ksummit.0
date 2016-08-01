Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 90E408A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 12:44:31 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 520F1272
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 12:44:30 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Mon, 01 Aug 2016 15:44:29 +0300
Message-ID: <7470660.QQiQecYycE@avalon>
In-Reply-To: <20160728234314.GD3296@wotan.suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<1745007.86gEd5I2vq@avalon> <20160728234314.GD3296@wotan.suse.de>
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

Hi Luis,

On Friday 29 Jul 2016 01:43:14 Luis R. Rodriguez wrote:
> On Thu, Jul 28, 2016 at 01:51:02PM +0300, Laurent Pinchart wrote:
> > As the co-author of the media controller code (along with Sakari Ailus,
> > based on a draft proposal from Hans Verkuil), I don't think MC will help
> > here. It addresses very different problems, its purpose is to expose the
> > topology of data flows inside a media device to userspace.
> 
> This is the key that interest me. Not the exact code -- but how it
> accomplishes this and lessons learned.
> 
> > This being said I'd be very interested in discussing asynchronous probing
> > and probe ordering. I can also certainly bring media controller knowledge
> > to the discussion, but I don't think that part would be very useful
> > (apart possibly for saving everybody's time by explaining why MC isn't a
> > solution to address those problems :-)).
> 
> Its not that MC would solve the issues, its what lessons were learned on the
> way we can re-use. Also, if we can use some bells and whistles for a
> generic solution, could the MC leverage off of that? This proposal is of
> course very abstract, so bear with me.

One problem I expect to have to solve in the future in MC is related to 
locking. We currently have a single graph-wide mutex that serializes all 
operations on the graph. With graphs getting larger (especially with recent 
SoCs that have deep hardware pipelines between camera and display devices, 
making lots of IP cores part of the same data graph) locking contention might 
become an issue. Throw dynamic graph updates in the mix (the ability to add or 
remove nodes as a consequence of device hotplug) and this will call for a 
rework of the locking scheme. Learning from similar experiences elsewhere in 
the kernel would be highly beneficial for us.

-- 
Regards,

Laurent Pinchart
