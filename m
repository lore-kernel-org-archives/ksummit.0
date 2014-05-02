Return-Path: <linville@tuxdriver.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 26E004C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:19:47 +0000 (UTC)
Received: from smtp.tuxdriver.com (charlotte.tuxdriver.com [70.61.120.58])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A30B31FD45
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:19:46 +0000 (UTC)
Date: Fri, 2 May 2014 16:33:22 -0400
From: "John W. Linville" <linville@tuxdriver.com>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20140502203322.GS3687@tuxdriver.com>
References: <alpine.LNX.2.00.1405022121070.29834@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1405022121070.29834@pobox.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] "depth" of the tree of
	maintainers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 02, 2014 at 09:42:12PM +0200, Jiri Kosina wrote:
> Is our tree too flat? This might turn into just a question to Linus than 
> really a discussion topic.
> 
> It seems to me (and it has been the case for a few past years, so it's 
> probably not an issue at the end of the day) like there are many places 
> where we are violating a natural tree-like hierarchy our development model 
> has, with many people sending pull requests directly to Linus instead of 
> going through sub-maintainers. Is this really a problem? If so, how to 
> deal with it?

Probably only Linus can decide if the maintainer tree is too flat.
That would largely be reflected in his own feelings about "free time",
his capacity for "big picture" stuff, etc -- I won't speculate too
much on that.  Still, it probably is a good idea to ensure a certain
amount of depth both for maintaining everyone's sanity and for insuring
against the 'eaten by raptors' problem.

The wireless tree that I run feeds up to Dave Miller rather than going
to Linus.  I also have a number of trees that others maintain and push
through me, including the mac80211 and bluetooth trees among others.
I'm not sure how many people are in the position I am in, although
I suspect that there are a few more around than there used to be?
Anyone?  Bueller?

Adding levels to the maintainer tree can introduce some problems,
of course.  Merging latency is probably obvious, as well as simple
matters like making sure everyone manages their trees in a compatible
way for merging operations.  There are many ways to use git, and some
cause problems for up- or down-stream trees...

Anyway, I'd love to see more of a discussion here.

John

P.S.  It's always good to see an early topic where I feel like an
expert... :-)
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.
