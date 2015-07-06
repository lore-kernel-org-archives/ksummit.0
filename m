Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 448979FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 22:02:20 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A5C76FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 22:02:18 +0000 (UTC)
Message-ID: <1436220126.3948.74.camel@kernel.crashing.org>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Will Deacon <will.deacon@arm.com>
Date: Tue, 07 Jul 2015 08:02:06 +1000
In-Reply-To: <20150706093333.GD30342@arm.com>
References: <1435997837.3948.21.camel@kernel.crashing.org>
	<CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
	<1436065368.3948.48.camel@kernel.crashing.org>
	<CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
	<1436126184.3948.55.camel@kernel.crashing.org>
	<20150706093333.GD30342@arm.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Semantics of MMIO mapping
 attributes accross archs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2015-07-06 at 10:33 +0100, Will Deacon wrote:
> 
> We've ended up doing whatever drivers start to rely on from running on
> x86, which gives rise to some sort of de-facto semantics, but it's not
> necessarily efficient or portable.

Correct, which is why I would like to start documenting what is
mandated/guaranteed and separately what is the expected behaviour for
non-guaranteed bits on each arch.

> On arm64, ioremap == ioremap_nocache, which gives strong ordering
> guarantees but forbids things like unaligned access.

Ok, same for us. Except ordering guarantees aren't even that strong ...

>  ioremap_wc gives a
> more relaxed mapping, which is non-cached but allows re-ordering and
> unaligned access.

Ok, our other mapping (G=0) weakens ordering even more but won't allow
unaligned either. We don't have a non-cachable mapping that allows
unaligned accesses at all in fact :-( I've been fighting with our HW
guys on that one, but they keep thinking it's not useful.
 
> ioremap_wt is new and strange, but rmk and I were going down the same
> route as ioremap_wc for that, because people expect to be able to do
> blind memcpy with those pointers.

Ok, powerpc architecturally supports WT but no recent implementation
does. I'm not sure what is the practical purpose.

> As for ordering of writeX/readX wrt DMA, our IO accessors are so
> insanely
> heavyweight that I don't think the ioremap flavour matters atm.

This is the same for us, but that also means in our case that writeX
will not combine on ioremap_wc(), only relaxed_writeX() might after we
change it to be something else than writeX(). What is the situation for
you ?

Ben.
