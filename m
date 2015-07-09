Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 378D3AAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 21:47:38 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 880E712D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 21:47:37 +0000 (UTC)
Date: Thu, 9 Jul 2015 17:47:18 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20150709214718.GG9417@thunk.org>
References: <1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<559D8336.3040802@roeck-us.net>
	<1436414798.23558.3.camel@ellerman.id.au>
	<559EBD4C.6030502@gmail.com> <20150709190640.GC788@roeck-us.net>
	<20150709194734.GG9169@vmdeb7> <20150709201315.GF9417@thunk.org>
	<20150709205049.GB5154@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709205049.GB5154@roeck-us.net>
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

On Thu, Jul 09, 2015 at 01:50:49PM -0700, Guenter Roeck wrote:
> 
> Earlier it was discussed how to improve the recognition of reviewers.
> Your comments seems to suggest the opposite, and may actually discourage
> reviewers. Why should I review Linux kernel code if that is seen
> by some as me trying to "game" the system ?

So I were designing an initial system that automatically scored
reviewers, I'd be looking to see, from a holistic point of view, how
many reviews were zero-length:

Reviewed-by: John Q. Random <seventeen@random.org>

... and nothing else,

.... versus how many reviews had specific comments on various
different portions of the patch.  If possible, the automated system
would try to distinguish between comments that were just pointing out
whitespace issues (which would be a slight positive) with comments
that point out genuine design issues (this will be really hard to do
in an automated fashion, but a very sophisticated nueral network[1]
mgiht be able to hack it).

I might also try using some kind scheme that counted the number of
words in a review (stripping out lines of patch or commit description
that the review was a reply to), etc.  But of course, if it was public
knowledge that the system was just stripping out the original e-mail,
and then just doing a "wc -w", then people would game the system by
adding list of random words at the bottom of the review.

And, of course, I'd have the system give a huge negative score if a
commit that got a "LGTM" positive review caused a bug that required
the patch to be reverted.  *That* signal, at least, would be hard to
game, and would hopefuly encourage people to actually take time
reviewing a commit, and not blindly slapping a reviewed-by on a commit
they don't understand.

You see?  It's not that reviews in and of themselves are attempts to
game the system ---- just so long as they are genuine reviews.  If
there is evidence that the reviews are issued within seconds of the
original patch going out, with a Reviewed-by: line and nothing else,
what would *you* think about the quality of that review?

> That may be true for some people, but at the same time I think statements
> like the above might discourage people who just like cleaning up code for
> fun. There are several of those working on cleaning up the Linux kernel,
> and I truly appreciate their efforts.

Sure, but that's not the people who (in my opinion as a program
committee member) should be attendingt he Kernel Summit, where we want
people who are genuinely clueful about technical and policy issues,
and not people like (for example) Nick Krause.

Regards,

						- Ted

[1] http://googleresearch.blogspot.com/2015/06/inceptionism-going-deeper-into-neural.html
