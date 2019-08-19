Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6BED8A7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 06:57:13 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CCA2F8A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 06:57:12 +0000 (UTC)
Date: Mon, 19 Aug 2019 08:57:10 +0200
From: Jan Kara <jack@suse.cz>
To: Paul Walmsley <paul@pwsan.com>
Message-ID: <20190819065710.GC20455@quack2.suse.cz>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
	<alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
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

On Sat 17-08-19 21:35:29, Paul Walmsley wrote:
> On Mon, 15 Jul 2019, Theodore Y. Ts'o wrote:
> 
> > I'd suggest changing the text to read:
> > 
> >  	 - Acked-by: indicates an agreement by the maintainer or
> > 	   reviewer of the the relevant code that the patch is
> > 	   appropriate for inclusion into the kernel.
> 
> This would be a positive step forward.  I would be in favor of this. 
> 
> It would also be good to state here, if it isn't stated already, that 
> "reviewer" means "someone who is listed in an R: line in MAINTAINERS".

I don't think that 'R:' entry in MAINTAINERS should be really asked for.
IMO that is unnecessary bureaucracy and discourages review from people
that are not core developers. Sure the quality of the review may be lower
than from core developer but still there's some value in it. So I'd really
leave it at the discretion of the maintainer whether he accepts or just
ignores Reviewed-by tag.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
