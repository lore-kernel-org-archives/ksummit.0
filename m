Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4A7EB96D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 01:09:26 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AFE52200A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 01:09:25 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 10 May 2014 03:09:22 +0200
Message-ID: <4433093.MSzoqdJDMf@avalon>
In-Reply-To: <1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
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

On Friday 09 May 2014 13:19:08 James Bottomley wrote:
> On Fri, 2014-05-09 at 20:13 +0000, Luck, Tony wrote:
> > On Fri, May 9, 2014 at 12:37 PM, Josh Triplett <josh@joshtriplett.org> 
wrote:
> > > I'm interested in a related topic: we should systematically use IOMMUs
> > > and similar hardware features to protect against buggy or *malicious*
> > > hardware devices
> > 
> > Defending against buggy hardware is interesting from a RAS perspective.
> > You don't want a card with a stuck address line scribbling on memory
> > that you didn't want it to touch.
> 
> But for a laptop or desktop kernel, how far do we want to go?  In
> theory, once the iommu is turned on, it corrals the device, since access
> to non programmed addresses (those without IOTLB entries) produces a
> fault.  Is there anything extra we need to do beyond turning on the
> IOMMU?

We need a mechanism to correctly report and handle the IOMMU faults, otherwise 
a misbehaving device could generate interrupt storms and cause a denial of 
service.

-- 
Regards,

Laurent Pinchart
