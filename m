Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 681C9EBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:21:29 +0000 (UTC)
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
	[209.85.222.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E4D6FA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:21:28 +0000 (UTC)
Received: by mail-ua1-f66.google.com with SMTP id m26-v6so11308979uap.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 01:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<20180906225531.GB2251@localhost.localdomain>
In-Reply-To: <20180906225531.GB2251@localhost.localdomain>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Sep 2018 10:21:15 +0200
Message-ID: <CAMuHMdVqhOq11fxOf7RUXEq+oT5A2gGKSVx=FadtiVz23AywHA@mail.gmail.com>
To: Eduardo Valentin <edubezval@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Eduardo,

On Fri, Sep 7, 2018 at 12:55 AM Eduardo Valentin <edubezval@gmail.com> wrote:
> On Thu, Sep 06, 2018 at 09:18:07PM +0200, Jiri Kosina wrote:
> Honestly, the fact that somehow the community managed to make this to
> stable (and eventually to distros) is really good. Imagine for a second
> a world in which these made only mainline and no stable branch..

It could have been the disaster needed to trigger a paradigm shift in the
software industry?

For a fully isolated/controlled system old stable may make sense, but in
the post-Internet connected world, where the whole world population can
peek at your front door, you'd better be prepared to upgrade any time.
Despite backporting, you'll always be vulnerable to some security issues
that were fixed in mainline.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
