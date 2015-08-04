Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 992D9895
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 17:10:47 +0000 (UTC)
Received: from mail-ob0-f194.google.com (mail-ob0-f194.google.com
	[209.85.214.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 134BF1DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 17:10:47 +0000 (UTC)
Received: by obbtr2 with SMTP id tr2so795727obb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Aug 2015 10:10:46 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <7864111.KEAoCeCYyN@avalon>
References: <20150801164142.653012af@lwn.net> <20150804135044.GB5180@mwanda>
	<CAMuHMdUK2_7+Y9+ffpJKTy8LcwogFcg+XAGrif0YcTT4C4u-wQ@mail.gmail.com>
	<7864111.KEAoCeCYyN@avalon>
Date: Tue, 4 Aug 2015 19:10:46 +0200
Message-ID: <CAMuHMdWkMALYbCgqb=cUwGge1P9tWFwYvQ9c8o1oOU7ru640-Q@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 4, 2015 at 4:30 PM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Tuesday 04 August 2015 16:05:16 Geert Uytterhoeven wrote:
>> On Tue, Aug 4, 2015 at 3:50 PM, Dan Carpenter wrote:
>> > I have all the tools to read it.  I remember this because it requires
>> > 700MB of dependencies.  I was downloading it to read the kdbus
>> > documentation.  I remember this.  I don't think I read the kdbus
>> > documentation in the end.  I certainly don't know, without googling, how
>> > to use build the docbook output.
>>
>> I gave up trying to build the docbook docs many years ago.
>>
>> Cross-compiling kernels for niche architectures is peanuts compared to
>> generating docbook output ;-(
>
> That's interesting, I haven't had trouble compiling the DocBook documentation
> to HTML for several years now (I do it every time I have to patch the V4L2 or
> DRM documentation). Compiling to PDF is another story though.

Right.

I've just tried "make htmldocs", and it indeed works (after installing one
quite obvious dependency).
"make pdfdocs" is stuck in:

) (/usr/share/texlive/texmf-dist/tex/latex/oberdiek/epstopdf-base.sty
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/grfext.sty)
! Undefined control sequence.
<recently read> \AppendGraphicsExtensions

l.451 \fi

?
! Emergency stop.
<recently read> \AppendGraphicsExtensions

l.451 \fi

!  ==> Fatal error occurred, no output PDF file produced!

which a quick Google search didn't manage to provide a solution for.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
