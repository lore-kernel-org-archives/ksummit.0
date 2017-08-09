Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2E97DBF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Aug 2017 20:21:06 +0000 (UTC)
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 172BC443
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Aug 2017 20:21:06 +0000 (UTC)
Received: by mail-oi0-f66.google.com with SMTP id q70so6731433oic.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 09 Aug 2017 13:21:05 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <87efslsj7w.fsf@notabene.neil.brown.name>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 9 Aug 2017 13:21:04 -0700
Message-ID: <CA+55aFz5NNCE6JMHfoqKtxAFSPBKkGvaDQQ+bqMzySYr--an-w@mail.gmail.com>
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

On Tue, Aug 8, 2017 at 5:00 PM, NeilBrown <neilb@suse.com> wrote:
>
> I think this is primarily a social/communication issue.  We need to know
> what is expected and what can be trusted.  We need clear rules that
> everyone knows and that work for everyone.  Currently we have (fairly)
> clear rules that work fairly well in many cases, but can be problematic.
>
> The rules, as you outline, are that users should not experience
> regressions from one released kernel to a subsequent released kernel.
> So people working on -rc kernels can expect to experience regressions.
> Also kernel devs are free to create theoretical regressions as long an
> no-one experiences them.
>
> My strawman is to suggest that we relax this.

No.

The whole "no regressions" is a hard rule, and it will remain so.
It's pretty much the only really hard rule we have, and I will
continue to insist on it.

There are no loopholes. No "but it's been only one release". No, no,
no. The whole point is that users are supposed to be able to *trust*
the kernel. If we do something, we keep on doing it.

And if it makes it harder to add new user-visible interfaces, then
that's a *good* thing.

                   Linus
