Return-Path: <BATV+a3f5f3e6054314e6ea5e+5058+infradead.org+hch@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CE12295D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 13:39:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [65.50.211.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 566F2AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 13:39:50 +0000 (UTC)
Date: Thu, 29 Jun 2017 06:39:49 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20170629133949.GA19691@infradead.org>
References: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Developing across
 multiple areas of the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jun 28, 2017 at 04:01:34PM -0700, Kees Cook wrote:
> If there is time at the summit, I'd like to quickly discuss best
> practices for the mechanics of doing security defense development in
> the kernel. This has always been a bit tricky and I've done my best to
> navigate it, but it still feels like there are glitches that could be
> ironed out with a more clearly declared process (or ownership).

It's pretty hard as a general rule.  As someone who does a lot of
cross-subsystem work I usually try to find a "lead" subsystem to
funnel thing through, and if there isn't one yet I create it
(see the new uuid and dma-mappings ones for the next merge window).

> made in sources maintained outside the kernel itself (i.e. ACPICA)
> before they'd be accepted back into the kernel. Making tree-wide

And that's crap we just need to stop.  While I'm too some extent
ok with maintainers having their own little quirky requirements
on code style and organization that's simply a step too much.
Every subsystem in the kernel MUST accept suitable patches on the
proper, open mailing list.

And for ACPICA in general I think we'd reduce code size by 50%
and the bug amount by probably the same by stopping to treat it
special and apply the normal kernel rules to it.
