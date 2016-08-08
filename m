Return-Path: <lorenzo.pieralisi@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AA14692
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Aug 2016 11:07:33 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 579DCE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Aug 2016 11:07:33 +0000 (UTC)
Date: Mon, 8 Aug 2016 12:07:41 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Message-ID: <20160808110741.GA18936@red-moon>
References: <20160726223054.GA30993@dtor-ws>
 <5799DB1B.5010307@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5799DB1B.5010307@arm.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 28, 2016 at 11:14:51AM +0100, Marc Zyngier wrote:
> On 26/07/16 23:30, Dmitry Torokhov wrote:
> > I'd like to nominate myself for the kernel summit this year. I am part
> > of Chrome OS kernel team and I also maintain drivers/input in mainline.
> 
> [...]
> 
> > - I would like to sync up with people and discuss [lack of] progress
> >   on topic of device probe ordering (including handling of deferred
> >   probes, asynchronous probes, etc).
> 
> I'm extremely interested in discussing this.
> 
> It has wide reaching consequences as (with my irqchip maintainer hat on)
> we've had to pretend that some bits of HW (timers, interrupt
> controllers) are not "devices". Not a massive issue for most, except
> when your interrupt controller has requirements that are very similar to
> the DMA mapping API (which you cannot use because "not a device"). Other
> problems are introduced by things like wire-MSI bridges, and most people
> end-up resorting to hacks like ad-hoc initcalls and sprinkling deferred
> probes in specific drivers.
> 
> I've seen a number of proposal so far, but the subject seems to have
> gone quiet (well, not really, but hardly any progress has been made).
> 
> Happy to make this a tech discussion or a hallway track.

I am very interested in this discussion too in whatever form it takes
place and I really think it is the right time to find a way forward
for DT and ACPI probing alike given that we have started facing
these probe ordering issues in ARM/ACPI world too, it would be nice to
find a solution that works seamlessly.

Lorenzo
