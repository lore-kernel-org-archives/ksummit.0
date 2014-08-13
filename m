Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 628A04D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 13:08:36 +0000 (UTC)
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 914EA20242
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 13:08:35 +0000 (UTC)
Received: by mail-lb0-f177.google.com with SMTP id s7so8268046lbd.36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 06:08:33 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20140813124250.GT17528@sirena.org.uk>
References: <53E43365.50809@hitachi.com> <53E8CF03.6020308@samsung.com>
	<53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<53EA3DA0.2070407@roeck-us.net>
	<CACxGe6vYNjEAZT6YhB5WNyh40urSEVRbmVaWjEt6nQNUbgMbPw@mail.gmail.com>
	<20140812164922.GS17528@sirena.org.uk>
	<CACxGe6vu6P=KsP7O09afqzgdx2Xh11N9t_C0VKJ9T+yY-_3m6A@mail.gmail.com>
	<20140813104053.GK17528@sirena.org.uk>
	<CAMuHMdVpsrjhPLTLjOJuzz0PSo4NyhGoZCjkdxN2ML34Vuzz6A@mail.gmail.com>
	<20140813124250.GT17528@sirena.org.uk>
Date: Wed, 13 Aug 2014 15:08:33 +0200
Message-ID: <CAMuHMdVLMzFo-sB1HLO3vQkB4rdzvOgLnD=8-OR5SkKb13zRTw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Mark Brown <broonie@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Cc: Shuah Khan <shuah.kh@samsung.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Mark,

On Wed, Aug 13, 2014 at 2:42 PM, Mark Brown <broonie@sirena.org.uk> wrote:
> On Wed, Aug 13, 2014 at 01:12:28PM +0200, Geert Uytterhoeven wrote:
>> On Wed, Aug 13, 2014 at 12:40 PM, Mark Brown <broonie@kernel.org> wrote:
>
>> > Kevin's copy is here:
>
>> >    git://git.linaro.org/people/khilman/build-scripts.git
>
>> 404
>
>> Kevin's name got expanded:
>
>> git://git.linaro.org/people/kevin.hilman/build-scripts.git
>
> Interesting...  how are you cloning?  Both work for me:
>
> $ git clone git://git.linaro.org/people/khilman/build-scripts.git
> Cloning into 'build-scripts'...
> remote: Counting objects: 489, done.
> remote: Compressing objects: 100% (307/307), done.
> remote: Total 489 (delta 302), reused 295 (delta 181)
> Receiving objects: 100% (489/489), 73.90 KiB, done.
> Resolving deltas: 100% (302/302), done.

Bummer, I didn't clone, but opened
http://git.linaro.org/people/khilman/build-scripts.git in my web browser
by clicking on the link.
So Linaro gitweb supports the full names only, while real git can
access both (cloning indeed works for both).

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
