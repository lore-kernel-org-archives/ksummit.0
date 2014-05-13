Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1F50C4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 10:31:56 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 735012019C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 10:31:56 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 13 May 2014 12:31:55 +0200
Message-ID: <15219046.LHbmDh0AgC@avalon>
In-Reply-To: <CAKMK7uEYw+tuLNTu+pSimEewnuEakGQEsvRmq-hx_dunfBSVUg@mail.gmail.com>
References: <1872038.43ncqEMWSx@avalon> <20140512220729.GZ12304@sirena.org.uk>
	<CAKMK7uEYw+tuLNTu+pSimEewnuEakGQEsvRmq-hx_dunfBSVUg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday 13 May 2014 09:43:05 Daniel Vetter wrote:
> On Tue, May 13, 2014 at 12:07 AM, Mark Brown <broonie@kernel.org> wrote:
> > On Mon, May 12, 2014 at 11:16:57PM +0200, Tomasz Figa wrote:
> >> On 12.05.2014 22:31, Mark Brown wrote:
> >> > It also solves the system suspend dependencies.  Why don't the
> >> > runtime PM dependencies just work with reference counting?
> >> 
> >> Runtime PM dependencies work with reference counting just fine, but
> >> only for topologies matching Linux driver model, e.g. devices with
> >> exactly one device they depend on, e.g. SPI controller and SPI devices
> >> on the bus driven by it. Add there an IOMMU and other various strange
> >> things that should be transparent to the drivers and it stops working.
> > 
> > There's no reason why runtime PM references have to follow the topology
> > - you do get a default reference count up to any parent (though we break
> > that sometimes, as is the case with SPI controllers being suspended even
> > though the devices below them are active) but there's nothing stopping
> > references being taken outside the topology.

One of the issues is that we need API(s) to take/release those references. In 
some cases the depender doesn't have direct access to the dependee, like in 
the IOMMU case where the DMA mapping API hides the IOMMU. One of the questions 
here is whether this kind of problems should be solved with ad-hoc solutions 
(for instance adding PM support to the DMA mapping API in this specific case), 
or in a more generic fashion. Answering that will require a comprehensive list 
of use cases to detect common patterns.

> I guess some helpers to grab/drop runtime PM references on all parts
> of a componentized device should resolve this?

That could help in some cases, but there might be ordering issues.

> We propably don't want to bake this into the driver core since often the
> driver will know that it e.g. doesn't need a specific encoder block (if it's
> not enabled), so doesn't to grab a reference. But for simple drivers, and
> to get runtime PM off the ground when enabling new hardware this could
> be rather useful.

This won't solve the IOMMU problem, as the component framework isn't used 
there. I'm not advocating for a common solution to all non parent/child PM 
dependencies just for the sake of it, we could find out that several distinct 
solutions to distinct classes of issues is the way to go.

-- 
Regards,

Laurent Pinchart
