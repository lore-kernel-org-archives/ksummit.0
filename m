Return-Path: <will.deacon@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D2A09ABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 09:56:19 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 80558150
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 09:56:19 +0000 (UTC)
Date: Tue, 7 Jul 2015 10:56:16 +0100
From: Will Deacon <will.deacon@arm.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Message-ID: <20150707095615.GD23879@arm.com>
References: <1435997837.3948.21.camel@kernel.crashing.org>
	<CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
	<1436065368.3948.48.camel@kernel.crashing.org>
	<CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
	<1436126184.3948.55.camel@kernel.crashing.org>
	<20150706093333.GD30342@arm.com>
	<1436220126.3948.74.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1436220126.3948.74.camel@kernel.crashing.org>
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

On Mon, Jul 06, 2015 at 11:02:06PM +0100, Benjamin Herrenschmidt wrote:
> On Mon, 2015-07-06 at 10:33 +0100, Will Deacon wrote:
> > On arm64, ioremap == ioremap_nocache, which gives strong ordering
> > guarantees but forbids things like unaligned access.
> 
> Ok, same for us. Except ordering guarantees aren't even that strong ...

By "strong", I mean "ordered with respect to each other" and not subject
to "gathering" (more on that below).

> >  ioremap_wc gives a
> > more relaxed mapping, which is non-cached but allows re-ordering and
> > unaligned access.
> 
> Ok, our other mapping (G=0) weakens ordering even more but won't allow
> unaligned either. We don't have a non-cachable mapping that allows
> unaligned accesses at all in fact :-( I've been fighting with our HW
> guys on that one, but they keep thinking it's not useful.

Yikes. How do you deal with that? I've seen GCC perform idiom recognition
on calls to memset/memcpy assuming unaligned access on arm64.

> > ioremap_wt is new and strange, but rmk and I were going down the same
> > route as ioremap_wc for that, because people expect to be able to do
> > blind memcpy with those pointers.
> 
> Ok, powerpc architecturally supports WT but no recent implementation
> does. I'm not sure what is the practical purpose.

That's a similar story for us. In terms of normal memory, we basically
have writeback-cacheable and non-cacheable.

> > As for ordering of writeX/readX wrt DMA, our IO accessors are so
> > insanely
> > heavyweight that I don't think the ioremap flavour matters atm.
> 
> This is the same for us, but that also means in our case that writeX
> will not combine on ioremap_wc(), only relaxed_writeX() might after we
> change it to be something else than writeX(). What is the situation for
> you ?

The barriers between the writes will forbid any combining. In fact, it
would make the mapping look an awful lot like a plain old ioremap except
that a readX could be speculated and unaligned access is permitted.

As long as the accessors are required to enforce ordering that the
underlying memory type is incapable of providing, I don't see what we
could do to solve this (somehow make readX/writeX behaviour dependent on
the pointer?).

Will
