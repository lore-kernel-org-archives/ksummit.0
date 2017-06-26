Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B54D988A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 06:43:27 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2E560198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 06:43:27 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id f20so12533447itb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 23:43:27 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <87shinzkp9.fsf@notabene.neil.brown.name>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jun 2017 08:43:25 +0200
Message-ID: <CAMuHMdUEB4oDFmjv40BWpKXnD0ETNz=ZkN4caAwp29ZkXZ2BhA@mail.gmail.com>
To: NeilBrown <neilb@suse.com>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 26, 2017 at 1:55 AM, NeilBrown <neilb@suse.com> wrote:
>> 5) Do we need suspend-to-RAM to handle power management? If so, how
>> can we handle automatic sleep an still be compatible with Unix?
>
> My feeling is that until someone proves otherwise, suspend-to-RAM should
> be assumed necessary.  It should be possible to get the same power
> saving with runtime suspend, but that requires all of user-space to
> co-operated, which is like "herding wild cats".

... and the firmware, on architectures where implementing this inside the
kernel is forbidden by policy.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
