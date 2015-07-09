Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2DCAFABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 20:50:53 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A2A7E11B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 20:50:52 +0000 (UTC)
Date: Thu, 9 Jul 2015 13:50:49 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20150709205049.GB5154@roeck-us.net>
References: <1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7> <20150709201315.GF9417@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709201315.GF9417@thunk.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org, jic23@jic23.retrosnub.co.uk
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 09, 2015 at 04:13:15PM -0400, Theodore Ts'o wrote:
> No matter what we ask people to type, the system can be gamed so long
> as we (a) use automated systems, and (b) we're transparent what the
> automated system uses as a signal about what's a valid review versus a
> garbage review.  This is basically the same problem that Google has
> when trying to deal with SEO folks who are trying to game the search
> algorithm, and it's not really a soluble problem unless you have a lot
> of people constantly working on refining the system and adjusting in
> response to humans who are trying to attack the system.
> 
> And if there are companies who are using reviews, or signed-off-by
> counts as a basis of performance reviews, humans *will* be
> incentivized to game the system, regardless of what the kernel summit
> program committee might be doing to use these systems.
> 
While this may be correct in some circumstances, there are also
companies which do just the opposite, especially when it comes
to reviews. At least for my part I still have to encounter a
company where "provides excellent and thorough code reviews"
can be found as positive statement in a performance review.

Earlier it was discussed how to improve the recognition of reviewers.
Your comments seems to suggest the opposite, and may actually discourage
reviewers. Why should I review Linux kernel code if that is seen
by some as me trying to "game" the system ?

I used to submit some more or less random cleanup patches into various
areas of the kernel, just for fun, because I liked doing it, and because
I needed some distraction. I stopped doing it after I realized that this
may be seen as "gaming the system". Nowadays I only submit such random
patches to fix build errors or real bugs. Would I continue to do that
if I get accused of trying to game the system ? Probably not.

I am not much if at all concerned with people gaming the system
to improve their standing, whereever that may be. I am much more
concerned that we may drive people off by accusing them to just
submit patches or reviews to game the system. At the end this is our
loss, not theirs. If their work results in better code, who cares
what their motivation might be ? And who are we to judge their
motivation ?

> (Although I will say there is one person who I've consistently
> downgraded *because* it's obvious s/he has been sending lots of
> trivial patches, and while that person may (or may not) have changed,
> it's still human nature that I assume that this person's scores are
> inflated.  And this is true of whoever sends huge number of checkpatch
> or coccinelle generated or inspired patches.  So people should be
> aware that attempts to game the system can backfire, when people start
> imposing informal "manual penalties" to their evaluation of that
> particular person.  Which is exactly what happens in the Search Engine
> Optimization world, by the way....)
> 
That may be true for some people, but at the same time I think statements
like the above might discourage people who just like cleaning up code for
fun. There are several of those working on cleaning up the Linux kernel,
and I truly appreciate their efforts.

Guenter
