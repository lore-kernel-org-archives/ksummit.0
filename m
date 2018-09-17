Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 36FFDE99
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 14:50:38 +0000 (UTC)
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
	[209.85.222.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CDB4F784
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 14:50:37 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id o11-v6so10561688uak.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 07:50:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon> <20180910211128.GH16557@thunk.org>
	<1939259.kNhvOyGpTJ@avalon> <20180917084335.007012ec@coco.lan>
	<CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
	<20180917100413.22eac00d@coco.lan>
	<alpine.DEB.2.20.1809171508120.3417@hadrien>
	<20180917132908.GA15424@infradead.org>
	<20180917105805.0ccf0064@coco.lan>
	<20180917141801.GA8759@infradead.org>
In-Reply-To: <20180917141801.GA8759@infradead.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 17 Sep 2018 16:50:23 +0200
Message-ID: <CAMuHMdWQi5NzzS4GA5Am3sKyWdh2p7on6yo9FcJC6HWwdVAW=A@mail.gmail.com>
To: Christoph Hellwig <hch@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Christoph,

On Mon, Sep 17, 2018 at 4:18 PM Christoph Hellwig <hch@infradead.org> wrote:
> On Mon, Sep 17, 2018 at 10:58:05AM -0300, Mauro Carvalho Chehab wrote:
> > > > specifically).  The only problem is that people tend to omit context,
> > > > because they assume that you see the code or previous messages that they
> > > > see in the web interface, which you do not.
> > >
> > > The major problem with github is that as far as I can tell there is no
> > > way to interact with it without creating an account.
> >
> > Well, the same happens with moderated mailing lists. There are a
> > lot of them:
> >       $ git grep moderated MAINTAINERS|wc -l
> >       221
>
> Note that moderated doesn't mean that it always rejects non-subscribers.
> For example I post to linux-arm-kernel frequently, and my mails always
> seem to make it through with a delay.

linux-arm-kernel is a gateway to many maintainers, most of them will take
your patches fine.

But if it is for core ARM, it still has to be submitted to the ARM patch system
separately.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
