Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3E856AD7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 08:15:15 +0000 (UTC)
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
	[209.85.221.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7774E5D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 08:15:14 +0000 (UTC)
Received: by mail-vk1-f193.google.com with SMTP id 125-v6so1680304vke.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 08 Sep 2018 01:15:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<20180907143326.GM5098@thunk.org>
	<CAGXu5jJ9EP3UEWjyTJum0YM7=549kVcCOk5Jk_i+dt_B0SY+nQ@mail.gmail.com>
	<CAK8P3a2F5Q0PEUR-0D287GkWHGpv3b6p65o95vdDhkWWX1rEWw@mail.gmail.com>
	<20180907205607.GZ5098@thunk.org>
In-Reply-To: <20180907205607.GZ5098@thunk.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 8 Sep 2018 10:15:01 +0200
Message-ID: <CAMuHMdUkqSfhUqgzkxPwG6jAofLrsuwvTZdWk_trmP5_jrWDCA@mail.gmail.com>
To: Theodore Tso <tytso@mit.edu>
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

Hi Ted,

On Fri, Sep 7, 2018 at 10:56 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
> On Fri, Sep 07, 2018 at 10:30:04PM +0200, Arnd Bergmann wrote:
> > I suspect that a lot of the cases that want NUL-padding also don't
> > want NUL-termination: when you store a string on disk in a fixed-length
> > record or transfer it over the network, you don't want to leak stack
> > data to the medium, but you also don't need the terminating character
> > because you know the maximum length already.
> >
> > strncpy() does exactly the right thing for that case, it's just that
> > this pattern is now a corner case, and gcc tends to flag such
> > usage with a warning about missing termination (unless you
> > use __nonstring) but doesn't flag the more common usage when
> > it looks correct.
>
> Yeah, the case I have is when I'm copying from a NUL-terminated string
> into a fixed char array.  So if we had a function called
> "copy_string_to_char_array" (we'll figure out a better name later)
> which takes a source, destination, and size parameter, and which does
> the functional equivalent of:
>
>         memset(dest, 0, size);

Why the memset()? strncpy() pads the destination with zeroes, so it
is not needed. This is basically the major reason to use strncpy().

>         strncpy(src, dest, size);

Oh, you're copying in the wrong direction ;-)

> ... we could do something that's more efficient than the above, and
> does exactly what I'm looking for in this case.
>
> Of course, there could be other corner cases where strncpy() is
> justified; this is just the use case I care about.  :-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
