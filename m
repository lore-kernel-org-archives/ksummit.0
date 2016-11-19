Return-Path: <BATV+cc01ed8c03b0f09b1da6+4836+infradead.org+dwmw2@twosheds.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C3E5483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 22:59:12 +0000 (UTC)
Received: from twosheds.infradead.org (twosheds.infradead.org [90.155.92.209])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9AE64108
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 22:59:11 +0000 (UTC)
Message-ID: <1c179b5da49382970d7bf5171550d600.squirrel@twosheds.infradead.org>
In-Reply-To: <CA+55aFy1r1ZDZjADvpKULC2sgAnSq4qM4W+_PP4Q2R5RG92LoQ@mail.gmail.com>
References: <20161107075524.49d83697@vento.lan> <11020459.EheIgy38UF@wuerfel>
	<20161116182633.74559ffd@vento.lan> <2923918.nyphv1Ma7d@wuerfel>
	<CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
	<20161119101543.12b89563@lwn.net>
	<1479578112.4382.15.camel@infradead.org>
	<CA+55aFy1r1ZDZjADvpKULC2sgAnSq4qM4W+_PP4Q2R5RG92LoQ@mail.gmail.com>
Date: Sat, 19 Nov 2016 22:59:01 -0000
From: "David Woodhouse" <dwmw2@infradead.org>
To: "Linus Torvalds" <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


> On Sat, Nov 19, 2016 at 9:55 AM, David Woodhouse <dwmw2@infradead.org>
> wrote:
>>
>> I know it's unfashionable these days, but TeX always used to be bloody
>> good at that kind of thing.
>
> You must have used a different TeX than I did.
>
> TeX is a horrible example. The moment you needed to insert anything
> that TeX didn't know about, you were screwed.
>
> I think my go-to for TeX was LaTeX, the "epsfig" thing, and then xfig
> and eps files (using fig2dev). Christ, I get flashbacks just thinking
> about it.

You're right. You included Epson,  which was generated from fig.

Now I'm having flashbacks too, and I actually remember.

> I thought one of the points of Sphinx was to not have to play those games.
>
> I think that graphviz and svg are the reasonable modern formats. Let's
> try to avoid bitmaps in today's world, except perhaps as intermediate
> generated things for what we can't avoid.

Sure, SVG makes sense. It's a text-based format (albeit XML) and it *can*
be edited with a text editor and reasonably kept in version control, at
least if the common tools store it in a diff-friendly way (with some line
breaks occasionally, and maybe no indenting). Do they?


-- 
dwmw2
