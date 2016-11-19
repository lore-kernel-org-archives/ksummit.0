Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9CEAD416
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 21:09:42 +0000 (UTC)
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 327A1124
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 21:09:42 +0000 (UTC)
Received: by mail-oi0-f66.google.com with SMTP id f201so12827055oib.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 13:09:42 -0800 (PST)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20161119185433.331a132b@vento.lan>
References: <20161107075524.49d83697@vento.lan> <11020459.EheIgy38UF@wuerfel>
	<20161116182633.74559ffd@vento.lan> <2923918.nyphv1Ma7d@wuerfel>
	<CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
	<20161119101543.12b89563@lwn.net> <20161119185433.331a132b@vento.lan>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 19 Nov 2016 13:09:40 -0800
Message-ID: <CA+55aFxabyppB3NgH_78J0jOFJDQ4rDe6sw3ijmoANSzXuKcDw@mail.gmail.com>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Content-Type: text/plain; charset=UTF-8
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

On Sat, Nov 19, 2016 at 12:54 PM, Mauro Carvalho Chehab
<mchehab@s-opensource.com> wrote:
>
> I did some research on Friday trying to identify where those images
> came. It turns that, for the oldest images (before I took the media
> maintainership), PDF were actually their "source", as far as I could track,
> in the sense that the *.gif images were produced from the PDF.
>
> The images seem to be generated using some LaTeX tool. Their original
> format were probably EPS.

The original format was almost certainly xfig.

Converting fig files to eps and pdf to then encapsulate them into
LaTeX was a very common way to do documentation with simple figures.
Iirc, xfig natively supported "export as eps".

                Linus
