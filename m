Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5D37442A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 16:13:02 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A9490A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 16:13:01 +0000 (UTC)
Message-ID: <55AD1E08.8040708@sonymobile.com>
Date: Mon, 20 Jul 2015 09:12:56 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: <ksummit-discuss@lists.linuxfoundation.org>
References: <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon>	<20150709193718.GD9169@vmdeb7>
	<20150710143641.GW4341@mwanda>	<20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com>	<20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com>	<20150711055441.GA6316@sudip-PC>	<20150715212043.775be5d2@gandalf.local.home>	<20150716132551.GH4039@sirena.org.uk>	<20150716094720.2bf9f5ac@gandalf.local.home>	<55A7C7FE.6000604@sonymobile.com>
	<20150716094125.16cdda73@lwn.net>	<1437063875.18768.59.camel@HansenPartnership.com>	<20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
In-Reply-To: <20150717133712.42c82add@gandalf.local.home>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
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



On 07/17/2015 10:37 AM, Steven Rostedt wrote:
> As I know a few maintainers that like the "reverse-xmas-tree" order,
> perhaps we could add that to CodingStyle in a section of:
> 
> --- Some Maintainer's prefer these styles ---
> 
>  These are some extra styles that maintainers prefer. Some are strict
>  about these, others may not care. It doesn't hurt to add them.
> 
> Because things like reverse x-mas tree order isn't something people are
> against doing. But some may not care if you do or don't. So listing
> all the things that a few maintainers share, may be good.

OK - I had never even heard of reverse christmas-tree order before this 
discussion, so I did some research.  For those unfamiliar, it is
sorting things by line length (most commonly include file lines 
and variable declaration lines), from longest to shortest.  This
has the effect of somewhat randomizing these items relative to
each other, which reduces the probability of patch conflicts.

I think everyone has looked at where to put a new include statement,
or local variable declaration, and wondered where the best spot is.
The reverse-christmas-tree order rule provides a definitive answer
for this question, as well as decreases the chance of patch conflicts.
What's not to love?

Well, I think this is exactly the wrong solution to the problem
this rule is trying to solve.  First, this adds one more rule
(which only a few maintainers appear to care about) to the already
lengthy "death-by-a-thousand-cuts" patch submission process which
we've been discussing in this thread.  It's a trivial rule that's
easy to follow, and it reduces patch conflicts, which are a very
real maintainer burden to resolve.  But still it adds to the submission
process incrementally.

Also, it doesn't actually solve all patch conflicts on these lines -
it just decreases the probability of them.  And it does so in a way
that sacrifices human logic and readability to make the code easier
for tools to process.  Isn't this exactly backwards?

I've long thought that patch or wiggle should be able to ignore
context lines for include statements.  It might be possible with
some work to handle the variable declaration case as well.
I'll either work on this myself, or (this is more my style ;-) )
propose funding a project through the Linux Foundation to work on this.

I'm very interested in this topic of reducing the process of
submitting patches and easing maintainer load through automation.
Part of this would be to determine what things maintainers actually
spend their time responding to, that can be addressed through
automation.  I believe this discussion has been very helpful to 
highlight some issues that at least some maintainers have. But maybe a
brainstorming session at the summit would give more areas to
consider working on.
 -- Tim
