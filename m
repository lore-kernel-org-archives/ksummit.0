Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B21571
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 00:19:57 +0000 (UTC)
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F2EF71A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 00:19:56 +0000 (UTC)
Received: by mail-oi0-f65.google.com with SMTP id e80so8082580oig.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 17:19:56 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20160826235853.GA6898@jra3>
References: <20160826193331.GA29084@jra3>
	<CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	<20160826224213.GA1181@jra3>
	<20160826230236.yky53kd5k4632ftd@thunk.org>
	<20160826235853.GA6898@jra3>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 26 Aug 2016 17:19:55 -0700
Message-ID: <CA+55aFys2c7ts_qoojZANfk2PmPqwOSuN3j1L-Eb_75NYZOP_A@mail.gmail.com>
To: Jeremy Allison <jra@samba.org>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 26, 2016 at 4:58 PM, Jeremy Allison <jra@samba.org> wrote:
>
> Can you describe the conditions you personally would feel justify
> filing a lawsuit over GPL non-compliance ?

You asked Ted, but I'll answer for one of the conditions for me: that
it is not some gray area. It has to be a pretty damn clear violation.

Quite frankly, I've seen a lot of people be confused about what the
GPLv2 actually says over the years. The most common confusion is the
whole thing about "linking". It gets mentioned a lot.

Not only is "linking" not something that has any legal meaning, but
the GPLv2 doesn't even mention it.  Yet people _continually_ talk
about linking.

I think the confusion actually comes from the FSF itself, and the
original LGPL discussions, where the FSF at some point tried to
convince people that linking against a GPL library somehow meant that
the end result was a "derived work" in a very different way than "mere
aggregation". It comes from some GPL maximalist argument, and it's
where the whole LGPL came from, after all.

So a *lot* of people think that "linking" means that the GPLv2 is
automatically in effect.

But what the license says - and more importantly, what copyright law
itself actually is all about - is not linking, but "derived work".

And there's a _lot_ of gray areas there, and no, technical measures
does not make something derived or not.

In the kernel, we have tried to kind of clarify our thinking with the
whole module interface, and the EXPORT_SYMBOL_GPL() distinction - the
argument being one of both intent (which does have some legal weight,
although the key word there is "some") and just to clarify that some
parts are so clearly "internal Linux implementation" that if you need
them, you're clearly not an independent module.

But everybody should know that that is not necessarily black and white
either. Are GPL'd shim modules that use that EXPORT_SYMBOL_GPL() and
thjen export something else (non-GPL'd) that uses them legal? They
certainly fail the _smell_ test. A technical trick doesn't really have
any legal meaning. If I were a judge (and I'm not, not even a lawyer),
I'd certainly frown on it, but I might not take the initial
EXPORT_SYMBOL_GPL() distinction all that seriously _either_.

Anyway, end result is that there's a lot of very murky "what is
actually a derived work" issues.

I'd not be interested in ever having a lawsuit to "clarify" such an
issue. I don't think it would really clarify anything anyway (it will
just set one boundary in one case for one specific thing).

So it has to be a pretty damn obvious violation.

We should not be another crazy Oracle. Those guys are just looking
like morons with their crazy legal theories. And I'm not saying that
just because they keep losing.

And quite frankly, I've seen some crazy legal theories from the people
who want to maximize the reach of the GPL. Things that would literally
depend on the jury and judge not having a clue.

                  Linus
