Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id ECB49947
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 14:58:09 +0000 (UTC)
Received: from mail.8bytes.org (8bytes.org [85.214.48.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6414D20297
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 14:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.8bytes.org (Postfix) with SMTP id 8BFEE12B16B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:58:07 +0200 (CEST)
Date: Mon, 12 May 2014 16:58:06 +0200
From: Joerg Roedel <joro@8bytes.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140512145806.GM12376@8bytes.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<20140509193712.GD13050@jtriplet-mobl1>
	<CAG4TOxM=d=L4XSP8GM2trYSbcSR2jgt-3jmbky0qyLADgeu0Hw@mail.gmail.com>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
 reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 09, 2014 at 01:19:08PM -0700, James Bottomley wrote:
> On Fri, 2014-05-09 at 20:13 +0000, Luck, Tony wrote:
> > Defending against buggy hardware is interesting from a RAS perspective.
> > You don't want a card with a stuck address line scribbling on memory
> > that you didn't want it to touch.
> 
> But for a laptop or desktop kernel, how far do we want to go?  In
> theory, once the iommu is turned on, it corrals the device, since access
> to non programmed addresses (those without IOTLB entries) produces a
> fault.  Is there anything extra we need to do beyond turning on the
> IOMMU?

Especially for Laptops and Desktops proper fault handling is important.
Newer GPUS can use the IOMMU to directly access process address spaces
and support demand paging and CPU page-table layouts. Support for these
features in Linux is already being worked on, so handling faults in a
meaningful way is important there too.


	Joerg
