Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DA49F4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 22:45:05 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 663CC2010F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 22:45:05 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Date: Fri, 16 May 2014 00:45:08 +0200
Message-ID: <1831223.3kDoV94n00@avalon>
In-Reply-To: <11117951.ql3xek1vCB@vostro.rjw.lan>
References: <1872038.43ncqEMWSx@avalon> <20140512220729.GZ12304@sirena.org.uk>
	<11117951.ql3xek1vCB@vostro.rjw.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday 14 May 2014 00:27:47 Rafael J. Wysocki wrote:
> On Monday, May 12, 2014 11:07:29 PM Mark Brown wrote:
> > On Mon, May 12, 2014 at 11:16:57PM +0200, Tomasz Figa wrote:
> > > On 12.05.2014 22:31, Mark Brown wrote:
> > > > It also solves the system suspend dependencies.  Why don't the
> > > > runtime PM dependencies just work with reference counting?
> > > 
> > > Runtime PM dependencies work with reference counting just fine, but
> > > only for topologies matching Linux driver model, e.g. devices with
> > > exactly one device they depend on, e.g. SPI controller and SPI devices
> > > on the bus driven by it. Add there an IOMMU and other various strange
> > > things that should be transparent to the drivers and it stops working.
> > 
> > There's no reason why runtime PM references have to follow the topology
> > - you do get a default reference count up to any parent (though we break
> > that sometimes, as is the case with SPI controllers being suspended even
> > though the devices below them are active) but there's nothing stopping
> > references being taken outside the topology.
> 
> Precisely.
> 
> > > I'm still investigating this issue, so more uses cases are yet to be
> > > found, but I also guess this is the purpose of this thread. Anyway,
> > > for some reason .suspend_late() and .resume_early() callbacks exist in
> > > dev_pm_ops struct and I believe that at least some of the cases
> > > "solved" by them might be related to the issue being discussed here.
> > 
> > Yes, they're partly solving a particular common case for this sort of
> > interdependency (though I guess they do also do things like allow us to
> > make sure the hardware came back in a state where it won't be harmful
> > to the rest of the system if we start enabling things).
> 
> The original reason why .suspend_late/.resume_early were introduced was to
> allow the same callback routines to be run for runtime and for system-wide
> PM. Specifically, the idea was that .suspend_late may point to the same
> routine as .runtime_suspend, for example, because of the analogy of the
> conditions in which they are called (the device is known to be not in use).
> 
> That didn't work out perfectly, but those callbacks turn out to be useful
> nonetheless.
> 
> And yes, I'm interested in this topic too.
> 
> Rafael (who wonders why he wasn't CCed in this thread to start with)

It was a honest mistake, I'm sorry about that.

-- 
Regards,

Laurent Pinchart
