Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C7DE3C7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 15:58:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E3469876
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 15:58:06 +0000 (UTC)
Date: Mon, 15 Jul 2019 12:58:00 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20190715125800.22a9a979@coco.lan>
In-Reply-To: <20190708115949.GC1050@kunai>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
 meaningful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 8 Jul 2019 13:59:50 +0200
Wolfram Sang <wsa@the-dreams.de> escreveu:

> Hi Geert,
> 
> > > 1) we need a better distinction between Acked-by: and Reviewed-by: and encourage
> > >    stricter use of that  
> > 
> > Before we had "Reviewed-by", "Acked-by" meant "looks OK to me".
> > Then we got "Reviewed-by" for more thorough reviews.  
> 
> This is what still makes most sense to me. You can express e.g. that you
> like a patch series and approve the general approach taken but haven't
> gone for the gory details -> Acked-by (a short explaining paragraph
> would make sense, then, too)
> 
> Is that old fashioned?
> 
> Acked-by only for maintainers doesn't make sense to me. Neiher does when
> Acked-by has a different meaning for maintainers and non-maintainers.

On my case, when I receive an Acked-by, I assume that this came
from a maintainer (either a subsystem maintainer or a driver
maintainer) - as I expect that non-maintainers (and reviewers)
will either send me a reviewed-by or a tested-by.

When a review a code that will be merged via someone's else tree,
I usually either give:

- Acked-by - if it is something that touches the subsystem
  I maintain and will be merged via some other tree, but I 
  didn't make a comprehensive review;

- Reviewed-by - if I did a comprehensive review. I can either
  be the maintainer or not of the files touched by the patch.

So, I usually expect the others do about the same.

Looking at Documentation/process/5.Posting.rst:

	 - Acked-by: indicates an agreement by another developer (often a
	   maintainer of the relevant code) that the patch is appropriate for
	   inclusion into the kernel.

	 - Reviewed-by: the named developer has reviewed the patch for correctness;
	   see the reviewer's statement in :ref:`Documentation/process/submitting-patches.rst <submittingpatches>`
	   for more detail.

I guess the descriptions are already enough to describe those
tags.

Thanks,
Mauro
