Return-Path: <peterz@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 21A8E9B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 21:26:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BC2E0201F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 21:26:38 +0000 (UTC)
Date: Wed, 7 May 2014 23:26:26 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Waiman Long <waiman.long@hp.com>
Message-ID: <20140507212626.GD2844@laptop.programming.kicks-ass.net>
References: <20140507182916.GG3694@arm.com>
 <536AA2FC.6070006@hp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <536AA2FC.6070006@hp.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asm-generic implementations of
 low-level synchronisation constructs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 07, 2014 at 05:17:48PM -0400, Waiman Long wrote:
> On 05/07/2014 02:29 PM, Will Deacon wrote:
> >Hi all,
> >
> >Traditionally, low-level synchronisation and atomic constructs have been
> >buried away in arch-specific code, with new arch maintainers having to
> >wrestle with Documentation/{memory-barriers,atomic_ops}.txt to ensure
> >they provide the (somewhat arbitrary) semantics expected by the kernel.
> >
> >However, over the past year, there have been some notable events in this
> >area:
> >
> >   (1) The addition of smp_load_acquire/smp_store_release across all
> >       architectures (including asm-generic)
> >       https://lwn.net/Articles/576486/
> >
> >   (2) Merging of generic MCS spinlocks into kernel/locking, built using
> >       the macros introduced by (1). There are other similar patches for
> >       queued spinlocks and rwlocks, but they're not completely generic
> >       afaict.
> >       http://lwn.net/Articles/590243/
>=20
> It is true that the current qspinlock patch is not completely generic.
> However, I think it can still be used by most architectures with the
> exception of, perhaps just, the pre-EV56 alpha.

Its going to be a massive pain on virt archs like PPC and s390. So while
those archs don't suffer the same problem Alpha does, they have problem
with fair locks.
