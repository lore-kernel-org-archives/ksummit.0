Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0A319995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 19:56:38 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B285A20320
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 19:56:37 +0000 (UTC)
Message-ID: <1399578994.2171.51.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Woodhouse <dwmw2@infradead.org>
Date: Thu, 08 May 2014 12:56:34 -0700
In-Reply-To: <1399552623.17118.22.camel@i7.infradead.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Thu, 2014-05-08 at 13:37 +0100, David Woodhouse wrote:
> I'd like to have a discussion about handling device errors.
> 
> IOMMUs are becoming more common, and we've seen some failure modes where
> we just end up with an endless stream of fault reports from a given
> device, and the kernel can do nothing else.

This is when the addresses being sent by the bus don't have IOTLB
entries?

> We may have various options for shutting it up — a PCI function level
> reset, power cycling the offending device, or maybe just configuring the
> IOMMU to *ignore* further errors from it, which would at least let the
> system get on with doing something useful (and if we do, when do we
> re-enable reporting?).
> 
> But I absolutely don't want us to be implementing policies like that in
> an individual IOMMU driver; this needs to be handled by generic device
> code. Once upon a time I might have said PCI code, but this is actually
> relevant for non-PCI devices too.

Right, with my PARISC hat on, our IOMMUs sit adjacent to the CPUs.  The
PCI busses (if we have any) are a couple of layers down.

> I want the IOMMU to report errors, and let the system do the appropriate
> thing. Which requires some discussion about what the "appropriate thing"
> can be in various circumstances, and indeed what options are available
> to us on various platforms.
> 
> Participants would be those working with IOMMUs on various platforms,
> including Jörg Rödel, myself, and hopefully someone with a fairly
> intimate knowledge of EEH as used on POWER systems.
> 
> We probably also want KVM folks to weigh in on how, if at all, they'd
> want errors on assigned devices to be reported to guests.
> 
> I strongly suspect that once we start looking at it, we'll find other
> triggers than "IOMMU faults" for starting to isolate and reset
> misbehaving devices. Interrupt storms perhaps being one of them — we've
> never been particularly robust to those, either.

I'd be interested ... if just to make sure that whatever's agreed to
isn't just intel IOMMU centric.

James
