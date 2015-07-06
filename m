Return-Path: <will.deacon@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A87CFABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 09:33:36 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 4C632F0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 09:33:36 +0000 (UTC)
Date: Mon, 6 Jul 2015 10:33:33 +0100
From: Will Deacon <will.deacon@arm.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Message-ID: <20150706093333.GD30342@arm.com>
References: <1435997837.3948.21.camel@kernel.crashing.org>
	<CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
	<1436065368.3948.48.camel@kernel.crashing.org>
	<CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
	<1436126184.3948.55.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1436126184.3948.55.camel@kernel.crashing.org>
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

On Sun, Jul 05, 2015 at 08:56:24PM +0100, Benjamin Herrenschmidt wrote:
> On Sun, 2015-07-05 at 11:55 -0700, Andy Lutomirski wrote:
> > 
> > At some point, it would also be nice if the various macros has
> > well-defined semantics.  For example, x86 has:
> > 
> > #define pgprot_noncached(prot)                                          \
> >         ((boot_cpu_data.x86 > 3)                                        \
> >          ? (__pgprot(pgprot_val(prot) |                                 \
> >                      cachemode2protval(_PAGE_CACHE_MODE_UC_MINUS)))     \
> >          : (prot))
> > 
> > Putting aside the pointless boot_cpu_data check (surely the recent PAT
> > rework completely obsoletes it), what is
> > pgprot_noncached(pgprot_writecombine(x)) supposed to do?  Currently it
> > results in garbage.  Should it have well-defined behavior instead?
> 
> Can it ? On powerpc it will just mean pgprot_noncached for example,
> those macros manipulate the same bits and it's not a bitmask, it's
> either unached or uncached with write combining.
> 
> > I suspect the other arches all have their own unique glitches here.
> 
> Correct. I'm still trying to get feedback on ARM for example.

We've ended up doing whatever drivers start to rely on from running on
x86, which gives rise to some sort of de-facto semantics, but it's not
necessarily efficient or portable.

On arm64, ioremap == ioremap_nocache, which gives strong ordering
guarantees but forbids things like unaligned access. ioremap_wc gives a
more relaxed mapping, which is non-cached but allows re-ordering and
unaligned access.

ioremap_wt is new and strange, but rmk and I were going down the same
route as ioremap_wc for that, because people expect to be able to do
blind memcpy with those pointers.

As for ordering of writeX/readX wrt DMA, our IO accessors are so insanely
heavyweight that I don't think the ioremap flavour matters atm.

Will
