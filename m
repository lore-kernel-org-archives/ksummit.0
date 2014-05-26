Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1D7B898F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 12:00:09 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id D37191FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 12:00:07 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Date: Mon, 26 May 2014 14:17:10 +0200
Message-ID: <2839150.aL2B2bFJFc@vostro.rjw.lan>
In-Reply-To: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi James,

On Saturday, May 24, 2014 01:53:45 PM James Bottomley wrote:
> A lot of the problems accepting patches into the kernel stem from trying
> to get them reviewed ... some patch series even go for months without
> being reviewed.  This is caused by a couple of problems.  The first one
> is a submission issue, where you get a long N patch series (usually N >
> 10) you review and provide feedback, then you get a long N+Y series back
> eventually with no indication what disposition was taken on any of the
> review points ... even the most hardy reviewers get a bit demotivated at
> this point. The second is an actual lack of reviewers in particular
> fields, meaning that a small number of people tend to be the ones
> reviewing patches in particular subsystems.

I agree that both are problems currently.

I'm seeing an interesting twist of the second one, though, for example in
the cpufreq subsystem, where there is a developer who reviews the others'
patches, but then his patches often go unreviewed by anyone (except for me
when I need to decide whether or not to apply them).

> The former is probably just an addition to SubmittingPatches explaining
> how to resend after addressing review comments.  The latter was supposed
> to be helped by having the Reviewed-by: tag so we gave credit to
> reviewers.  I've found the Reviewed-by tag to be a bit of a double edged
> sword: it is a good way of giving review credits, but I also see patches
> that come in initially with it on (usually the signoff and the
> reviewed-by are from people in the same company) ... it's not
> necessarily a bad thing, but it doesn't add much value to the kernel
> review process, because we're looking for independent reviews.

Well, the fact that the review is internal doesn't necessarily imply that it
is not independent.

> The other thing I find problematic is that some people respond to a patch
> with a Reviewed-by: tag and nothing more.  I'm really looking for
> evidence of actually having read (and understood) the patch, so the best
> review usually comes with a sequence of comments, questions and minor
> nits and a reviewed-by at the end.

There is some confusion about when to use Reviewd-by and when to use Acked-by.
I prefer people to say Acked-by if the review is not in-dpeth.  Reviewed-by
should always imply "I understand what the change does and don't see any
problems with it" in my opinion, while Acked-by is something like "that's
fine by me" (that may mean quite a lot when a maintainer says so, but not
in general).

It would be good to clarify that somehow in the documentation this way or
another.

> However, the fundamental problem is we still need to increase our review
> pool, so we need more than the Reviewed-by: tag.  It has been suggested
> that people who submit patches should also be required to review patches
> from other people ... I think that's a bit drastic, but it is a
> possibility. Another possibility for the kernel summit might be to have
> review time instead of hack time: we each nominate a patch set needing
> review and it gets reviewed by others in that time ... if that one's
> successful, we could extend the concept to other conferences and
> development sprints which do hack time.

I like this idea, it's worth trying anyway in my opinion.

> Another possibility is to
> publish a subsystem to review list (similar to the to do list idea).
> This at least shows submitters why their patch series is languishing and
> could serve as a call to arms if it gets too long.
> 
> I'm sure there are many other things people could suggest.

Using Patchwork helps a bit in that area (if people know that it is used
actually), because submitters can go there and check the status and see if
anyone has commented their patches.  If the status is "New" and there are
no comments, that pretty much indicates "unreviewed yet". :-)

Rafael
