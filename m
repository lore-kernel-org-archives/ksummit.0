Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 852CBC6A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 16:09:25 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4BE1B87F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 16:09:24 +0000 (UTC)
Date: Wed, 19 Jun 2019 19:09:04 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20190619160904.GA712@pendragon.ideasonboard.com>
References: <20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
	<20190614144836.0a71ebe5@coco.lan>
	<CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
	<20190617103115.670bf968@coco.lan> <20190619075351.GP28859@kadam>
	<CAKMK7uEZ0nvSZaOnQGxpghK+Md0YA0xfh+KjiferuJueeHDfwg@mail.gmail.com>
	<20190619113902.76bd169a@coco.lan>
	<20190619144808.GI21753@pendragon.ideasonboard.com>
	<20190619155602.GU5316@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190619155602.GU5316@sirena.org.uk>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	media-submaintainers@linuxtv.org, kbuild@01.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
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

Hi Mark,

On Wed, Jun 19, 2019 at 04:56:02PM +0100, Mark Brown wrote:
> On Wed, Jun 19, 2019 at 05:48:08PM +0300, Laurent Pinchart wrote:
> > On Wed, Jun 19, 2019 at 11:39:02AM -0300, Mauro Carvalho Chehab wrote:
> 
> > > Specially on drivers that build with COMPILE_TEST[1], depending on the 
> > > architecture they're built, false-positive warnings rise, specially
> > > on unusual architecture with has different defines for some 
> > > arch-specific typedefs (signed/unsigned, different integer type,
> > > usage or not of volatile, a different address space, etc).
> 
> > All my kernel compilation scripts use -Werror, and that does a great job
> > at catching problems. It can be a bit annoying at times when someone
> > introduces a warning, but usually a fix will already be posted when I
> > notice my build breaks. The more we use -Werror globally, the faster
> > those new warnings will be caught.
> 
> -Werror is a bit user hostile, it can be incredibly irritating when
> you're debugging things to get things like unused variable warnings from
> your debug code or to be working with an unusual config/arch that throws
> up warnings that aren't normally seen.  A clean build doesn't require us
> to enable -Werror, it requires us to pay attention to warnings.

I agree about the latter. Regarding debugging code I found it was just a
matter of getting used to it and avoiding generating warnings, even in
debug code. -Werror saved me from not noticing warnings introduced by my
code, and with it a git rebase -x compile test stops when I made a
mistake, which is really valuable. I'm not saying it should be enabled
through the whole kernel all of a sudden, but if we can slowly expand
its usage I think we'll end up with better code in the end.

-- 
Regards,

Laurent Pinchart
