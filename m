Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 430C498C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 Aug 2017 23:10:53 +0000 (UTC)
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2B3BC479
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 Aug 2017 23:10:53 +0000 (UTC)
Received: by mail-oi0-f65.google.com with SMTP id e124so4627467oig.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 Aug 2017 16:10:53 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <87zib6pm5s.fsf@notabene.neil.brown.name>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
	<CA+55aFz5NNCE6JMHfoqKtxAFSPBKkGvaDQQ+bqMzySYr--an-w@mail.gmail.com>
	<878tiqr5eb.fsf@notabene.neil.brown.name>
	<CA+55aFx0__GOf1BbM7w8K9A4mMJh8wGhsDK7J2MieHyBaX_2cQ@mail.gmail.com>
	<87zib6pm5s.fsf@notabene.neil.brown.name>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 11 Aug 2017 16:10:51 -0700
Message-ID: <CA+55aFxFh8K_HxXEDXGizCj097u7VE8NZB8LpAVEdA2aSYgHHg@mail.gmail.com>
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

On Fri, Aug 11, 2017 at 1:02 AM, NeilBrown <neilb@suse.com> wrote:
>
> What do you mean by "upgrade"?
> Can I upgrade from 3.15 to 3.16-rc1?  If not, why not?

Yes..

Of course, bugs happen, and then they get fixed.

But yes, even including things like -rc1 (or just "random untagged
kernel of the day") you should

 (a) feel safe in always upgrading to any higher version (I *hope* you
can always also downgrade to a lower kernel version, but obviously at
some point user space may start depending on newer features that
simply don't exist in older kernels).

 (b) also feel that if something breaks, it's a bug, and people will
take it seriously and not dismiss it with some crazy "N+1 version"
excuse.

There are some cases where we may not be able to avoid breakage: the
main two are "security issues" and "insanely old hardware".

And even for security issues, we try really really hard to avoid breakage.

And the key word in "insanely old hardware" is that "insanely" part.
At some point it just gets too hard to test (and sometimes the
hardware is too broken, like the original i386 non-working supervisor
page fault workarounds).

Now, it can get really interesting if somebody notices an ABI change
so late that others have started to depend on that ABI change. At that
point, it's a "damned if you do, damned if you don't". We've actually
been able to handle even that occasionally (by just adjusting behavior
automatically based on some pattern), but at some point it obviously
is impossible to fix both cases.

And then I say "if it took you three years to upgrade and notice a
behavioral change that nobody else noticed, it's no longer _our_
fault".

So there is _some_ onus on people actually testing and reporting these
things, but I can't off-hand actually remember any case of this really
being a major issue. So it's largely a theoretical thing.

                Linus
