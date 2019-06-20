Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CC601BA0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jun 2019 12:25:08 +0000 (UTC)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
	[209.85.167.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3F6077ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jun 2019 12:25:08 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id a128so2018665oib.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jun 2019 05:25:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
	<20190614144836.0a71ebe5@coco.lan>
	<CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
	<20190617103115.670bf968@coco.lan> <20190619075351.GP28859@kadam>
	<CAKMK7uEZ0nvSZaOnQGxpghK+Md0YA0xfh+KjiferuJueeHDfwg@mail.gmail.com>
	<20190619113902.76bd169a@coco.lan>
	<20190619144808.GI21753@pendragon.ideasonboard.com>
	<1560959179.4729.10.camel@HansenPartnership.com>
	<20190619162359.GV5316@sirena.org.uk>
In-Reply-To: <20190619162359.GV5316@sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 20 Jun 2019 14:24:55 +0200
Message-ID: <CAMuHMdX8gZG52EscvOng26cwmSCiFHZVhc4=GuKknU0FgyL27g@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
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

On Wed, Jun 19, 2019 at 6:24 PM Mark Brown <broonie@kernel.org> wrote:
> On Wed, Jun 19, 2019 at 08:46:19AM -0700, James Bottomley wrote:
> > On Wed, 2019-06-19 at 17:48 +0300, Laurent Pinchart wrote:
> > > It's not automatic though, if it depends on a Kconfig option that is
> > > disabled by default. The built bots can enable it, while users would
> > > ignore it. That being said, having it as a per-tree build bot option
> > > should work as well.
>
> > I really don't think well made build bots would enable this.  The
> > problem with -Werror is it's single threaded on the first problem.
> > What a generic build bot wants to do is compile the entire tree and
> > then diff the output to find the additional warnings for everything.  I
> > could see a tree specific build bot being more interested (until the
> > build fails on an unrelated subsystem).
>
> If you're doing build coverage you can always use make -k and still
> build everything but yeah.

While that does allow building most individual components, you will
fail to catch link errors and section mismatches.

Still better than nothing, of course....

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
