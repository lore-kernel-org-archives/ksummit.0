Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19C08AC9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 18:26:08 +0000 (UTC)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com
	[209.85.217.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 36B5582A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 18:26:03 +0000 (UTC)
Received: by mail-vs1-f42.google.com with SMTP id v10so2713784vsv.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 10:26:03 -0800 (PST)
MIME-Version: 1.0
References: <1541721842.3774.2.camel@HansenPartnership.com>
	<35402D8E-0294-4E34-BE8B-22BCBC20BF66@fb.com>
	<41b03a5b-1af4-0a87-2736-016f79d4d1ca@kernel.org>
	<20181109190305.GD21078@thunk.org>
In-Reply-To: <20181109190305.GD21078@thunk.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Nov 2018 19:25:49 +0100
Message-ID: <CAMuHMdVeF+gxVerx2NkKh+7+-ti2qDuahbBquT1NcEZLJVjAdA@mail.gmail.com>
To: Theodore Tso <tytso@mit.edu>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Tech-board-discuss@lists.linux-foundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] TAB non-nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Nov 9, 2018 at 8:03 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
> On Fri, Nov 09, 2018 at 10:52:55AM -0700, Shuah Khan wrote:
> > >> The third mistake was dumping the fully formed CoC and a later update
> > >> into the tree with little to no community input
> >
> > It is unfortunate it had to start that way. I also understand at times it
> > might be necessary to do so based on my experience with the Linux Kernel
> > Community Enforcement Statement process. What should TAB do as a body if
> > it needs to take action without an option to initiate an open discussion?
>
> As Chris mentioned, there was a large amount of community input on the
> update.  It just didn't happen in an open fashion.  One of the
> challenges with e-mail discussion is that it can end up get dominated
> by a small number of people who send a large number of messages.  In
> an in-person meeting, a good moderator can say, "Alexis, you've been
> talking a lot; perhaps we should hear from some other people who have
> been quiet.  Drew, what do you think?"  It's a lot harder to do this
> on a mailing list.
>
> The second challenge is that we were getting trolled by people who
> were *not* members of the kernel development community.  I was able to
> track down one such troll to their social media presence on gab.ai.
> (Yeah, that same lovely "free speech absolutists' site, for when
> Twitter considers you too toxic" which got deplatformed after the
> shooting at the Tree of Life Synagogue in Pittsburgh.)
>
> So what was done with the update to the CoC was that a proposed set of
> changes was sent out to the top 200 or so contributors to the kernel,
> by git statistics over the past year, asking for their comments and
> their sign-offs.  So there *was* community input, and that input did
> result in changes to the CoC update.

Good to know this did result in changes. But probably only for the first
version?
I hadn't checked before, but the actual patches that went in are exactly
the same as the patches I acked.

Nevertheless, if one is asked through a private channel if one wants to ack
some patches that have already 10+ acks, there are basically 3 options
(excl. forcing a public disclosure):

  1. Ack the patch, if you (mostly) agree with it,
  2. Nak the patch, which probably won't have any effect, due to the private
     channel,
  3. Ask for changes to be made, which may be complicated, as the
     version you received already has several acks that may become
     invalid, and it's a private channel. Hence this may also don't have
     any effect.

So even if one considers option 3, depending on the amount and severity
of the changes one has in mind, option 1 might be the better option.
There are still opportunities for improvement later, quoting the second
patch "[...] can be seen as a bug, though; such bugs will be fixed more
quickly if any interested parties submit patches to that effect."...

However, the latest message seems to be "don't change the CoC anymore",
and no more patches have been (re)sent...
(Yes, I'm "guilty" here too, perhaps everyone is waiting for someone else
to (re)submit first?)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
