Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5F7327FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 09:53:50 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0D2571F90C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 09:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 95F8B8EE1C1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 02:53:49 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 8W1A7Vy47vwQ
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 02:53:49 -0700 (PDT)
Received: from [10.10.76.114] (unknown [81.211.18.246])
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 2D2768EE0C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 02:53:47 -0700 (PDT)
Message-ID: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 24 May 2014 13:53:45 +0400
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

A lot of the problems accepting patches into the kernel stem from trying
to get them reviewed ... some patch series even go for months without
being reviewed.  This is caused by a couple of problems.  The first one
is a submission issue, where you get a long N patch series (usually N >
10) you review and provide feedback, then you get a long N+Y series back
eventually with no indication what disposition was taken on any of the
review points ... even the most hardy reviewers get a bit demotivated at
this point. The second is an actual lack of reviewers in particular
fields, meaning that a small number of people tend to be the ones
reviewing patches in particular subsystems.

The former is probably just an addition to SubmittingPatches explaining
how to resend after addressing review comments.  The latter was supposed
to be helped by having the Reviewed-by: tag so we gave credit to
reviewers.  I've found the Reviewed-by tag to be a bit of a double edged
sword: it is a good way of giving review credits, but I also see patches
that come in initially with it on (usually the signoff and the
reviewed-by are from people in the same company) ... it's not
necessarily a bad thing, but it doesn't add much value to the kernel
review process, because we're looking for independent reviews.  The
other thing I find problematic is that some people respond to a patch
with a Reviewed-by: tag and nothing more.  I'm really looking for
evidence of actually having read (and understood) the patch, so the best
review usually comes with a sequence of comments, questions and minor
nits and a reviewed-by at the end.

However, the fundamental problem is we still need to increase our review
pool, so we need more than the Reviewed-by: tag.  It has been suggested
that people who submit patches should also be required to review patches
from other people ... I think that's a bit drastic, but it is a
possibility. Another possibility for the kernel summit might be to have
review time instead of hack time: we each nominate a patch set needing
review and it gets reviewed by others in that time ... if that one's
successful, we could extend the concept to other conferences and
development sprints which do hack time.  Another possibility is to
publish a subsystem to review list (similar to the to do list idea).
This at least shows submitters why their patch series is languishing and
could serve as a call to arms if it gets too long.

I'm sure there are many other things people could suggest.

James
