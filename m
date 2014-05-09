Return-Path: <will.deacon@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EC744AB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 18:05:34 +0000 (UTC)
Received: from cam-admin0.cambridge.arm.com (cam-admin0.cambridge.arm.com
	[217.140.96.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 37CFC20271
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 18:05:34 +0000 (UTC)
Date: Fri, 9 May 2014 19:05:10 +0100
From: Will Deacon <will.deacon@arm.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20140509180510.GD23083@arm.com>
References: <1399552623.17118.22.camel@i7.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1399552623.17118.22.camel@i7.infradead.org>
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

Hi David,

On Thu, May 08, 2014 at 01:37:03PM +0100, David Woodhouse wrote:
> I'd like to have a discussion about handling device errors.
> 
> IOMMUs are becoming more common, and we've seen some failure modes where
> we just end up with an endless stream of fault reports from a given
> device, and the kernel can do nothing else.
> 
> We may have various options for shutting it up — a PCI function level
> reset, power cycling the offending device, or maybe just configuring the
> IOMMU to *ignore* further errors from it, which would at least let the
> system get on with doing something useful (and if we do, when do we
> re-enable reporting?).

There's also the fun of non-PCI devices, where even if you can kill the
offending device, there's not a specified way to ensure that it not longer
has transactions in flight. Also, the fault reports have to go somewhere,
so queues can fill up etc. etc.

> But I absolutely don't want us to be implementing policies like that in
> an individual IOMMU driver; this needs to be handled by generic device
> code. Once upon a time I might have said PCI code, but this is actually
> relevant for non-PCI devices too.
> 
> I want the IOMMU to report errors, and let the system do the appropriate
> thing. Which requires some discussion about what the "appropriate thing"
> can be in various circumstances, and indeed what options are available
> to us on various platforms.
> 
> Participants would be those working with IOMMUs on various platforms,
> including Jörg Rödel, myself, and hopefully someone with a fairly
> intimate knowledge of EEH as used on POWER systems.

I'd certainly be interested in this from the ARM side (I'm involved in the
architecture of our next SMMU and we've discussed this a lot internally).

Will
