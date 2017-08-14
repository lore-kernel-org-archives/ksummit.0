Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA48D4A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 23:23:53 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B32DF14B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 23:23:53 +0000 (UTC)
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4725723693
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 23:23:53 +0000 (UTC)
Received: by mail-ua0-f182.google.com with SMTP id k43so42296011uaf.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 16:23:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFy49_ZxqtrEwQReceuYnWw-=22T9bZ3HGdcnWj5NQQwXA@mail.gmail.com>
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
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 14 Aug 2017 16:23:31 -0700
Message-ID: <CALCETrWrBpxJYssmcHJC17hjKnkFy+S6mA18PmHpCwwbTSruyw@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 14, 2017 at 11:40 AM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Mon, Aug 14, 2017 at 11:34 AM, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
>>
>> If you worry about how good and stable your ABI is, and aren't willing
>> to support that ABI forever, don't send the patch. Seriously. Just
>> don't.
>>
>> This whole discussion is pointless.
>
> To clarify, and to strengthen the point: the regression has always
> been about actual breakage. You can change semantics all you want, if
> nobody ever notices.
>
> But if somebody does notice, and something breaks, it gets fixed.
>
> That's the rule. No exceptions. If you aren't willing to fix the bugs
> you introduce, you shouldn't be working on the kernel.

What I was trying to get at with this thread was: is there a way that
we can enable a new feature for testing in a way that it *can't* get
used by real programs that expect stability?  There are certainly
nasty solutions.  For example, cgroup v2 cpu controller support has
been available as an out-of-tree patch for many cycles.  It's finally
being hashed out in a way that's incompatible with programs that
target that patch, but no one is going say "screw you, 4.14 broke my
setup" because that setup didn't work on any earlier kernel either.

I'm wondering if we can maybe make this more systematic and less
nasty.  For example, what if we could have a way to enable features
such that they work in -rc kernels (with big warnings!) but do *not*
work in released kernels?  Then people who want to develop against
them would have to explicitly run -rc kernels, which would make it
obvious that nothing's stable and might even get more -rc testers to
boot.

--Andy
