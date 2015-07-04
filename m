Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3906D9FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  4 Jul 2015 08:24:53 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7F133ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  4 Jul 2015 08:24:52 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id t648HHsi024287
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 4 Jul 2015 03:17:19 -0500
Message-ID: <1435997837.3948.21.camel@kernel.crashing.org>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 04 Jul 2015 18:17:17 +1000
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [TECH TOPIC] Semantics of MMIO mapping attributes
	accross archs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Allright, it's that time of year ... So here's my attempt at getting
myself invited :-)

We've been talking about some of that on-list recently, and it might
well be that this will trigger a resolution before we even reach KS, but
I though it might be worthwhile to gather enough people from various
arch together to hash things out:

We have a pile of mapping attributes (more showing up recently),
typically used for MMIO mappings (but not necessarily exclusively).
ioremap_cache and ioremap_nocache are the old/common ones, but we have
_wc (write combine), _wt (write through) and possibly more around the
corner.

What are their precise semantics accross all architecture ? This is not
clear (not documented). For example, we define writel(), readl() and
friends as being fully ordered vs each other but also vs DMA etc... but
on what mapping types do they have this property ?

Will _wc() provide the write-combine ability for writel() on all archs ?
Or does it require writel_relaxed() on some ? Will _wc() bring other
side effects such as loss of read vs. write ordering ? (on some archs at
least...). Etc....

There is a growing matrix of MMIO accessors and mapping types whose
semantics are poorly (if at all) defined. We cannot define them all
exactly for all architectures as there are too many differences that
will impact them. But we should be able to guarantee at least *some*,
ie, whether a given type of ordering is guaranteed or not by a given
accessor on a given mapping type, whether write combine (if supported at
all) will happen with a given accessor or not etc...

As for who should participate, well, at least one rep from each major
arch who is familiar with the intricacies of the architecture memory
model I would say, possibly others who dabbled in that stuff recently
such as Luis R. Rodriguez <mcgrof@suse.com> who was proposing patch
series lately to consolidate the use of _wc.

Cheers,
Ben.
