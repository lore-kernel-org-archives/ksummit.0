Return-Path: <mgorman@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B1D2840A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 10:16:35 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C1A3DF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 10:16:34 +0000 (UTC)
Date: Fri, 17 Jul 2015 11:16:29 +0100
From: Mel Gorman <mgorman@suse.de>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150717101629.GC2561@suse.de>
References: <20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<55A7D73F.4020105@sonymobile.com>
	<20150716121620.65ce6daa@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
In-Reply-To: <20150716121620.65ce6daa@gandalf.local.home>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On Thu, Jul 16, 2015 at 12:16:20PM -0400, Steven Rostedt wrote:
> On Thu, 16 Jul 2015 09:09:35 -0700
> Tim Bird <tim.bird@sonymobile.com> wrote:
> 
> > Here's just an anecdote to support this.  There's a highly qualified 
> > developer at Sony I was talking to this week, who said that when he
> > sees a bug in the mainline kernel, he usually just ignores it because
> > the hassle-factor of submitting a patch is too high.
> 
> Ouch! But that's still no excuse to ignore it. There should be no
> hassle factor in reporting a bug.

Agreed that there is no excuse to ignore it but the hassle factor of
reporting is not just the only issue. I find it difficult to just file a
bug unless the issue is extremely difficult or I'm completely swamped with
other work. I like to think that I generally know what I'm doing and that
bug reports should be accompanied with some sort of patch in the common
case just out of pride. Other experienced people might be the same but
realistically we can't do anything about that because it's about feelings.

The hassle factor of sending patches to unfamiliar maintainers is real
though. If I'm privately helping someone post a patch I will try and give
them additional information on the maintainer they are dealing with and
what snags are specific to that person.  Obviously it is not information
that is documented anywhere.  This hazard is fine if you have someone on
hand with that information but I imagine it's rougher if you're on your own.

It's possible that the only tangiable way to address this is if maintainers,
where possible, do the basic fixups of a patch *for new people* and explain
what they changed and why. Let that person know that in the future they
should do the same steps themselves. This is a additional work unfortunately
but with luck it would only have to be done one or twice per new person. If
it persists then bounce it back saying "ah, this is the same snags as before,
you should know how to fix them now". Basic fixups for new peoples patches
is something that could potentially be delegated if a maintainer found a
few volunteers.

Andrew has a good system for dealing with this class of fixup which works
for his workflow. If there are minor fixes then he'll apply "-fix" patches
on top and collapse them together before the final merge with Linus.
The commit message will have a short note on why the fix was necessary
which is enough to know to avoid it in the future. You get an email with
the -fix patch is applied and you know you have screwed up when he gets
to the -fix-fix-fix-fix patch. The problem gets addressed, the patch
gets picked up and the patch submitter learns to avoid that problem in
the future.  This workflow does not work well with git without rebasing
but it is effective.

> <SNIP>
> Sending a patch along with it is a
> plus. It at least demonstrates what is wrong. Now it may be a different
> matter if you want your patch to make it into the kernel.
> I've sent hundreds of patches to different subsystem maintainers (and
> even Linus), where the patch was mostly used to show where the bug was,
> and my version of the fix, but the final fix was authored by someone
> else with just a Reported-by contributed to me. I'm fine with that, but
> others may not be.
> 

I like using this option on occasion, I think there are a number of
people do.

> I heard that IBM once had a method where if you submitted a change, and
> that change made it into kernel, even if the final change was not
> authored by you, you still got credit for it. That's a fabulous way of
> looking at contributions and giving credit to your employees.
> 

That one varied a little and applies to an extent to my current company.
A developer assigned a particular task was responsible for getting the job
done. If that was with their patch, something functionally equivalent or
with someone elses work did not matter. For example, someone else might
be fine with the idea, think it's important but hate the method and do it
themselves. Your immediate boss might distinguish between whether it was
your patch or not but beyond that credit was for getting the job done.
That company attitude is not something the community can do much about
though unless corporate attitude is being discussed at a high level.

-- 
Mel Gorman
SUSE Labs
