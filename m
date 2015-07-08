Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 178BB9F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:27:00 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9E49FE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:26:59 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 08 Jul 2015 22:27:10 +0300
Message-ID: <1571305.WKZVFOSBqK@avalon>
In-Reply-To: <20150708180637.GV11162@sirena.org.uk>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150708001650.GA32155@kroah.com>
	<20150708180637.GV11162@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
	Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday 08 July 2015 19:06:37 Mark Brown wrote:
> On Tue, Jul 07, 2015 at 05:16:50PM -0700, Greg KH wrote:
> > I like this proposal, thanks for making it.  I'd be glad to help talk
> > about this issue as I spend a lot of time working on dragging companies
> > and developers into our community.  We have a real lack of ways that
> > people who are "reasonably skilled yet don't know what to work on" can
> > do more to help contribute to the kernel.
> 
> I think this *might* be something that the efforts to reduce the amount
> of out of tree embedded code can help with?  A part of that effort is
> identifying areas that need fixing, there will be a large enough list I
> imagine.  The hard part is always matching people up with things that
> they are interested in though.

There's also the issue of documentation. Datasheets for embedded SoCs are 
often not publicly available. Even when out-of-tree code exists, the lack of 
documentation makes it more difficult to understand it and port it to 
mainline. I've seen many such cases in practice for camera sensor drivers that 
are often provided by vendors with a small set (or even a single) hardcoded 
configurations, using large register address/value tables. Porting such a 
driver to the mainline APIs often require computing register values from 
parameters received through the subsystem API, which requires a good 
understanding of the hardware.

-- 
Regards,

Laurent Pinchart
