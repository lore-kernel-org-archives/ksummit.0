Return-Path: <benh@kernel.crashing.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 402BE6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 20:42:07 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 82FFB1DAA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 20:42:05 +0000 (UTC)
Message-ID: <1469306149.8568.209.camel@kernel.crashing.org>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: David Woodhouse <dwmw2@infradead.org>, Christian Borntraeger
	<borntraeger@de.ibm.com>, David Howells <dhowells@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Sun, 24 Jul 2016 06:35:49 +1000
In-Reply-To: <1469203184.120686.212.camel@infradead.org>
References: <15569.1469184060@warthog.procyon.org.uk>
	<5792414F.5040902@de.ibm.com>
	<1469203184.120686.212.camel@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Compiler shopping list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2016-07-22 at 16:59 +0100, David Woodhouse wrote:
> I'm not sure Linus proposed that. I certainly did, many times.
> 
> With the work I put in to make use of __builtin_bswapXX() we do have
> a
> *certain* amount of the functionality that full endianness
> attribution
> would give us — the compiler can see and optimise certain
> load/mask/save operations, and can use movbe and equivalent
> instructions.
> 
> But a full implementation that let us just do assignment without
> jumping through the hoops might still be nice.

One advantage of that is it might allow to work around a limitation
with the current __biultin_bswap* and READ_ONCE/ACCESS_ONCE (such
as used in gup).

The ACCESS_ONCE magic pretty much forces the compiler to separate
the load from the swap, it thus prevents us from using the byteswapped-
load instructions that we have on powerpc, thus degrading to a load
followed by the 5 or 6 instructions (with back-to-back dependencies)
needed to do the swap.

This caused a measurable performance hit on microbenchmarks when
we forced our page tables big endian on a little endian kernel (in
order to accomodate for POWER9 new radix MMU).

Cheers,
Ben.
