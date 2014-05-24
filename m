Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 956C48A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 17:31:55 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CD7E31F89A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 17:31:53 +0000 (UTC)
Message-ID: <1400952709.6956.50.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Trond Myklebust <trond.myklebust@primarydata.com>
Date: Sat, 24 May 2014 21:31:49 +0400
In-Reply-To: <CAHQdGtS-sWiNKmucHxi+mY6GTf+NfOFPGFBG0KUTk=rtSBjjNA@mail.gmail.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<CAHQdGtS-sWiNKmucHxi+mY6GTf+NfOFPGFBG0KUTk=rtSBjjNA@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Sat, 2014-05-24 at 11:50 -0400, Trond Myklebust wrote:
> On Sat, May 24, 2014 at 5:53 AM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > A lot of the problems accepting patches into the kernel stem from trying
> > to get them reviewed ... some patch series even go for months without
> > being reviewed.  This is caused by a couple of problems.  The first one
> > is a submission issue, where you get a long N patch series (usually N >
> > 10) you review and provide feedback, then you get a long N+Y series back
> > eventually with no indication what disposition was taken on any of the
> > review points ... even the most hardy reviewers get a bit demotivated at
> > this point. The second is an actual lack of reviewers in particular
> > fields, meaning that a small number of people tend to be the ones
> > reviewing patches in particular subsystems.
> >
> > The former is probably just an addition to SubmittingPatches explaining
> > how to resend after addressing review comments.  The latter was supposed
> > to be helped by having the Reviewed-by: tag so we gave credit to
> > reviewers.  I've found the Reviewed-by tag to be a bit of a double edged
> > sword: it is a good way of giving review credits, but I also see patches
> > that come in initially with it on (usually the signoff and the
> > reviewed-by are from people in the same company) ... it's not
> > necessarily a bad thing, but it doesn't add much value to the kernel
> > review process, because we're looking for independent reviews.  The
> > other thing I find problematic is that some people respond to a patch
> > with a Reviewed-by: tag and nothing more.  I'm really looking for
> > evidence of actually having read (and understood) the patch, so the best
> > review usually comes with a sequence of comments, questions and minor
> > nits and a reviewed-by at the end.
> >
> > However, the fundamental problem is we still need to increase our review
> > pool, so we need more than the Reviewed-by: tag.  It has been suggested
> > that people who submit patches should also be required to review patches
> > from other people ... I think that's a bit drastic, but it is a
> > possibility. Another possibility for the kernel summit might be to have
> > review time instead of hack time: we each nominate a patch set needing
> > review and it gets reviewed by others in that time ... if that one's
> > successful, we could extend the concept to other conferences and
> > development sprints which do hack time.  Another possibility is to
> > publish a subsystem to review list (similar to the to do list idea).
> > This at least shows submitters why their patch series is languishing and
> > could serve as a call to arms if it gets too long.
> 
> 
> Hi James,
> 
> You are assuming that organising reviews of patches is the
> responsibility of the maintainer.

Actually, I don't believe I said that anywhere ... however, I do see, at
least in my subsystem, that the Maintainer is the reviewer of last
resort, so my selfish reason for wanting more reviewers is to offload
that from me.

> In my opinion, it should rather be the responsibility of the submitter
> to do so as part of the process of rallying support for what they are
> proposing. It is fine for the maintainer to assist that process, to
> set parameters around it (e.g. how many reviews are required before it
> can be merged), and to act as one of the reviewers, but there is no
> reason why the maintainer must be the one to drive the process.

Sure, this is all fine.  I think the dynamic will depend on the
subsystem anyway.

> I agree that ensuring quality of review is difficult. Part of the
> problem there is that our toolchain has nothing to capture reviews,
> and to preserve them for posterity other than the mailing lists. The
> best you can do then is to use 'Link:' in order to tag the review
> thread in the commit log.

Heh, perhaps, at last, we might have found a use for git notes.

>  It would be nice to have a better solution.
> Patchworks is one option, but it doesn't really work well for capture
> the full process if the submitter pushes out a new patchset in
> response to a review (you end up starting afresh).

I've not really tried patchwork, so can't comment

> Bugzillas are another option, but their main task isn't really to
> preserve patch reviews, and furthermore, they are less well adapted to
> our working habits (which has lead to pushback from a number of
> maintainers).
> Other options?

Well, the other obvious one is gerrit, but I'm really not keen on it ...
it provides a nice log of the reviews, but it's set up around the
process of owning the git tree as well.

However, I don't really think better tools would help us grow
reviewers ... OpenStack has exactly the same review bottleneck problem
we have and they already use a full Gerrit workflow.

James
