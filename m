Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B8EB448E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 12:42:55 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id A43C71FD42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 12:42:54 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 14 May 2014 14:59:41 +0200
Message-ID: <3636794.gLU7JgeEDe@vostro.rjw.lan>
In-Reply-To: <15562464.UYP7rKZIQt@vostro.rjw.lan>
References: <1872038.43ncqEMWSx@avalon> <11117951.ql3xek1vCB@vostro.rjw.lan>
	<15562464.UYP7rKZIQt@vostro.rjw.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday, May 14, 2014 12:34:56 AM Rafael J. Wysocki wrote:
> On Wednesday, May 14, 2014 12:27:47 AM Rafael J. Wysocki wrote:
> > On Monday, May 12, 2014 11:07:29 PM Mark Brown wrote:
> > > On Mon, May 12, 2014 at 11:16:57PM +0200, Tomasz Figa wrote:
> > > > On 12.05.2014 22:31, Mark Brown wrote:
> > > 
> > > > > It also solves the system suspend dependencies.  Why don't the
> > > > > runtime PM dependencies just work with reference counting?
> > > 
> > > > Runtime PM dependencies work with reference counting just fine, but
> > > > only for topologies matching Linux driver model, e.g. devices with
> > > > exactly one device they depend on, e.g. SPI controller and SPI devices
> > > > on the bus driven by it. Add there an IOMMU and other various strange
> > > > things that should be transparent to the drivers and it stops working.
> > > 
> > > There's no reason why runtime PM references have to follow the topology
> > > - you do get a default reference count up to any parent (though we break
> > > that sometimes, as is the case with SPI controllers being suspended even
> > > though the devices below them are active) but there's nothing stopping
> > > references being taken outside the topology.
> > 
> > Precisely.
> 
> BTW, I guess that the problem is resume and specifically the fact that if
> a child device resumes, the parent will also resume automatically, but the
> other devices the child may depend on will not (the child's resume may need
> to resume them directly).
> 
> But I'm not sure why that is a problem, so can anyone please share some details?

Thinking more about this, there seem to be two cases:

(a) The driver knows that its device (X) depends on another device (Y).
(b) The driver doesn't know that there is the dependency (there is a framework
    having that information, but drivers only access it indirectly, for
    example).

In principle (a) may be addressed by the driver itself if it is careful enough
to reference count Y in addition to X during runtime PM operations.  The async
(system) suspend case is more problematic, because it also requies the driver
of Y to wait for X to suspend (that is not required if both X and Y are "sync",
but that case is kind of suboptimal).

However, (b) cannot be taken care of by the driver itself and it looks like some
coordination mechanism would be necessary to address it.

I proposed something like that a few years ago (https://lkml.org/lkml/2009/8/26/485),
but people generally didn't like it and it has locking problems.  Admittedly, I'd
do it differently today, but if there's interest, I can refresh that approach.

Rafael
