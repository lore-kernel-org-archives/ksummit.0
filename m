Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0D4B0ADD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:19:11 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A01A22022C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:19:10 +0000 (UTC)
Message-ID: <1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Luck, Tony" <tony.luck@intel.com>
Date: Fri, 09 May 2014 13:19:08 -0700
In-Reply-To: <3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<20140509193712.GD13050@jtriplet-mobl1>
	<CAG4TOxM=d=L4XSP8GM2trYSbcSR2jgt-3jmbky0qyLADgeu0Hw@mail.gmail.com>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Fri, 2014-05-09 at 20:13 +0000, Luck, Tony wrote:
> On Fri, May 9, 2014 at 12:37 PM, Josh Triplett <josh@joshtriplett.org> wrote:
> > I'm interested in a related topic: we should systematically use IOMMUs
> > and similar hardware features to protect against buggy or *malicious*
> > hardware devices
> 
> Defending against buggy hardware is interesting from a RAS perspective.
> You don't want a card with a stuck address line scribbling on memory
> that you didn't want it to touch.

But for a laptop or desktop kernel, how far do we want to go?  In
theory, once the iommu is turned on, it corrals the device, since access
to non programmed addresses (those without IOTLB entries) produces a
fault.  Is there anything extra we need to do beyond turning on the
IOMMU?

James
