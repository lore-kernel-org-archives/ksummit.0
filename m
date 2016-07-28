Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A3D0E2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:07:32 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DFD6B142
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:07:31 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 29 Jul 2016 01:07:43 +0300
Message-ID: <12788837.iimoJHR1VB@avalon>
In-Reply-To: <ab7424c2-b9d6-428c-be3f-052aa7bdd326@suse.cz>
References: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
	<ab7424c2-b9d6-428c-be3f-052aa7bdd326@suse.cz>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Vlastimil Babka <vbabka@suse.cz>, Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday 15 Jul 2016 13:24:10 Vlastimil Babka wrote:
> On 07/15/2016 07:52 AM, NeilBrown wrote:
> > On Fri, Jul 15 2016, Greg KH wrote:
> >> On Thu, Jul 14, 2016 at 07:56:43PM -0700, Guenter Roeck wrote:
> >>> Overall, I can not imagine that it is even possible to use quilt trees
> >>> as basis for development in a company with if active kernel
> >>> development, even more so if a large number of engineers and/or a
> >>> number of branches are involved. Sure, the QCOM example may be extreme,
> >>> but do you really think that writing those 2.5M LOC would have been
> >>> possible if QCOM had used Quilt trees instead of git ? Using Quilt
> >>> would for sure have prevented them from writing those 2.5M LOC, but
> >>> then there would be nothing. That doesn't sound like a feasible
> >>> alternative either.
> >> 
> >> It is possible, look at the Red Hat and SuSE kernel development teams.
> >> Yes, in the end, most of the patches are backports from upstream, but
> > 
> > You are glossing over a key point.  We (or at least I as a SUSE kernel
> > developer) don't use quilt for development because, like Guenter says,
> > it would be too clumsy.  I do development upstream if git.  Upstream
> > first.
> > And I have scripts to help turn the result into something suitable for
> > quilt, making the use of quilt a pain rather than a nightmare.
> > 
> > I do find quilt useful when backporting a series of patches so that I
> > can resolve the conflicts on each patch individually and move backwards
> > and forwards through the list of patches.  I don't think git has an easy
> > way to store a branch of patches-that-I-need-to-apply and to then give
> > me one at a time, removing them from the branch.  I could use 'stgit'
> > for that if necessary, though it is very tempting to write something
> > that is better integrated with git.
> 
> I think (but never actually tried yet) this should be somehow possible
> with git rebase --interactive and git rebase --edit-todo (where the
> editing of todo would be automatic via some wrappers). You should be
> able to put any commits in the todo to "pick" (not just those you are
> rebasing), effectively cherry-picking them. "quilt push" equivalent
> becomes "git commit" and/or "git rebase --continue" (which reminds me,
> can't count how many times I've used git commit --amend instead of
> rebase --continue after resolving a conflict, which amended the
> *previous* commit, grrr. Having some intelligent wrapper over that would
> be great so you don't have to remember if there was a conflict or not,
> and which command is thus appropriate).

As long as you git add all the changes, git rebase --continue will do the 
right thing, regardless of whether there was a conflict or not. I've stopped 
using git commit --amend when rebasing interactively, unless git rebase --
continue complained that it can't proceed.

There are two main reasons why git rebase --continue can't proceed. The first 
one is when you still have changes in the working copy not added to the index, 
which can be the case when you want to commit the changes in multiple separate 
commits. git rebase --continue will complain, and the right command in that 
case is usually git commit, not git commit --amend. In any case, after the 
error message from git rebase --continue, you can decide how to proceed.

The second reason is also related to applying changes in multiple separate 
commits. If you have applied any commit (either through git commit or git 
commit --amend) since the interactive rebase stopped, even after adding all 
changes to the index git rebase --continue will complain. In that case you 
will again have to decide how to proceed.

The bottom line is that using git rebase --continue will either do the right 
thing, or complain without proceeding, letting you analyze the situation. I 
found that to minimize the countless amendments of the previous commits that 
used to bite me all the time as well.

> "quilt pop" would take the HEAD,
> put it as the first thing to "pick" in the rebase todo, and do git reset
> --hard HEAD^.
> 
> Anyway sorry for adding to the OT :)

-- 
Regards,

Laurent Pinchart
