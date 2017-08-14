Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E745971F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 18:34:42 +0000 (UTC)
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFDE3142
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 18:34:42 +0000 (UTC)
Received: by mail-oi0-f66.google.com with SMTP id e124so10051735oig.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 Aug 2017 11:34:42 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <87o9riok6r.fsf@notabene.neil.brown.name>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
	<CA+55aFz5NNCE6JMHfoqKtxAFSPBKkGvaDQQ+bqMzySYr--an-w@mail.gmail.com>
	<878tiqr5eb.fsf@notabene.neil.brown.name>
	<CA+55aFx0__GOf1BbM7w8K9A4mMJh8wGhsDK7J2MieHyBaX_2cQ@mail.gmail.com>
	<87zib6pm5s.fsf@notabene.neil.brown.name>
	<CA+55aFxFh8K_HxXEDXGizCj097u7VE8NZB8LpAVEdA2aSYgHHg@mail.gmail.com>
	<87o9riok6r.fsf@notabene.neil.brown.name>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 14 Aug 2017 11:34:41 -0700
Message-ID: <CA+55aFw8UgEZDcHHEUwJNg-i6QcV1tCBFDbL5pmQ5qXAo3UH6w@mail.gmail.com>
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

On Sun, Aug 13, 2017 at 9:19 PM, NeilBrown <neilb@suse.com> wrote:
>
> I think the issue is that some of us would like a clearer statement on
> what values of "some point" we will honor, and which values are
> crazy-talk.

What?

I thought I was *VERY* clear. It has *ALWAYS* been very clear.

There is absolutely *no* cut-off. If a feature has been in a released
kernel, we support it. End of story.

Stop fishing for "some point". It doesn't exist. It never has. And it
never will.

If you worry about how good and stable your ABI is, and aren't willing
to support that ABI forever, don't send the patch. Seriously. Just
don't.

This whole discussion is pointless.

                      Linus
