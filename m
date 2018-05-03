Return-Path: <w@1wt.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DAF89A80
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 19:03:56 +0000 (UTC)
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 01FC0299
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 19:03:55 +0000 (UTC)
From: Willy Tarreau <w@1wt.eu>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180503190352.GB23467@1wt.eu>
References: <20180503000620.GA29205@thunk.org>
	<20180503144612.GJ18390@sasha-vm> <20180503145205.GD23311@1wt.eu>
	<20180503150104.GL18390@sasha-vm> <20180503160046.GH23311@1wt.eu>
	<20180503161452.GP18390@sasha-vm> <20180503163516.GJ23311@1wt.eu>
	<20180503172926.GQ18390@sasha-vm> <20180503175723.GA23467@1wt.eu>
	<20180503181234.GT18390@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180503181234.GT18390@sasha-vm>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Thu, 03 May 2018 19:03:57 -0000

On Thu, May 03, 2018 at 06:12:36PM +0000, Sasha Levin wrote:
> I'm also not trying to argue whether 7% is high or low, only that it's 3
> times as many bugs per line of code than what we get from the merge
> window.

Yes but seen differently that's 14 times less bugs than the ones properly
fixed by applying the process which produces these 7%. We can discuss
about ways to improve it, but please consider that it must not reduce
the number of correct fixes represented by the 93% remaining ones.

> Isn't the merge window supposed to be the "risky" part?

"risky" might not be the correct term. Each single line of code comes
with a risk. I'd say the "most risky" part. As I said, what I agree with
the fact that early fixes just before a release have more chances of
affecting users, which in my opinion is the real problem. Education can
help here.

> For example, how about extending the release cycle until the amount of
> fixes for regressions introduced in the current merge window drops under
> a certain thershold? (so go to -rc20 if we need to).

Never works. And Linus already explained it : you cannot stop the development
process. While you're waiting, development continues, and the next merge
window gets twice the number of commits, which causes more than twice the
amount of problems. I've also experienced it in haproxy many years ago. I
made the mistake of saying "I'm finishing this, only 6 months, and I release
1.5". Result: bugs coming in parallel to development stalling progress
forever and it took 4.5 years to release it, or 9 times the expected amount
of time. Now we release approximately on time, missing features go in the
next release, easily testable fixes are merged, complex ones are postponed
for the stable releases with a note in the announce saying "don't play with
this yet, it's broken". We do ship with bugs, we're open about it and we
address them later. Overall this transparency is much appreciated. And we
also do regressions by the way.

Maybe in the end the only thing we're missing is a "known bugs" section in
release announcements, so that those with pending fixes are encouraged to
send a line or two to Linus for inclusion there, having more time to work
on their fixes.

Willy
