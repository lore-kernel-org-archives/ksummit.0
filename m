Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 488A1BA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 15:19:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB542E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 15:19:23 +0000 (UTC)
Date: Wed, 19 Jun 2019 12:19:18 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20190619121918.3d5eb91b@coco.lan>
In-Reply-To: <20190619144808.GI21753@pendragon.ideasonboard.com>
References: <20190614124305.65eb8dbd@coco.lan>
	<1560527386.27102.23.camel@HansenPartnership.com>
	<20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
	<20190614144836.0a71ebe5@coco.lan>
	<CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
	<20190617103115.670bf968@coco.lan> <20190619075351.GP28859@kadam>
	<CAKMK7uEZ0nvSZaOnQGxpghK+Md0YA0xfh+KjiferuJueeHDfwg@mail.gmail.com>
	<20190619113902.76bd169a@coco.lan>
	<20190619144808.GI21753@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	media-submaintainers@linuxtv.org, kbuild@01.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [media-submaintainers] [MAINTAINERS SUMMIT]
 Pull network and Patch Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 19 Jun 2019 17:48:08 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> Hi Mauro,
> 
> On Wed, Jun 19, 2019 at 11:39:02AM -0300, Mauro Carvalho Chehab wrote:
> > Em Wed, 19 Jun 2019 10:33:23 +0200 Daniel Vetter escreveu:  
> > > On Wed, Jun 19, 2019 at 9:56 AM Dan Carpenter wrote:  
> > > > On Mon, Jun 17, 2019 at 10:31:15AM -0300, Mauro Carvalho Chehab wrote:    
> > > > > Also, usually, the bots don't build with W=1, as, on most subsystems,
> > > > > this cause lots of warnings[1].
> > > > >
> > > > > [1] On media, we have zero warnings with W=1.  
> > > >
> > > > We could ask the kbuild devs if they would consider making W=1 a per
> > > > tree option.    
> > > 
> > > No need to ask, just add a Kconfig which sets additional cflags for
> > > you for your tree and your good. The usual combinatorial testing will
> > > discover the new warnings. That's at least what we do for i915.ko
> > > (including -Werror). Gets the job done.  
> > 
> > While this works, having a W=1 per tree would, IMHO, work better, as,
> > as new warnings get added to W=1, we'll get those for free.
> > 
> > -
> > 
> > I don't like the idea of having -Werror being automatically added, as
> > this may cause problems when people try to compile with a different
> > compiler version - or on some weird architectures.  
> 
> It's not automatic though, if it depends on a Kconfig option that is
> disabled by default. The built bots can enable it, while users would
> ignore it. That being said, having it as a per-tree build bot option
> should work as well.

Having a Kconfig option is OK.

What I'm saying is that I don't like the idea of having something
like:

	ccflags-y := -Werror

Unconditionally added on some Makefile. Having it depending on a Kconfig
option (or manually added with something like "make CFLAGS=-Werror") is OK.

We had -Werror unconditionally enabled in the past on a couple of
Makefiles under media.

-

It sounds, however, that there's not a consensus with that regards, as
some subsystems enableit unconditionally:

	ccflags-y := -Werror

Others enable when there's some other make option:

	ifeq (, $(findstring -W,$(EXTRA_CFLAGS)))
		ccflags-y += -Werror
	endif

And yet other ones have their own subsystem-specific option to
enable it:

	ccflags-$(CONFIG_PPC_WERROR)  += -Werror


Thanks,
Mauro
