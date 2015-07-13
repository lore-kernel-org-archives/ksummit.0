Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 364AD9FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:21:36 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0094.hostedemail.com
	[216.40.44.94])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1D61A253
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:21:35 +0000 (UTC)
Date: Mon, 13 Jul 2015 14:21:32 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150713142132.08fead4d@gandalf.local.home>
In-Reply-To: <55A33E48.2040202@oracle.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 13 Jul 2015 00:27:52 -0400
Sasha Levin <sasha.levin@oracle.com> wrote:


> > Many fixes are important but simply aren't that urgent so the two or
> > more weeks is no great cost.
> 
> I'd actually argue that Linus shouldn't be pulling *anything* that wasn't in
> -next for 2+ weeks. There's no good excuse to want something pulled immediately
> as the only benefit Linus's tree provides in that aspect is the wider testing
> it receives, so it would make sense to weed out more bugs in -next before they
> get to Linus.

I disagree. I thought next was a place to have integration of new
development, and not just a place to test. Really, how many people test
next compared to Linus's tree? I trip over bugs all the times in
Linus's tree that's been in -next for almost a whole release cycle.

The only bugs that I find that come from -next is integration issues,
where an interface changes and another subsystem stumbles over it.
That's exactly what it was for and what it's good at.

I like the idea that patches marked for stable should sit in Linus's
tree for at least 2 weeks before being pulled into stable. Linus's tree
gets the most testing than any other tree and that's where new fixes
should go.


> 
> I think that this is a small mind-shift from thinking about Linus's tree as
> an integration tree to considering it as mostly bug-free code, and stop
> merging in risky patches. We already have -next for that.

No, we have -next as a way incorporate new code and see how things
interact with other subsystems.

> 
> > If a developer/maintainer thinks a fix is urgent, then they need to
> > explicitly ask for a quick release, and that could be as easy as saying:
> > 
> >   Cc: stable@vger.kernel.org (URGENT v3.0 and later)
> > 
> > An 'URGENT' fix *should* come with an independent
> > "Reviewed-by:"  (well ... everything should of course, but if URGENT
> > stable patches with no Reviewed-by got some push-back, I think that
> > would be a "very good thing" all around).
> 
> I suppose that this is something Linus/maintainers would need to enforce? No
> patch unless it lived in -next unless it was acked by the maintainer of that
> subsystem?
> 
> > I don't think that tightening the criteria for going into any
> > particular tree will really help.  I'm not sure there is even real
> > agreement on what is or is not allowed in -stable (we have clearly
> > written rules, but the practice is really whatever a maintainer
> > chooses).
> > -rc prereleases for -stable would only help if people tested them.
> > Given that the same bugs are in -linus, the testing done there should
> > be sufficient providing it is given enough time.
> 
> My reasoning for -rc prereleases for stable was to test out the backports that
> go into stable kernels: they don't see the light of day until they're shipped
> out to folks who want *stable* kernels, but end up being the first testers of
> a backport.

Which to me looks like rational to let it sit in Linus's tree for a bit.

> 
> I don't want to suggest that we do a few of those per stable kernel, but even
> one -rc release that would end up in distros (marked as "proposed/devel") and
> would let users test that would be a great step forward.
> 
> The reason I've suggested it for Ksummit rather than hashing it out on stable@
> is that I believe that the solution is more complex and would need more discussion
> than just slapping a "cooldown period" on patches. We need to make sure less
> bugs/untested code ends up in Linus's tree to begin with, and we need a way to
> validate proposed stable releases before releasing them, since -stable users
> aren't interested in being testers.

I'm all for discussing this in person.

-- Steve
