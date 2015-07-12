Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8DF06BBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:28:08 +0000 (UTC)
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0EC8EA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:28:08 +0000 (UTC)
Received: by obdbs4 with SMTP id bs4so214581984obd.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 03:28:07 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20150710210750.GF10533@cloud>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
	<20150710205606.GC10533@cloud>
	<1436562223.24408.55.camel@infradead.org>
	<20150710210750.GF10533@cloud>
Date: Sun, 12 Jul 2015 12:28:07 +0200
Message-ID: <CAMuHMdUcFfGZPqQ=9J3=aVpDtt63jk_rvmhfK+X0+n_UoEw0_w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset=UTF-8
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 11:07 PM,  <josh@joshtriplett.org> wrote:
> I just wish I had a more satisfactory method of associating a cover
> letter with a series *in git*, such that format-patch could emit a
> non-placeholder cover letter.

You can use "git commit --allow-empty" to write cover letters.
Make sure they don't get lost during rebasing.

Still, if you include them in --format-patch, they will be "PATCH 1/n",
not "PATCH 0/n".

[...]

Oh cool, there's a "--start-number" option, will try...

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
