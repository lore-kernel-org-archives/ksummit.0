Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 69BFE927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 19:37:20 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0BBF62025C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 19:37:20 +0000 (UTC)
Date: Fri, 9 May 2014 12:37:12 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20140509193712.GD13050@jtriplet-mobl1>
References: <1399552623.17118.22.camel@i7.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1399552623.17118.22.camel@i7.infradead.org>
Content-Transfer-Encoding: quoted-printable
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

On Thu, May 08, 2014 at 01:37:03PM +0100, David Woodhouse wrote:
> But I absolutely don't want us to be implementing policies like that in
> an individual IOMMU driver; this needs to be handled by generic device
> code. Once upon a time I might have said PCI code, but this is actually
> relevant for non-PCI devices too.
[...]
> I strongly suspect that once we start looking at it, we'll find other
> triggers than "IOMMU faults" for starting to isolate and reset
> misbehaving devices. Interrupt storms perhaps being one of them =E2=80=94=
 we've
> never been particularly robust to those, either.

I'm interested in a related topic: we should systematically use IOMMUs
and similar hardware features to protect against buggy or *malicious*
hardware devices.  Consider a laptop with an ExpressCard port: plug in a
device and you have full PCIe access.  (The same goes for other systems
if you open up the case.)  We should ensure that devices with no device
driver have zero privileges, and devices with a device driver have
carefully whitelisted privileges.

- Josh Triplett
