Return-Path: <khilman@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EEE639B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 17:35:49 +0000 (UTC)
Received: from mail-pb0-f42.google.com (mail-pb0-f42.google.com
	[209.85.160.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0A79D20314
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 17:35:48 +0000 (UTC)
Received: by mail-pb0-f42.google.com with SMTP id md12so2824018pbc.29
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 10:35:48 -0700 (PDT)
From: Kevin Hilman <khilman@linaro.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <1872038.43ncqEMWSx@avalon> <6546269.8BCSq47QAR@avalon>
	<7hwqdgqtg5.fsf@paris.lan> <6638836.llWl1tdgvD@vostro.rjw.lan>
Date: Thu, 22 May 2014 10:35:46 -0700
In-Reply-To: <6638836.llWl1tdgvD@vostro.rjw.lan> (Rafael J. Wysocki's message
	of "Thu, 22 May 2014 02:19:35 +0200")
Message-ID: <7hha4hlnrh.fsf@paris.lan>
MIME-Version: 1.0
Content-Type: text/plain
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

"Rafael J. Wysocki" <rjw@rjwysocki.net> writes:

> On Tuesday, May 20, 2014 09:57:14 AM Kevin Hilman wrote:
>> Laurent Pinchart <laurent.pinchart@ideasonboard.com> writes:
>> 
>> > On Wednesday 14 May 2014 00:34:56 Rafael J. Wysocki wrote:
>> >> On Wednesday, May 14, 2014 12:27:47 AM Rafael J. Wysocki wrote:
>> >> > On Monday, May 12, 2014 11:07:29 PM Mark Brown wrote:
>> >> > > On Mon, May 12, 2014 at 11:16:57PM +0200, Tomasz Figa wrote:
>> >> > > > On 12.05.2014 22:31, Mark Brown wrote:
>> >> > > > > It also solves the system suspend dependencies.  Why don't the
>> >> > > > > runtime PM dependencies just work with reference counting?
>> >> > > > 
>> >> > > > Runtime PM dependencies work with reference counting just fine, but
>> >> > > > only for topologies matching Linux driver model, e.g. devices with
>> >> > > > exactly one device they depend on, e.g. SPI controller and SPI devices
>> >> > > > on the bus driven by it. Add there an IOMMU and other various strange
>> >> > > > things that should be transparent to the drivers and it stops working.
>> >> > > 
>> >> > > There's no reason why runtime PM references have to follow the topology
>> >> > > - you do get a default reference count up to any parent (though we break
>> >> > > that sometimes, as is the case with SPI controllers being suspended even
>> >> > > though the devices below them are active) but there's nothing stopping
>> >> > > references being taken outside the topology.
>> >> > 
>> >> > Precisely.
>> >> 
>> >> BTW, I guess that the problem is resume and specifically the fact that if
>> >> a child device resumes, the parent will also resume automatically, but the
>> >> other devices the child may depend on will not (the child's resume may need
>> >> to resume them directly).
>> >> 
>> >> But I'm not sure why that is a problem, so can anyone please share some
>> >> details?
>> >
>> > Here are two real life examples.
>> >
>> > 1. IOMMU and bus master
>> >
>> > Bus master devices connected to an IOMMU need the IOMMU to be powered on in 
>> > order to access memory. In order to save power the IOMMU should of course be 
>> > powered off as much as possible.
>> >
>> > The tricky part here comes from the fact that the IOMMU is hidden behind the 
>> > DMA API. The bus master driver can't manage the IOMMU power state eplicitly by 
>> > taking/releasing references to the IOMMU device.
>> >
>> > This could easily be solved in an ad-hoc fashion by extending the DMA mapping 
>> > API, but I'm wondering whether similar issues wouldn't benefit from a common 
>> > solution (I'm not sure yet what all the similar issues are, hence the topic 
>> > proposal to try and gather use cases).
>> 
>> I'll continue to beat the runtime PM drum...
>
> What about async system suspend/resume, then?

Not sure what you're asking here.  I don't see any (new) conflicts with
async system suspend/resume when combined with runtime PM.

>> This would also easily be solved if the bus master device, the IOMMU and
>> the dmaengine (or the platform-specific dma driver) were all using
>> runtime PM.  e.g. bus master device is a user of dmaengine, which is a
>> user of the IOMMU.  If all are using runtime PM, the fact that a device
>> is "in use", means runtime PM would keep them active when needed.  In
>> this example, it wouldn't matter that the bus master device doesn't know
>> about the IOMMU. It suffices that the dmaengine driver knows about the
>> IOMMU.
>
> That requires it to be able to say "now I'm not using you any more" whenever
> the device in question suspend and "now I'm going to use you again" when that
> device resumes.  Does something like that happen today?

I don't know the specifics of the dmaengine or IOMMU APIs, but they are
certainly request based, so I suspect the infrastructure exist already.
And in the case of DMAs, the core code knows when xfers are done, so
having it request/release the underlying IOMMUs (or other dependencies)
seems rather straight forward.

Even if the APIs dont exist today, instrumenting the frameworks
themsleves seems better to me than trying to invent a generic new
dependency structure, when runtime PM is most of the way there already.

> There are more weird cases still.  For example, we have the _DEP object in
> ACPI that basically says "this device depends on that one" and there may be
> no other relationship between the two whatsoever.  How are we supposed to
> implement this within the existing frameworks?

Sounds like something for the ACPI PM domain to sort out, and it really
depends on what what "this device depends on that one" means.  Does it
mean device Y has to be on whenever device X is on?  Does it mean device
Y has to be on just for device X to suspend/resume?  Does it mean device
Y has to be on for X to have certain functionality?

If it's something like device Y has to be on whenever device X is on,
the PM domain would just need to track the dependencies and ensure that
it does a pm_runtime_get() on device Y whenever device X is enabled.

Kevin
