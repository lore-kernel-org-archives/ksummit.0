Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9F61FA04
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 20:14:01 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2B26012C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 20:14:00 +0000 (UTC)
Date: Thu, 9 Jul 2015 16:13:15 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Darren Hart <dvhart@infradead.org>
Message-ID: <20150709201315.GF9417@thunk.org>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709194734.GG9169@vmdeb7>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
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

No matter what we ask people to type, the system can be gamed so long
as we (a) use automated systems, and (b) we're transparent what the
automated system uses as a signal about what's a valid review versus a
garbage review.  This is basically the same problem that Google has
when trying to deal with SEO folks who are trying to game the search
algorithm, and it's not really a soluble problem unless you have a lot
of people constantly working on refining the system and adjusting in
response to humans who are trying to attack the system.

And if there are companies who are using reviews, or signed-off-by
counts as a basis of performance reviews, humans *will* be
incentivized to game the system, regardless of what the kernel summit
program committee might be doing to use these systems.

(Although I will say there is one person who I've consistently
downgraded *because* it's obvious s/he has been sending lots of
trivial patches, and while that person may (or may not) have changed,
it's still human nature that I assume that this person's scores are
inflated.  And this is true of whoever sends huge number of checkpatch
or coccinelle generated or inspired patches.  So people should be
aware that attempts to game the system can backfire, when people start
imposing informal "manual penalties" to their evaluation of that
particular person.  Which is exactly what happens in the Search Engine
Optimization world, by the way....)

							- Ted
