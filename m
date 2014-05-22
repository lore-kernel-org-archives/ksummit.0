Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6A2BF26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 07:49:46 +0000 (UTC)
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5D4FF1FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 07:49:45 +0000 (UTC)
Received: by mail-ig0-f179.google.com with SMTP id hn18so3184179igb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 00:49:44 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <s5hy4xufe8q.wl%tiwai@suse.de>
References: <s5hvbt9izdm.wl%tiwai@suse.de>
	<20140516030708.GV27822@titan.lakedaemon.net>
	<s5h1tvuf4ov.wl%tiwai@suse.de>
	<20140522.064910.1233749401586905587.chriscool@tuxfamily.org>
	<s5h4n0igxs1.wl%tiwai@suse.de>
	<CALKQrgfK7xosKvDHBS3HPoHtjZY09mt04MSbVDpEFhOcy8UqQg@mail.gmail.com>
	<s5hy4xufe8q.wl%tiwai@suse.de>
Date: Thu, 22 May 2014 09:49:44 +0200
Message-ID: <CAMuHMdWmB-0dd7tC8cF-Aj=TOPO-D8nvUcjTUoVNAz-EBTVWaQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Takashi Iwai <tiwai@suse.de>
Content-Type: text/plain; charset=UTF-8
Cc: Johan Herland <johan@herland.net>, Junio C Hamano <gitster@pobox.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 22, 2014 at 9:45 AM, Takashi Iwai <tiwai@suse.de> wrote:
>> Yes, unless you add it (using git-notes) as an annotation to the fix
>> commit, but then you're back to the (perceived) problem of sharing
>> those notes.
>>
>> Alternatively, you would have to find a different mechanism for
>> developers to insert entries into their reverse mappings from
>> post-facto/missing "Fixes:" tags.
>
> After reconsidering this, now I don't think we can rely only on Fixes
> tag.  The addendum notes are useful for other purposes, e.g. finding
> external links.  And, yet one useful thing by addendum is that you can
> mark the regression no matter whether it's already fixed or not.  With
> Fixes-tag reverse mapping, you can find only fixed regressions, but
> not open regressions.

Do you want to import the whole bug tracking system, too? ;-)

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
