Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 77A28C16
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 10:38:44 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC61544D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 10:38:43 +0000 (UTC)
Date: Wed, 25 Oct 2017 12:38:52 +0200
From: "greg@kroah.com" <greg@kroah.com>
To: Leon Romanovsky <leonro@mellanox.com>
Message-ID: <20171025103852.GA26864@kroah.com>
References: <1508924843.4165.6.camel@wdc.com>
	<20171025095403.GA19080@kroah.com>
	<1508926018.4165.12.camel@wdc.com>
	<20171025101355.GA22977@kroah.com>
	<20171025102423.GQ16127@mtr-leonro.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171025102423.GQ16127@mtr-leonro.local>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] How to encourage driver authors
 to annotate integer endianness properly
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Oct 25, 2017 at 01:24:23PM +0300, Leon Romanovsky wrote:
> On Wed, Oct 25, 2017 at 12:13:55PM +0200, greg@kroah.com wrote:
> > On Wed, Oct 25, 2017 at 10:06:59AM +0000, Bart Van Assche wrote:
> > > On Wed, 2017-10-25 at 11:54 +0200, Greg KH wrote:
> > > > On Wed, Oct 25, 2017 at 09:47:25AM +0000, Bart Van Assche wrote:
> > > > > Hello Ted,
> > > > >
> > > > > As you most likely know endianness annotations like __be32 can be verified
> > > > > by the static source code analyzer called sparse. These annotations are a
> > > > > big help to verify whether endianness conversions in drivers are correct
> > > > > (e.g. be32_to_cpu()). However, many driver authors either are not familiar
> > > > > with sparse or do not use it to verify their work. I think we need a way
> > > > > to encourage driver authors to pay attention to endianness annotations,
> > > > > e.g. by letting the zero-day kernel test infrastructure verify endianness
> > > > > annotations. Please consider to add this topic to the kernel summit agenda.
> > > >
> > > > Driver subsystem maintainers should know this, and sparse reports should
> > > > be simple to run and notice these issues.  If you know of a subsystem
> > > > that is not paying attention to this, please let those maintainers know
> > > > and send patches to resolve the issues :)
> > >
> > > Hi Greg,
> > >
> > > A significant challenge is that for several drivers (e.g. drivers/scsi/qla2xxx
> > > and drivers/infiniband/hw/nes) fixing the endianness annotations is so hard
> > > that only the driver authors can make these drivers endianness clean.
> >
> > Then ask them to do so, and if they will not, then mark the drivers in
> > Kconfig so they do not get built for big endian platforms.
> >
> > > Three challenges that have been encountered while trying to make
> > > drivers endianness clean are:
> > > - Some driver authors use a single variable to store both cpu-endian and big
> > >   endian data.
> > > - Endianness bugs - using a big endian integer where a cpu endian number
> > >   should have been used or vice versa.
> > > - The definitive resource for the endianness format is the firmware
> > >   documentation. For many kernel drivers the firmware documentation is either
> > >   not available or only available under NDA.
> >
> > These problems are not "new" at all, it's been this way for 20+ years now :)
> 
> The major difference between past and current is in the tools, they evolved.

endian support in sparse has been there for over a decade now, right?
This isn't a new issue, and if a driver author/team does not want to
do the work for a specific endian, then disable the drivers from that
build...

greg k-h
