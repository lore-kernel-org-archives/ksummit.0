Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 74AA826
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 22:58:58 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 487651FAB5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 22:58:56 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mark Brown <broonie@kernel.org>
Date: Sat, 24 May 2014 01:15:56 +0200
Message-ID: <1638523.rqHsXd5Z1n@vostro.rjw.lan>
In-Reply-To: <20140522101449.GB12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <6638836.llWl1tdgvD@vostro.rjw.lan>
	<20140522101449.GB12304@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Thursday, May 22, 2014 11:14:49 AM Mark Brown wrote:
> 
> --msuMhlVPES9Pz2Dp
> Content-Type: text/plain; charset=us-ascii
> Content-Disposition: inline
> 
> On Thu, May 22, 2014 at 02:19:35AM +0200, Rafael J. Wysocki wrote:
> > On Tuesday, May 20, 2014 09:57:14 AM Kevin Hilman wrote:
> 
> > > This would also easily be solved if the bus master device, the IOMMU and
> > > the dmaengine (or the platform-specific dma driver) were all using
> > > runtime PM.  e.g. bus master device is a user of dmaengine, which is a
> > > user of the IOMMU.  If all are using runtime PM, the fact that a device
> > > is "in use", means runtime PM would keep them active when needed.  In
> > > this example, it wouldn't matter that the bus master device doesn't know
> > > about the IOMMU. It suffices that the dmaengine driver knows about the
> > > IOMMU.
> 
> > That requires it to be able to say "now I'm not using you any more" whenever
> > the device in question suspend and "now I'm going to use you again" when that
> > device resumes.  Does something like that happen today?
> 
> The easiest thing to do with this sort of thing is usually to put the
> referencing into the API that abstracts things (it really ought to know
> when things are actually being used anyway after all) - there are some
> APIs that do this already.
> 
> > There are more weird cases still.  For example, we have the _DEP object in
> > ACPI that basically says "this device depends on that one" and there may be
> > no other relationship between the two whatsoever.  How are we supposed to
> > implement this within the existing frameworks?
> 
> That sounds like something that should be baked into however ACPI is
> hooked in already?

No, it is not.  It is a relatively new addition to ACPI and we don't support
it today.  That's because it hasn't been present in the ACPI tables of any
production systems until recently.

However, today we have systems with it shipping and we need to add support
for it.

Rafael
