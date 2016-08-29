Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F42A25A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 21:59:33 +0000 (UTC)
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D1C52233
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 21:59:31 +0000 (UTC)
Received: by mail-oi0-f66.google.com with SMTP id t127so106959oie.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 14:59:31 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20160829213128.fr3enaeso6r5s2ki@thunk.org>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<20160827183550.GB1601@katana> <20160828074706.GB1370@kroah.com>
	<1472492553.32433.108.camel@redhat.com>
	<20160829213128.fr3enaeso6r5s2ki@thunk.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 29 Aug 2016 14:59:29 -0700
Message-ID: <CA+55aFx+5C-1TdS=Kcu4jC9ZAUDXF-G2On4VkdsLN7hdnORk+w@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
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

On Mon, Aug 29, 2016 at 2:31 PM, Theodore Ts'o <tytso@mit.edu> wrote:
>
> So I don't believe that compliance efforts are necessarily needed in
> order for companies to feel comfortable donating large code bases such
> as XFS or JFS.

No, I don't think that was the argument (it certainly wasn't mine).

No, *my* argument is that we've done a great job of talking about how
open source helps companies cooperate and generate better technology.

People actually *get* that. Just look around at how much open source
is seen as the future of technology, and every single tech company is
working with it.

But then if you look at what companies are actually doing, many of
them still actively shun the GPL.

Why?

Bradley claims that it's because companies are selfish, and that's
certainly true, but there's nothing wrong with that.

What's very VERY wrong is to think that "selfish" means "anti-GPL".
That's crazy talk. And *that* is why we should show those XFS/JFS/RCU
examples and say: "No, GPL actually works very well and protects your
selfish interests, and means that others can't just steal your
wonderful technology".

So Bradley is literally spouting the *exact* wrong argument. He's
basically saying "companies are selfish, so the GPL doesn't work for
them, so we need to force the issue".

That's COMPLETE BULLSHIT.

But *of*course* if you say that to companies, when they want to pick a
project, they have heard that insane argument, and they go "ok, let's
not pick the GPL, because that's clearly bad for us - just listen to
this Bradley guy".

So I think it's because the people who talk most vocally about the GPL
and the copyelft and about how it needs to be enforced are actively
scaring companies away.

Look instead at the other side: I personally try to be fairly vocal
about my support of the GPL, and talk about how it's a positive thing
and really helped Linux succeed, and I do so because I think it's very
true. I literally try to point out how it fosters community and
protects companies and individuals. I did it on stage just *days* ago,
for chissake!

Which is actually why I was so completely *livid* when Bradley goes
out and does his usual crazy FSF nonsense thing.

I obviously do *not* believe in what the FSF and GPL zealots say. And
I do *not* believe for a moment that it comes across as positive for
most companies.

In fact, just looking at the history, scratch that "companies" part.
The GPL zealot message does not come across as a positive for most
*individuals*.

Remember all the BSD-vs-GPL wars? The BSD people _detested_ the GPL.
They absolutely detested rms. And with rather good reason, I might
say.

The FSF "message" has always been negative, and has always been
something a lot of people react badly to.  You had some very respected
BSD people who had done a *ton* of good things in open source who
absolutely refused to have anything to do with the GPL. These were
important people in teh community, who made big advances in open
source. And they would pick any other license than the GPL.

So it really isn't even "people like Bradley scare companies away from
the GPL".  They've scared away really good individuals that have spent
a lot of effort on open source code.

Does nobody else remember those BSD-vs-GPL flame wars? With people
like Larry Wall etc were almost demonized by the FSF?

This is why I so hated seeing Bradley channeling the FSF and rms when
I watched his LinuxCon.Au talk. It was the bad old FSF message about
how free software is a moral choice, and how you should fight
companies and do free software in your free time and try to take over
the world with copyright license reasons. It's only slightly softened
over the years.

I remember that message from when I started. I thought it was bullshit
back then, I think it's even more bullshit now.

The way you take over the world is by creating the best technology out
there, not with trying to extend the reach of the copyright and
"coercing" users into it.

The FSF and rms never got that. They didn't see the GPL as a way to
generate better software, but as a way to further their agenda.

And that's still the message I see from Bradley and some people.

So here's my message to the "copyleft maximalist" crowd:

  "Guys, you really ARE the reason the GPL is failing, and people are
starting new projects with other licenses. Because they care about
better technology, not about your agenda. And you're making the GPL
look bad"

Please stop. And don't use Linux as a tool in your "community work".
If your aim is to trick people into using your license, rather than
creating the best possible technology, you're no community of mine.

The point of the GPL is to create the best possible technology by
making people *want* to cooperate.

                 Linus
