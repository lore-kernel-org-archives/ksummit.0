Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15182E69
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Sep 2018 16:43:13 +0000 (UTC)
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5746AF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Sep 2018 16:43:12 +0000 (UTC)
Received: by mail-it1-f180.google.com with SMTP id m9-v6so2705550ita.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Sep 2018 09:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <cf7638b9-c25d-d47e-f539-192a43268122@kernel.org>
	<alpine.LRH.2.21.1809250351090.21310@namei.org>
	<20180924181138.GA16086@tuxdriver.com>
	<CAOesGMi3rRZj-qJ03HbSctPVZybHoaapQnffhj5eP+w7RdKDRw@mail.gmail.com>
	<alpine.DEB.2.21.1809242310200.1398@nanos.tec.linutronix.de>
	<CAKMK7uFczn2KHrKEbUan-E1adXKs24LZFY3Re4UHsXyfjB6byw@mail.gmail.com>
	<CAOesGMjYT0pCtms8LeoKCWLXyEzRQ+=7AczWz07m0YpQyHBq9w@mail.gmail.com>
	<alpine.DEB.2.21.1809250837370.1398@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1809250837370.1398@nanos.tec.linutronix.de>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 25 Sep 2018 18:42:58 +0200
Message-ID: <CAKMK7uH7YMZ-3SHeJOwT=CVsOjHTMd97cGFf-e+3JCj8FOyQLA@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Cc: olof@lxom.net, ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Review - Code of Conduct: Let's
 revamp it.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 25, 2018 at 10:45 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> On Tue, 25 Sep 2018, Olof Johansson wrote:
> > Reaching out to the one who's misbehaving I see more as something
> > friends will do to each other, not what the community as such is
> > expected to do. I.e. if I enjoy having Thomas around (I do, but I'm
> > also looking forward to him not blowing up ever so often), it's worth
> > checking in to see if everything is OK and if there's anything I can
> > do to help. Not before someone has checked in with the person at the
> > receiving end, and I definitely would never expect that person to be
> > the one checking in with Thomas.
>
> Let me put that straight.
>
> Surely everyone has to work on himself and I'm not expecting that the
> person who got attacked reaches out to the one misbehaving. Obviously it
> has to be the other way round and the one who misbehaved needs to reach
> out.
>
> For me it's part of true excellence when the one who told me to stop it, or
> a third person, reaches out to me as well.  John Stultz did that to me some
> time ago, and I really appreciated it. It made a huge difference for me and
> talking to him about it surely made me reflect deeper and helped me to see
> where my own defense against my temper broke.

Fully agreed, having someone you can confide in and work through a
complicated situation together in private helps greatly in
understanding and improving long term. What really worried me here is
that we brought this up in the context of a code of conduct -
codifying the expectation that this should happen doesn't seem a good
idea to me. The cleanups-after-explosions I've helped with were
already tons of work, with typing a very carefully edited response in
public (don't want to make it accidentally worse) and then lots
chatting with recipients to make sure they're not running away.
Loading up even more is not something I want to force on anyway. It's
great though if it happens, maybe as some sort of informal peer
maintainers group, since that's how we improve as a community.

Aside on the carefully edited response letter, and why that one is so
hard to get right, and so much exhausting work to type: Showing
understanding for where someone is coming from is crucial, or your
mail won't be received. Doing that while still making it crystal clear
what's not acceptable, while not opening up into an endless argument,
or legitimizing the offending behaviour through the back door, is very
often a zero margin balancing act.

> There is a - not completely unjustified - fear in the wider community that
> the CoC could be turned into thought policing. Especially those who grew up
> in the eastern part of Europe or under any other form of repressive state,
> those who have second hand experience through relatives and friends and
> those have been exposed to that in some other context, are very sensitive
> to this and sentences like:
>
>  "- we crack down hard on anything that might drive away contributors."
>
> certainly do not make them more comfortable. Adding the unclarified
> provisions of the CoC to it doesn't help either.
>
> We're all human and it is part of human nature to fail. Repression does not
> make that go away. Quite the contrary.

Yeah this was a bit too much over the top. In practice it involves
lots and lots of me talking with people in private - I think I
explained a bunch of that in other, even earlier mails (the thread got
a bit long at that point, and my attempt at a summary fell somewhat
short). My empathy stops though when people blame others for the
consequences of their own actions and expect others to clean up the
mess they made. Not anywhere here on ksummit-discuss, but I did
unfortunately run into cases where that baseline understanding
necessary to work through a situation was entirely missing. If someone
is consistently refusing to entertain other people's vantage point
there's not much you can do that both puts a stop to it and doesn't
involve force of some sorts, like a temporary suspension. But it is,
and needs to be, a measure of last resort.

Cheers, Daniel
--
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
