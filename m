Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B9706A40
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 18:15:10 +0000 (UTC)
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C622A20250
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 18:15:09 +0000 (UTC)
Received: by mail-lb0-f182.google.com with SMTP id z11so11329645lbi.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 11:15:07 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CACxGe6s76N3eL5LK5HnLgMGHp3tJKsBBcsP-JYHFkCH+XjUWWg@mail.gmail.com>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
	<20140823081245.GA16949@localhost>
	<CACxGe6s76N3eL5LK5HnLgMGHp3tJKsBBcsP-JYHFkCH+XjUWWg@mail.gmail.com>
Date: Sun, 24 Aug 2014 20:15:07 +0200
Message-ID: <CAMuHMdUJhghbOS0JiMidxLjNXe-Gofheb0A1pB_8kJemtak-6w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Grant Likely <grant.likely@secretlab.ca>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Fwd: Rough notes from testing unconference
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Aug 24, 2014 at 7:12 PM, Grant Likely <grant.likely@secretlab.ca> wrote:
> Cross building the kernel isn't the problem. That's easy. Getting a
> rootfs and the tests into the rootfs can be hard, depending on the
> platform (a problem for some embedded targets).

In the past, I have used OpenWRT to build the rootfs for the test
target.

Still there are dependencies, as not all C libraries support all architectures.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
