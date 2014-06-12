Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F16E48CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Jun 2014 07:16:26 +0000 (UTC)
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D1E0F201F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Jun 2014 07:16:25 +0000 (UTC)
Received: by mail-lb0-f177.google.com with SMTP id u10so440534lbd.36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Jun 2014 00:16:24 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20140611224842.2a011256@gandalf.local.home>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611175433.GA10462@roeck-us.net>
	<CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
	<5398E4A8.9080200@roeck-us.net>
	<20140611224842.2a011256@gandalf.local.home>
Date: Thu, 12 Jun 2014 09:16:23 +0200
Message-ID: <CAMuHMdU+Qqyz0yv89FDjbXnufUckeAviokDU70vTxs2c2JSvBA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	David Vrabel <david.vrabel@citrix.com>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: Re: [Ksummit-discuss] Topic: Removal of code that is still in use
 by users but there is a better code.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jun 12, 2014 at 4:48 AM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Wed, 11 Jun 2014 16:22:16 -0700
> Guenter Roeck <linux@roeck-us.net> wrote:
>> I understand, but personally I don't have much problem with code as long
>> as it compiles. I am more concerned with code that doesn't compile and
>> no one cared for years.

And once it stops compiling, more issues will be introduced into that area,
which no one notices due to the first compile failure.

> Matters what your definition of "doesn't compile" is.
>
> You may not have the right config option set to make it compile.
> randconfig builds trigger failed compiles quite often. Is that code
> worth removing?
>
> As most people test allyesconfig and allmodconfig quite a bit, I'm not
> sure what code you are talking about. Basically everything that gets
> enabled does compile.

And once it compiles, it usually works!

I have the impression we're getting good (read: having good review) at doing
logical changes, i.e. when code is integrated, it works (almost always :-).
The tricky parts these days are configuration issues, i.e. code that fails to
build for certain configurations, due to various reasons (forgot to handle a
case in another #ifdef branch, code inside vs. outside #ifdef,
different indirect
includes on different architectures, ...). Fortunately the latter can be caught
using more CPU resources, in contrast with more reviewers for the former.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
