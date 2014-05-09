Return-Path: <BATV+3c9f8896b847019a7119+3911+infradead.org+dwmw2@twosheds.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C8FDEAAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:18:35 +0000 (UTC)
Received: from twosheds.infradead.org (twosheds.infradead.org [90.155.92.209])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5B2282022C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:18:35 +0000 (UTC)
Message-ID: <3656ff5748d3775edb585ed5f1a48baa.squirrel@twosheds.infradead.org>
In-Reply-To: <20140509193712.GD13050@jtriplet-mobl1>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<20140509193712.GD13050@jtriplet-mobl1>
Date: Fri, 9 May 2014 19:44:37 -0000
From: "David Woodhouse" <dwmw2@infradead.org>
To: "Josh Triplett" <josh@joshtriplett.org>
MIME-Version: 1.0
Content-Type: text/plain;charset=utf-8
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


> I'm interested in a related topic: we should systematically use IOMMUs
> and similar hardware features to protect against buggy or *malicious*
> hardware devices.  Consider a laptop with an ExpressCard port: plug in a
> device and you have full PCIe access.  (The same goes for other systems
> if you open up the case.)  We should ensure that devices with no device
> driver have zero privileges, and devices with a device driver have
> carefully whitelisted privileges.

That is precisely what we do by default when an IOMMU is enabled.

-- 
dwmw2
