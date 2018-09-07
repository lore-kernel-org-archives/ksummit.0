Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9583EF8F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 10:40:38 +0000 (UTC)
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
	[209.85.222.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0ED227A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 10:40:37 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id f4-v6so11545238uao.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 03:40:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
In-Reply-To: <20180907091842.6c55bd9a@canb.auug.org.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Sep 2018 12:40:24 +0200
Message-ID: <CAMuHMdW2ARY6hJi7KDYN_VyYTRT2YRUPzkVfAhBrVthrnV4Q1w@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
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

On Fri, Sep 7, 2018 at 1:19 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> On Thu, 6 Sep 2018 11:24:11 -0700 Kees Cook <keescook@chromium.org> wrote:
> > If there was an agreement by all maintainers that deprecated
> > functions/patterns should not be added, and we documented the
> > deprecation somewhere like Documentation/process/deprecated.rst, then
> > we could make the declaration that if such functions got added (it's
> > easy to mechanically check for them), it would be the responsibility
> > of the author and maintainer chain to see that it got fixed before the
> > release is cut. We already have this for things like "breaks the x86
> > allmodconfig build" or similar. The checking would be manual, and the
> > enforcement would be by agreement, but it'd be better than the kind of
> > "please don't do this" hand-waving we've had in the past.
>
> I could do this in linux-next, of course, the same way I check for
> missing signed-off-bys.  All I would need is the list of deprecated
> things.

The sooner it is detected, the better.
So that means, in order of decreasing agility:
  1. git commit hook:
       - Needs installation of the hook everywere,
       - Anyone still not using git?
  2. checkpatch:
     - All patch authors should run checkpatch,
     - All maintainers should, too.
  3. coccinelle script et al run by bots:
     - Needs rework when detected (list bot), or fixup (already in next).

Any other options?

So checkpatch looks like the best option to me.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
