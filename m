Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 214BECBA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 15:07:15 +0000 (UTC)
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
	[209.85.222.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B14F97D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 15:07:13 +0000 (UTC)
Received: by mail-ua1-f66.google.com with SMTP id f4-v6so8992815uao.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 08:07:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<CAMuHMdXY0v_Q74dN9Qp=MM8BC9zi7XEsyKTQ1SiEAEoL_PBwrQ@mail.gmail.com>
	<CAGXu5j+xf4RRWa_fTMUJmLdjqKF7b8vXXXyO4K-9XxfUqJKFVA@mail.gmail.com>
In-Reply-To: <CAGXu5j+xf4RRWa_fTMUJmLdjqKF7b8vXXXyO4K-9XxfUqJKFVA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 6 Sep 2018 17:06:58 +0200
Message-ID: <CAMuHMdUChTXRwKkCcKAq_nqcWc-WHHiqekqQMz2BMJ0w2ZYh+A@mail.gmail.com>
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

Hi Kees,

On Thu, Sep 6, 2018 at 4:59 PM Kees Cook <keescook@chromium.org> wrote:
> On Thu, Sep 6, 2018 at 3:11 AM, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Thu, Sep 6, 2018 at 12:57 AM Kees Cook <keescook@chromium.org> wrote:
> >> I'd like to discuss ways that we could deprecate APIs more sanely. At
> >> present I've seen (and used) two approaches, fast and slow:
> >
> >> Example: strscpy(), VLA removal
> >
> > I didn't know VLAs were a kernel API ;-)
>
> I couldn't find a better short-hand that covered everything. "usage
> patterns"? Whatever, people understand what I mean. :)

Initially I though it made a big difference, as no VLA provider API was removed.
But it indeed becomes an equivalent problem when adding -Werror=vla.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
