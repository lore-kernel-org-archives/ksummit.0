Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6BEF6596
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Aug 2017 00:54:16 +0000 (UTC)
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5686A15C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Aug 2017 00:54:16 +0000 (UTC)
Received: by mail-oi0-f65.google.com with SMTP id s21so10823477oie.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 17:54:16 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CALCETrWrBpxJYssmcHJC17hjKnkFy+S6mA18PmHpCwwbTSruyw@mail.gmail.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
	<CA+55aFz5NNCE6JMHfoqKtxAFSPBKkGvaDQQ+bqMzySYr--an-w@mail.gmail.com>
	<878tiqr5eb.fsf@notabene.neil.brown.name>
	<CA+55aFx0__GOf1BbM7w8K9A4mMJh8wGhsDK7J2MieHyBaX_2cQ@mail.gmail.com>
	<87zib6pm5s.fsf@notabene.neil.brown.name>
	<CA+55aFxFh8K_HxXEDXGizCj097u7VE8NZB8LpAVEdA2aSYgHHg@mail.gmail.com>
	<87o9riok6r.fsf@notabene.neil.brown.name>
	<CA+55aFw8UgEZDcHHEUwJNg-i6QcV1tCBFDbL5pmQ5qXAo3UH6w@mail.gmail.com>
	<CA+55aFy49_ZxqtrEwQReceuYnWw-=22T9bZ3HGdcnWj5NQQwXA@mail.gmail.com>
	<CALCETrWrBpxJYssmcHJC17hjKnkFy+S6mA18PmHpCwwbTSruyw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 14 Aug 2017 17:54:15 -0700
Message-ID: <CA+55aFzRODv17CVeX8YTuj1wWDjenUKTC1Rw00RrGR87QDrVWQ@mail.gmail.com>
To: Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 14, 2017 at 4:23 PM, Andy Lutomirski <luto@kernel.org> wrote:
>
> What I was trying to get at with this thread was: is there a way that
> we can enable a new feature for testing in a way that it *can't* get
> used by real programs that expect stability?

Honestly, I can't think of a case where that would actually have been an issue.

Make a config option out of it, and mark it expert, and maybe that would do it.

But realistically, that just doesn't make any sense in reality -
because in reality, user programs get written not on top of the
development kernel, but on vendor kernels.

So the scenario you describe simply never happens.

The _reverse_ scenario does happen: vendors who do their own kernel
patches that introduce something their customers need, and people
start depending on those semantics.

Android may be the case where that happens today, but it's not the
only case. We've merged code that was in use by various Linux distro
people and where there already was an active user base of the new ABI.

So I think your issue is pretty much theoretical, and _would_ be easy
to fix with some kind of "this option is only enabled for rc kernels,
and gets disabled on release", but such an option just doesn't make
sense because that's not how development actually happens.

               Linus
