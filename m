Return-Path: <roland.dreier@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C4AE1927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 19:53:54 +0000 (UTC)
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3887520264
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 19:53:54 +0000 (UTC)
Received: by mail-qa0-f47.google.com with SMTP id s7so4464912qap.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 12:53:53 -0700 (PDT)
MIME-Version: 1.0
Sender: roland.dreier@gmail.com
In-Reply-To: <20140509193712.GD13050@jtriplet-mobl1>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<20140509193712.GD13050@jtriplet-mobl1>
From: Roland Dreier <roland@kernel.org>
Date: Fri, 9 May 2014 12:53:33 -0700
Message-ID: <CAG4TOxM=d=L4XSP8GM2trYSbcSR2jgt-3jmbky0qyLADgeu0Hw@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset=UTF-8
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

On Fri, May 9, 2014 at 12:37 PM, Josh Triplett <josh@joshtriplett.org> wrote:
> I'm interested in a related topic: we should systematically use IOMMUs
> and similar hardware features to protect against buggy or *malicious*
> hardware devices.  Consider a laptop with an ExpressCard port: plug in a
> device and you have full PCIe access.  (The same goes for other systems
> if you open up the case.)  We should ensure that devices with no device
> driver have zero privileges, and devices with a device driver have
> carefully whitelisted privileges.

Stuff without a device driver should be OK, since we don't turn on any
bits in the PCI command register until pci_enable_device().  So the
device can't be a bus master until someone claims it.

For devices with a driver, I guess it couldn't hurt.  But my wifi
adapter can already sniff and modify all my network traffic, etc.

I do agree that it's a bit sad that the current state of VT-d is such
that distros don't use it by default.
