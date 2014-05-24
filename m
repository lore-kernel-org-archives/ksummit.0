Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9493F87A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 14:24:17 +0000 (UTC)
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D7BD91FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 14:24:16 +0000 (UTC)
Received: by mail-vc0-f171.google.com with SMTP id lc6so7505237vcb.16
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 07:24:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
Date: Sat, 24 May 2014 07:24:15 -0700
Message-ID: <CAPcyv4gjnBzDAeSnpjfC73CRr4KRZE2PNj705G6_YSN1vyyP0A@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
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

On Sat, May 24, 2014 at 2:53 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
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
>
> The former is probably just an addition to SubmittingPatches explaining
> how to resend after addressing review comments.  The latter was supposed
> to be helped by having the Reviewed-by: tag so we gave credit to
> reviewers.  I've found the Reviewed-by tag to be a bit of a double edged
> sword: it is a good way of giving review credits, but I also see patches
> that come in initially with it on (usually the signoff and the
> reviewed-by are from people in the same company) ... it's not
> necessarily a bad thing, but it doesn't add much value to the kernel
> review process, because we're looking for independent reviews.  The
> other thing I find problematic is that some people respond to a patch
> with a Reviewed-by: tag and nothing more.  I'm really looking for
> evidence of actually having read (and understood) the patch, so the best
> review usually comes with a sequence of comments, questions and minor
> nits and a reviewed-by at the end.
>
> However, the fundamental problem is we still need to increase our review
> pool, so we need more than the Reviewed-by: tag.  It has been suggested
> that people who submit patches should also be required to review patches
> from other people ... I think that's a bit drastic, but it is a
> possibility. Another possibility for the kernel summit might be to have
> review time instead of hack time: we each nominate a patch set needing
> review and it gets reviewed by others in that time ... if that one's
> successful, we could extend the concept to other conferences and
> development sprints which do hack time.  Another possibility is to
> publish a subsystem to review list (similar to the to do list idea).
> This at least shows submitters why their patch series is languishing and
> could serve as a call to arms if it gets too long.

Mandatory patchwork?  If no one can perceive the patch queue depth how
do they know where to help?  Would also be nice if patchwork had
states like "needs review from another fibre channel developer" to
make it explicit the class of review that is being sought from the
maintainer.

> I'm sure there are many other things people could suggest.

Forgive the co-opt / tie-in to my own topic proposal, but I think one
way to increase review is to do it after the code is merged.  Quality
reviews tend to also show up after bug reports.  So, maybe finding a
way to get more code in people's hands, in a responsible way, also
increases the quantity and quality of reviews.

--
Dan
