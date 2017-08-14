Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6E39072A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 18:40:45 +0000 (UTC)
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 580A1196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 18:40:45 +0000 (UTC)
Received: by mail-oi0-f68.google.com with SMTP id s21so10063325oie.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 11:40:45 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CA+55aFw8UgEZDcHHEUwJNg-i6QcV1tCBFDbL5pmQ5qXAo3UH6w@mail.gmail.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
	<CA+55aFz5NNCE6JMHfoqKtxAFSPBKkGvaDQQ+bqMzySYr--an-w@mail.gmail.com>
	<878tiqr5eb.fsf@notabene.neil.brown.name>
	<CA+55aFx0__GOf1BbM7w8K9A4mMJh8wGhsDK7J2MieHyBaX_2cQ@mail.gmail.com>
	<87zib6pm5s.fsf@notabene.neil.brown.name>
	<CA+55aFxFh8K_HxXEDXGizCj097u7VE8NZB8LpAVEdA2aSYgHHg@mail.gmail.com>
	<87o9riok6r.fsf@notabene.neil.brown.name>
	<CA+55aFw8UgEZDcHHEUwJNg-i6QcV1tCBFDbL5pmQ5qXAo3UH6w@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 14 Aug 2017 11:40:44 -0700
Message-ID: <CA+55aFy49_ZxqtrEwQReceuYnWw-=22T9bZ3HGdcnWj5NQQwXA@mail.gmail.com>
To: NeilBrown <neilb@suse.com>
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

On Mon, Aug 14, 2017 at 11:34 AM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> If you worry about how good and stable your ABI is, and aren't willing
> to support that ABI forever, don't send the patch. Seriously. Just
> don't.
>
> This whole discussion is pointless.

To clarify, and to strengthen the point: the regression has always
been about actual breakage. You can change semantics all you want, if
nobody ever notices.

But if somebody does notice, and something breaks, it gets fixed.

That's the rule. No exceptions. If you aren't willing to fix the bugs
you introduce, you shouldn't be working on the kernel.

It's that simple. Find some other project to mess up - there are tons
of sh*t projects out there that think that changing ABI's is a good
idea and should be done regularly.

But the kernel cares about regressions.

Christ, this is not a new rule.

               Linus
