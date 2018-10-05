Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4BD12B2B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 07:12:54 +0000 (UTC)
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
	[209.85.217.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D6419196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 07:12:53 +0000 (UTC)
Received: by mail-vs1-f68.google.com with SMTP id z130-v6so6899433vsc.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 05 Oct 2018 00:12:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon> <20181004203956.GR32577@ZenIV.linux.org.uk>
	<20181004145631.5d1c3fb2@lwn.net>
In-Reply-To: <20181004145631.5d1c3fb2@lwn.net>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 5 Oct 2018 09:12:40 +0200
Message-ID: <CAMuHMdW6ApCoxAgMEugSBY-4wJpE9AQk6pBT4DR43ELfz3dnpQ@mail.gmail.com>
To: Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Oct 4, 2018 at 10:56 PM Jonathan Corbet <corbet@lwn.net> wrote:
> On Thu, 4 Oct 2018 21:39:57 +0100
> Al Viro <viro@ZenIV.linux.org.uk> wrote:
> >       * contributor Alice gets banned from contributing, for whatever reason
> >       * Alice finds a roothole and posts a technically valid fix
> >       * maintainer Bob sees the posting, verifies that the bug is real, that
> > the fix is correct and that the source of that patch is banned.
>
> So, while remedies under the CoC are yet to be determined in any sort of
> detail, I don't believe I have heard anybody talk about banning the
> acceptance of patches from anybody.  Speaking only for myself, I have a
> hard time seeing that happening in the absence of other sorts of concerns

"Maintainers have the right and responsibility [...] to ban temporarily or
 permanently any contributor".

> (the event where a would-be contributor started sending under a sock
> puppet name because nobody would consider his work anymore comes to mind).

That has indeed already happened.

> What *is* common under CoCs in various projects is banning from specific
> fora, such as this mailing list.  But that is a different thing and
> doesn't bring about the scenario described above.

"Maintainers have the right and responsibility to remove [...] commits".
Enjoy the append-only nature of non-rebasing git ;-)

BTW, should we start sending out patches to remedy parts in the CoC that
are not appropriate/suited/wanted for the Linux kernel project?
So far I have seen many suggestions to improve it, but no formal patches
for Documentation/process/code-of-conduct.rst.
I'm afraid it is already causing a chilling effect...

Or is that to be done after a group discussion in e.g. Edinburgh?
Which may bring us _after_ the release of v4.19...

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
