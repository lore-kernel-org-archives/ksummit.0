Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4380ACAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 17:00:54 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A93B7898
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 17:00:53 +0000 (UTC)
Date: Mon, 15 Jul 2019 13:00:45 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190715170045.GB3068@mit.edu>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190715125800.22a9a979@coco.lan>
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

On Mon, Jul 15, 2019 at 12:58:00PM -0300, Mauro Carvalho Chehab wrote:
> On my case, when I receive an Acked-by, I assume that this came
> from a maintainer (either a subsystem maintainer or a driver
> maintainer) - as I expect that non-maintainers (and reviewers)
> will either send me a reviewed-by or a tested-by.

The problem is that the documentation doesn't exactly match your
expectations:

> When a review a code that will be merged via someone's else tree,
> I usually either give:
> 
> - Acked-by - if it is something that touches the subsystem
>   I maintain and will be merged via some other tree, but I 
>   didn't make a comprehensive review;
> 
> - Reviewed-by - if I did a comprehensive review. I can either
>   be the maintainer or not of the files touched by the patch.
> 
> So, I usually expect the others do about the same.
> 
> Looking at Documentation/process/5.Posting.rst:
> 
> 	 - Acked-by: indicates an agreement by another developer (often a
> 	   maintainer of the relevant code) that the patch is appropriate for
> 	   inclusion into the kernel.
> 
> 	 - Reviewed-by: the named developer has reviewed the patch for correctness;
> 	   see the reviewer's statement in :ref:`Documentation/process/submitting-patches.rst <submittingpatches>`
> 	   for more detail.
> 
> I guess the descriptions are already enough to describe those
> tags.

I'd suggest changing the text to read:

 	 - Acked-by: indicates an agreement by the maintainer or
	   reviewer of the the relevant code that the patch is
	   appropriate for inclusion into the kernel.

My concern is that if we have dozens of "Acked-by" by people who are
not domain experts in any part of the code in the git log, it's just
noise in the system.  Of course, we can't stop people from sending
Acked-by's on the mailing list, but when I recently pointed out that
I'm going to ignore an bare Acked-by by someone who I have no idea
whether or not I can trust the source of that Acked-by, I got yelled
at for not following the documented process.

That complaint isn't going to change how *I* interpret or decide to
include Acked-by's, but if we have general agreement on the
expectations Maintainers should have (and my expectations match
yours), then perhaps we can adjust the documentation to make it more
clear.

					- Ted
