Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0E7AF12D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:07:45 +0000 (UTC)
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
	[209.85.222.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9BA248D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:07:44 +0000 (UTC)
Received: by mail-ua1-f66.google.com with SMTP id h1-v6so21500821uao.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 11:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net>
	<1536686530.3511.1.camel@HansenPartnership.com>
In-Reply-To: <1536686530.3511.1.camel@HansenPartnership.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 11 Sep 2018 20:07:30 +0200
Message-ID: <CAMuHMdV9vwvjWnvJBgKNtPh38ZMD23YSAM1LQWHrTYaV3Ms8cg@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 7:22 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Tue, 2018-09-11 at 10:02 -0700, Guenter Roeck wrote:
> > FWIW, for the most part I stopped reporting issues with -next after
> > some people yelled at me for the 'noise' I was creating. Along the
> > line of "This has been fixed in branch xxx; why don't you do your
> > homework and check there", with branch xxx not even being in -next. I
> > don't mind "this has already been reported/fixed", quite the
> > contrary, but the "why don't you do your homework" got me over the
> > edge.
>
> Not to excuse rudeness, we always try to be polite on lists when this
> happens, but -next builds on Australian time, so when we find and fix
> an issue there can be up to 24h before it propagates.  In that time,
> particularly if it's a stupid bug, it gets picked up and flagged by a
> number of self contained 0day type projects and possibly a couple of
> coccinelle type ones as well.  It does get a bit repetitive for
> maintainers to receive and have to respond to 4 or 5 bug reports for
> something they just fixed ...
>
> Perhaps the -next tracking projects could have some sort of co-
> ordination list to prevent the five bug reports for the same issue
> problem?

Like, http://vger.kernel.org/vger-lists.html#linux-next ?

/me is guilty of not being subscribed
(but usually I do Google for independent fixes before reporting issues).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
