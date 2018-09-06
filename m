Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 56C8EF75
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:12:09 +0000 (UTC)
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 09F3471C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:12:08 +0000 (UTC)
Received: by mail-vk0-f67.google.com with SMTP id 79-v6so3829483vkm.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 03:12:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
In-Reply-To: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 6 Sep 2018 12:11:56 +0200
Message-ID: <CAMuHMdXY0v_Q74dN9Qp=MM8BC9zi7XEsyKTQ1SiEAEoL_PBwrQ@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
	replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 6, 2018 at 12:57 AM Kees Cook <keescook@chromium.org> wrote:
> I'd like to discuss ways that we could deprecate APIs more sanely. At
> present I've seen (and used) two approaches, fast and slow:

> Example: strscpy(), VLA removal

I didn't know VLAs were a kernel API ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
