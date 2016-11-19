Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6013F71F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 18:45:28 +0000 (UTC)
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C5B5E15C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 18:45:27 +0000 (UTC)
Received: by mail-oi0-f65.google.com with SMTP id 128so16265900oih.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 10:45:27 -0800 (PST)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <1479578112.4382.15.camel@infradead.org>
References: <20161107075524.49d83697@vento.lan> <11020459.EheIgy38UF@wuerfel>
	<20161116182633.74559ffd@vento.lan> <2923918.nyphv1Ma7d@wuerfel>
	<CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
	<20161119101543.12b89563@lwn.net>
	<1479578112.4382.15.camel@infradead.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 19 Nov 2016 10:45:26 -0800
Message-ID: <CA+55aFy1r1ZDZjADvpKULC2sgAnSq4qM4W+_PP4Q2R5RG92LoQ@mail.gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset=UTF-8
Cc: Linux Media Mailing List <linux-media@vger.kernel.org>,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Nov 19, 2016 at 9:55 AM, David Woodhouse <dwmw2@infradead.org> wrote:
>
> I know it's unfashionable these days, but TeX always used to be bloody
> good at that kind of thing.

You must have used a different TeX than I did.

TeX is a horrible example. The moment you needed to insert anything
that TeX didn't know about, you were screwed.

I think my go-to for TeX was LaTeX, the "epsfig" thing, and then xfig
and eps files (using fig2dev). Christ, I get flashbacks just thinking
about it.

I thought one of the points of Sphinx was to not have to play those games.

I think that graphviz and svg are the reasonable modern formats. Let's
try to avoid bitmaps in today's world, except perhaps as intermediate
generated things for what we can't avoid.

                    Linus
