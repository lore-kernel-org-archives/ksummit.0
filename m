Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C630A9F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  4 Jul 2015 14:12:14 +0000 (UTC)
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2B9D3159
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  4 Jul 2015 14:12:13 +0000 (UTC)
Received: by wicgi11 with SMTP id gi11so119486891wic.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 04 Jul 2015 07:12:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1435997837.3948.21.camel@kernel.crashing.org>
References: <1435997837.3948.21.camel@kernel.crashing.org>
Date: Sat, 4 Jul 2015 07:12:11 -0700
Message-ID: <CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Sat, Jul 4, 2015 at 1:17 AM, Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
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
>
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
>
> As for who should participate, well, at least one rep from each major
> arch who is familiar with the intricacies of the architecture memory
> model I would say, possibly others who dabbled in that stuff recently
> such as Luis R. Rodriguez <mcgrof@suse.com> who was proposing patch
> series lately to consolidate the use of _wc.
>

Another side topic that has come up in this space is the desire to
define a "memremap" api to clean up __iomem abuses for cases where
"memory-like" mappings are needed.

https://lkml.org/lkml/2015/6/22/100
