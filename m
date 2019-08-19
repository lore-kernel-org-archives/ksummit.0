Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 75628AF5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 07:06:27 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 375D067F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 07:06:27 +0000 (UTC)
Date: Mon, 19 Aug 2019 09:06:17 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Jan Kara <jack@suse.cz>
In-Reply-To: <20190819065710.GC20455@quack2.suse.cz>
Message-ID: <nycvar.YFH.7.76.1908190905490.27147@cbobk.fhfr.pm>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
	<alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
	<20190819065710.GC20455@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Mon, 19 Aug 2019, Jan Kara wrote:

> I don't think that 'R:' entry in MAINTAINERS should be really asked for.
> IMO that is unnecessary bureaucracy and discourages review from people
> that are not core developers. Sure the quality of the review may be lower
> than from core developer but still there's some value in it. So I'd really
> leave it at the discretion of the maintainer whether he accepts or just
> ignores Reviewed-by tag.

I totally agree.

Sure, Acked-by: (and other tags) is sometimes over-used by random people 
just to get their name listed in the kernel changelog ... on the other 
hand, restricting this only to "the MAINTAINERS club" is definitely not 
how you invite more relevant reviewers to join and help.

-- 
Jiri Kosina
SUSE Labs
