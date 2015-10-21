Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 785E890
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Oct 2015 08:59:33 +0000 (UTC)
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EB104125
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Oct 2015 08:59:32 +0000 (UTC)
Received: by oiad129 with SMTP id d129so24984514oia.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Oct 2015 01:59:32 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <1445272076.2481.37.camel@loki>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
Date: Wed, 21 Oct 2015 10:59:32 +0200
Message-ID: <CAMuHMdUQs7bLZ=xKqpyNprhU-n_Qp-+2fHZX+LPZ+5hEbZ59HQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Liam Girdwood <liam.r.girdwood@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@kernel.og>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Oct 19, 2015 at 6:27 PM, Liam Girdwood
<liam.r.girdwood@linux.intel.com> wrote:
> We are currently implementing de-compiler support to the userspace
> compiler in order to convert the binary topology files into text files
> for debug and development purposes.

Just wondering: could this topology be represented/dumped as a DT?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
