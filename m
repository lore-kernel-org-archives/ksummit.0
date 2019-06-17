Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04914C21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 17:24:15 +0000 (UTC)
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B7DC27E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 17:24:13 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id z15so7073576lfh.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 10:24:13 -0700 (PDT)
MIME-Version: 1.0
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
	<20190614102424.3fc40f04@coco.lan> <20190614135807.GA6573@kroah.com>
	<20190614121137.02b8a6dc@coco.lan>
	<20190615110107.GA5974@pendragon.ideasonboard.com>
	<20190617080315.4d8fd076@coco.lan>
	<20190617122837.GP5316@sirena.org.uk>
	<ECADFF3FD767C149AD96A924E7EA6EAF97735B4F@USCULXMSG01.am.sony.com>
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF97735B4F@USCULXMSG01.am.sony.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 17 Jun 2019 19:23:56 +0200
Message-ID: <CAMuHMdWNrPB8Hq8o33ERiDX7g_D8eVhr8WrYRMzeoOKqOQLG-w@mail.gmail.com>
To: "Bird, Timothy" <Tim.Bird@sony.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	media-submaintainers@linuxtv.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Tim,

On Mon, Jun 17, 2019 at 6:48 PM <Tim.Bird@sony.com> wrote:
> - I recently saw a very cool system for isolating new warnings (at all levels
> of W=[0-3]) introduced by a new patch.  This would be a great thing to
> add to the kernel build system, IMHO, and that's also on my to-do list.
> - I was very interested in discussions about the mechanism to check whether
> a patch modified the binary or not.   It would be nice to make this part of
> the build system as well (something like: "make check-for-binary-change"
>
> Both of the latter items require the ability to set a baseline to compare
> against.  So the usage sequence would be:
>  - make save-baseline
>  - <do commit or pull>
>  - make show-new-warnings

https://github.com/geertu/linux-scripts/blob/master/linux-log-diff

linux-log-diff build.log.old build.log.new

That's what I use for "Build regressions/improvements in v5.2-rc5"
https://lore.kernel.org/lkml/20190617071937.22838-1-geert@linux-m68k.org/

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
