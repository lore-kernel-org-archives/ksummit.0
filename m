Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B12E071
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 18:49:10 +0000 (UTC)
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31E8B1A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 18:49:10 +0000 (UTC)
Received: by mail-oi0-f41.google.com with SMTP id j203so62384565oih.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 11:49:10 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <1472492553.32433.108.camel@redhat.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<20160827183550.GB1601@katana> <20160828074706.GB1370@kroah.com>
	<1472492553.32433.108.camel@redhat.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 29 Aug 2016 11:49:08 -0700
Message-ID: <CA+55aFz98VJR8RNv2=zuV0y4Ke_EmCyAR71eMNdq5p6cYm4OAw@mail.gmail.com>
To: Rik van Riel <riel@redhat.com>
Content-Type: text/plain; charset=UTF-8
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 29, 2016 at 10:42 AM, Rik van Riel <riel@redhat.com> wrote:
>
> Companies like IBM and SGI started participating in Linux because
> they knew no competitor would run off with their code, improve it
> slightly, and offer a proprietary product for sale based it.

Absolutely.

Right now we're in the situation that a lot of companies are very
suspicious of the GPL, I do agree with Bradley on that.

But we put the blame on very different things - I at least partly very
much do blame the "culture" that goes with the GPL.  Corporate users
do see the hostility towards commercial use that we have in some
quarters.

We should be much more vocal about how it protects even companies from
people taking advantage of their code. Yes, they'll always want to
have their "value add" on top, but we should push the GPL as a great
model for core infrastructure everywhere.

We should strive to make companies *like* the GPL, and encourage
exactly the kinds of things you mention.

What happens instead is the reverse.

For example, I just got a note from a person on the dronecode project,
where the GPL is being actively pushed away in favor of the
BSD-licensed code.

Quite frankly, when things like that keep happening, all the talk
about "GPL enforcement" is almost entirely pointless.  Nobody should
kid themselves - if it turns out to be almost entirely about the Linux
kernel, we should call it that.

And I really do blame the hardliner GPL copyleft people.

For example, I'd claim that one big reason LLVM has been so successful
has been entirely *technical* - but a techjnical issue pushed for by
strong copyleft.

One of the biggest advantages of LLVM has been the IR, which is
obviously one of the really core ideas of LLVM - that's where the
whole *name* of LLVM comes from: the generic IR concept, and the
"virtual machine" it is for..

Was having a generic and well-documented IR something really
revolutionary? No. People have been talking about it for years.
Including very much asking for it from gcc. If you write plugins, if
you do instrumentation, if you do any number of things (academic
people have lots of things that they want to interface with the
compiler), you really want to work with a good IR to get access to the
compiler without having to actually build and modify the compiler
itself.

In fact, I myself started "sparse" exactly because gcc was such a pain
to interface with.

So it's a very basic technical thing.

Gcc never had a good externally visible IR. Of course, part of it was
that gcc historically used RTL internally, which is just a much
nastier format than SSA, but I remember people asking for an
architecture-neutral IR long long ago (yes, I used to follow gcc
fairly closely), and a large part of it was also a _political_
decision for strong copyleft reasons. rms did not want an open IR,
because rms did not want those external plugins.

Yes, yes, gcc has a plugin model now. Competition happened, llvm was
getting quite powerful, there were tons of reasons why plugins do
exist.  But I think a lot of people turned to llvm simply because of
technical issues that at least partly had a historical political
strong copyleft source.

So I think a hard-liner attitude ends up really hurting projects
technically. If you want to use the license as a "weapon" to expand
your reach, it can and does back-fire. There were obviously other
reasons for llvm too, so I'm not claiming things like these are the
_only_ background, not at all.

End result: we want to show how the GPL can help make better
technology, and aim to have companies feel like the GPL protects
*them* too, and their efforts and assets.

I don't think that kind of awareness is very common. Instead, it's
seen as a fight.

                Linus
