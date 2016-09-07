Return-Path: <viro@ftp.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 949D7A92
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 05:10:43 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2FA0F190
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 05:10:42 +0000 (UTC)
Date: Wed, 7 Sep 2016 06:10:39 +0100
From: Al Viro <viro@ZenIV.linux.org.uk>
To: Alexey Dobriyan <adobriyan@gmail.com>
Message-ID: <20160907051039.GG2356@ZenIV.linux.org.uk>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906175343.2f0d9135@gandalf.local.home>
	<20160906224100.GA17212@p183.telecom.by>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160906224100.GA17212@p183.telecom.by>
Sender: Al Viro <viro@ftp.linux.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
 stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 07, 2016 at 01:41:00AM +0300, Alexey Dobriyan wrote:

> Gentlemen's agreement then:
> * kernel developers don't break tracepoints on purpose and maintain
>   compatibility in simple cases (long => int, deleted field, etc),
> * real, justified tracepoint breakage doesn't count.

No go.  Scenario:

1) piss-poor API is added in form of tracehook.  It exports some information
that can be used to derive something genuinely interesting.  Most of the
time.  Corner cases are unsolvable, even though it might be possible to
provide the interesting part sanely.  Just not in that form.  Moreover,
faking the bits used to derive that information so that existing userland
logics would yield the right result is bloody hard and restricts what we
can do kernel-side, even though the real thing userland wants would not have
such problems.

2) userland code of matching quality is added to a certain daemon.  Tons
of boxen become dependent on that thing _in_ _that_ _shitty_ _form_.

3) you notice the problems kernel-side and make changes that break the damn
thing.

4) daemon authors come complaining.  You refer them to the "gentlemen's
agreement".  They refer you to the Figure 1 and inform you that if you didn't
want that API to be used, you shouldn't have allowed it into the kernel.
Correctly on both counts, at that.  Incidentally, that agreement of yours is
not something they signed upon, and what's that "gentleman" thing anyway?
Linus informs you that you are a particularly obtuse idiot and haven't you
learnt that WE DON'T BREAK USERLAND CODE, DAMNIT by now?

5) you are stuck keeping that turd, no matter the cost.  Adding a replacement
API (sanely designed this time) that would allow to get the same information
is welcome, but it doesn't relieve you from keeping both at least for 5-6
years.

Tracepoints are easy to add for quick debugging/instrumentation/etc. and
that's what makes them useful; OTOH, for a stable API you want more time
going into design and review, or you'll pay a _lot_ more maintaining it.
The thing is, API that has started with no intention to turn it into stable one
might end up become just that.  Your agreement is basically that tracepoints
should never become stable APIs, but that train has left years ago.

One way to deal with that is to refuse to accept any tracepoints in the area
you maintain.  Another might be to differentiate between stable and unstable
ones, with much more review for the former and a very explicit "if you
ever want to use that for more than one kernel version, you get to keep it
working yourself" about the latter.  But that only works if it's visible to
userland *and* Linus agrees that anything of that sort will not get the
normal stable API treatment, i.e. "real code uses it, you get to keep it
working".
