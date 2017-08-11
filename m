Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8045749F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 Aug 2017 06:39:42 +0000 (UTC)
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6945C14B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 Aug 2017 06:39:42 +0000 (UTC)
Received: by mail-oi0-f47.google.com with SMTP id x3so26239839oia.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 Aug 2017 23:39:42 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <878tiqr5eb.fsf@notabene.neil.brown.name>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
	<CA+55aFz5NNCE6JMHfoqKtxAFSPBKkGvaDQQ+bqMzySYr--an-w@mail.gmail.com>
	<878tiqr5eb.fsf@notabene.neil.brown.name>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 10 Aug 2017 23:39:41 -0700
Message-ID: <CA+55aFx0__GOf1BbM7w8K9A4mMJh8wGhsDK7J2MieHyBaX_2cQ@mail.gmail.com>
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

On Thu, Aug 10, 2017 at 11:21 PM, NeilBrown <neilb@suse.com> wrote:
>
> With this pattern, people can still trust an X.Y kernel,

I do *NOT* want people to trust an X.Y kernel.

Quite the opposite.

I want people to realize that the version doesn't matter, and that
they should feel safe in upgrading. The X and the Y don't matter, and
they *MUST*NOT*MATTER*.

If they do, the process is completely and utterly broken.

So what people should be able to trust is that they can always upgrade.

Not the shit that I see *ALL* the time, where you upgrade something,
and it breaks.

And no, the excuse "but the API was new in X.Y, so it could change in
X.Y+1" does *not* hold water.

It very much violates that basic principle of trust and makes people
go "I don't want to upgrade, because it might break something I do".

                    Linus
