Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4886F9FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 00:01:12 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6EE13168
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 00:01:11 +0000 (UTC)
Date: Tue, 7 Jul 2015 02:01:06 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Message-ID: <20150707000106.GL7021@wotan.suse.de>
References: <1435997837.3948.21.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1435997837.3948.21.camel@kernel.crashing.org>
Cc: Toshi Kani <toshi.kani@hp.com>, ksummit-discuss@lists.linuxfoundation.org
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

On Sat, Jul 04, 2015 at 06:17:17PM +1000, Benjamin Herrenschmidt wrote:
> Allright, it's that time of year ... So here's my attempt at getting
> myself invited :-)
> 
> We've been talking about some of that on-list recently, and it might
> well be that this will trigger a resolution before we even reach KS, but
> I though it might be worthwhile to gather enough people from various
> arch together to hash things out:
> 
> We have a pile of mapping attributes (more showing up recently),
> typically used for MMIO mappings (but not necessarily exclusively).
> ioremap_cache and ioremap_nocache are the old/common ones, but we have
> _wc (write combine), _wt (write through) and possibly more around the
> corner.

ioremap_uc() is now merged, its user however is not upstream and requires
addressing some general architecture definitions of ioremap_uc()

> What are their precise semantics accross all architecture ? This is not
> clear (not documented). For example, we define writel(), readl() and
> friends as being fully ordered vs each other but also vs DMA etc... but
> on what mapping types do they have this property ?
> 
> Will _wc() provide the write-combine ability for writel() on all archs ?
> Or does it require writel_relaxed() on some ? Will _wc() bring other
> side effects such as loss of read vs. write ordering ? (on some archs at
> least...). Etc....
> 
> There is a growing matrix of MMIO accessors and mapping types whose
> semantics are poorly (if at all) defined. We cannot define them all
> exactly for all architectures as there are too many differences that
> will impact them. But we should be able to guarantee at least *some*,
> ie, whether a given type of ordering is guaranteed or not by a given
> accessor on a given mapping type, whether write combine (if supported at
> all) will happen with a given accessor or not etc...

Other than this one complexity I found no one to be too comfortable
in considering is the effect of overlapping ioremap() calls and whether
or not it should be supported. There are possible aliasing issues here but
again, what is done on hardware if one does go through with things can vary.
Not only are there ioremap() implementations to consider but also further
mapping modifications (arch_phys / old MTRR calls, then set_memory_*() are
examples). For instance:

 a) an undocumented grammatical requirement here is
    that an arch_phys_wc_add() call requires a respective ioremap_wc() call,
    such requirements can be both implemented and later ensured with Coccinelle
    SmPL, should we really wish to enforce a combinatorial set 
    (make coccicheck M=drivers/path/) we can do so by adding this as a
    rule.

 b) Although you get no error from this set_memory_wc() will not work
    I/O memory becauase as Toshi noted to me a while ago:

    1. __pa(addr) returns a fake address since there is no direct map.
    2. reserve_memtype() tracks regular memory and I/O memory differently.
       For regular memory, set_memory_*() can modify WB with a new type since
       reserve_memtype() does not track WB.  For I/O memory, reserve_memtype()
       detects a conflict when a given type is different from a tracked type.

If we are to grow ioremap calls, and other modifiers such as the above
we should not only consider documenting semantics but actually
defining a proper semantic set with something like coccinelle rules.
Then driver developers / maintainers can check / vet its use with
thins like coccicheck.

> As for who should participate, well, at least one rep from each major
> arch who is familiar with the intricacies of the architecture memory
> model I would say, possibly others who dabbled in that stuff recently
> such as Luis R. Rodriguez <mcgrof@suse.com> who was proposing patch
> series lately to consolidate the use of _wc.

Dan Williams <dan.j.williams@intel.com> and Toshi Kani <toshi.kani@hp.com>
could obvioulsy also contribute to this discussion. Julia for the semantic
side of things.

 Luis
