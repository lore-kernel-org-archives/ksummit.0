Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48DDDB8F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 14:48:29 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D9820822
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 14:48:27 +0000 (UTC)
Date: Wed, 19 Jun 2019 17:48:08 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190619144808.GI21753@pendragon.ideasonboard.com>
References: <20190614124305.65eb8dbd@coco.lan>
	<1560527386.27102.23.camel@HansenPartnership.com>
	<20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
	<20190614144836.0a71ebe5@coco.lan>
	<CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
	<20190617103115.670bf968@coco.lan> <20190619075351.GP28859@kadam>
	<CAKMK7uEZ0nvSZaOnQGxpghK+Md0YA0xfh+KjiferuJueeHDfwg@mail.gmail.com>
	<20190619113902.76bd169a@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190619113902.76bd169a@coco.lan>
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

Hi Mauro,

On Wed, Jun 19, 2019 at 11:39:02AM -0300, Mauro Carvalho Chehab wrote:
> Em Wed, 19 Jun 2019 10:33:23 +0200 Daniel Vetter escreveu:
> > On Wed, Jun 19, 2019 at 9:56 AM Dan Carpenter wrote:
> > > On Mon, Jun 17, 2019 at 10:31:15AM -0300, Mauro Carvalho Chehab wrote:  
> > > > Also, usually, the bots don't build with W=1, as, on most subsystems,
> > > > this cause lots of warnings[1].
> > > >
> > > > [1] On media, we have zero warnings with W=1.
> > >
> > > We could ask the kbuild devs if they would consider making W=1 a per
> > > tree option.  
> > 
> > No need to ask, just add a Kconfig which sets additional cflags for
> > you for your tree and your good. The usual combinatorial testing will
> > discover the new warnings. That's at least what we do for i915.ko
> > (including -Werror). Gets the job done.
> 
> While this works, having a W=1 per tree would, IMHO, work better, as,
> as new warnings get added to W=1, we'll get those for free.
> 
> -
> 
> I don't like the idea of having -Werror being automatically added, as
> this may cause problems when people try to compile with a different
> compiler version - or on some weird architectures.

It's not automatic though, if it depends on a Kconfig option that is
disabled by default. The built bots can enable it, while users would
ignore it. That being said, having it as a per-tree build bot option
should work as well.

> Specially on drivers that build with COMPILE_TEST[1], depending on the 
> architecture they're built, false-positive warnings rise, specially
> on unusual architecture with has different defines for some 
> arch-specific typedefs (signed/unsigned, different integer type,
> usage or not of volatile, a different address space, etc).

All my kernel compilation scripts use -Werror, and that does a great job
at catching problems. It can be a bit annoying at times when someone
introduces a warning, but usually a fix will already be posted when I
notice my build breaks. The more we use -Werror globally, the faster
those new warnings will be caught.

> [1] On media, our goal is that everything should build with
> COMPILE_TEST.

-- 
Regards,

Laurent Pinchart
