Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4BA82B47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 13:35:29 +0000 (UTC)
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C84D0129
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 13:35:28 +0000 (UTC)
Received: by obkg7 with SMTP id g7so171047257obk.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 06:35:28 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20150826125630.GH3684@io.lakedaemon.net>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com> <55B82222.3010409@samsung.com>
	<20150729074011.GB12557@amd> <55DCBB21.8070009@sonymobile.com>
	<55DD14C3.8090707@samsung.com>
	<20150826125630.GH3684@io.lakedaemon.net>
Date: Wed, 26 Aug 2015 15:35:27 +0200
Message-ID: <CAMuHMdXWWRC2WgvpeQiOLnv5eq7Uf2y0bzz4oF9+bvasqKnxMA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset=UTF-8
Cc: Pavel Machek <pavel@ucw.cz>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>,
	=?UTF-8?Q?Andersson=2C_Bj=C3=B6rn?= <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Jason,

On Wed, Aug 26, 2015 at 2:56 PM, Jason Cooper <jason@lakedaemon.net> wrote:
> iirc, gregkh's requirement for staging/ is that it compile.  Nothing
> more.  If you're interested, I wrote a script a while back to automate
> confirming that massive code cleanup (such as changing coding style)
> doesn't change the resulting object code.  It's scripts/objdiff, I used
> it for the initial import of skein and threefish crypto algorithms into
> staging.

Cool, I didn't know about this tool.
Now I can stop doing this manually...

Thanks!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
