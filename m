Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 425F2F09
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:13:42 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C2812F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:13:41 +0000 (UTC)
Message-ID: <1536596019.4035.17.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Date: Mon, 10 Sep 2018 09:13:39 -0700
In-Reply-To: <20180910155551.GS16300@sasha-vm>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<CA+55aFwg+iP-R9=fiJ_uzggiQi39Ce7wO707rPYx7C9BGQ0-Rw@mail.gmail.com>
	<20180910153806.GR16300@sasha-vm>
	<1536594427.4035.14.camel@HansenPartnership.com>
	<20180910155551.GS16300@sasha-vm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2018-09-10 at 15:55 +0000, Sasha Levin via Ksummit-discuss
wrote:
> On Mon, Sep 10, 2018 at 08:47:07AM -0700, James Bottomley wrote:
> > On Mon, 2018-09-10 at 15:38 +0000, Sasha Levin via Ksummit-discuss
> > wrote:
> > > On Mon, Sep 10, 2018 at 05:10:48AM -1000, Linus Torvalds wrote:
> > > > On Mon, Sep 10, 2018 at 5:08 AM James Bottomley
> > > > <James.Bottomley@hansenpartnership.com> wrote:
> > > > > 
> > > > > On Mon, 2018-09-10 at 04:53 -1000, Linus Torvalds wrote:
> > > > > >   "Live without email - possible?"
> > > > > 
> > > > > Can I propose one small alteration to the topic:
> > > > > 
> > > > >         "Patches without Email - Possible?"
> > > > 
> > > > Yes, better. That's what I meant anyway.
> > > > 
> > > > I still want the pull requests as email, and I still think
> > > > email is often the best way to discuss things.
> > > 
> > > Yes, email is great for discussions, but one concern I have is
> > > that once discussions ended and a patch was merged, a lot of
> > > those discussions are lost forever.
> > > 
> > > It's somewhat easy to google a patch and look in lkml archives to
> > > see some discussion as a result of the patch, but that's far from
> > > perfect:
> > > 
> > > 1. For different patch revisions, some discussions manage to hide
> > > in the archives.
> > > 2. Discussions that resulted in a patch being sent aren't linked
> > > to the patch itself.
> > > 3. Any discussions after the patch was merged aren't easy to
> > > locate, specially if they're not in the same thread as the
> > > original patch.
> > > 
> > > This makes the lives of stable/distro folks more difficult than
> > > it should be.
> > 
> > I disagree on this.  I have had occasion, when identifying patches
> > that screwed something up, to go back to the emails to try to find
> > out who did this and why.  As long as you're used to search
> > interfaces it's usually easy to find.  Usually they are all
> > threaded under the patch but the worst case I've seen is when v1,
> > v2 ... vn aren't linked by thread, but even there searching for the
> > specific patch set (0/n) subject title works.  So I think the data
> > is all there in multiple archives and we do have powerful enough
> > tools to find it.
> 
> Indeed, if *all* discussions happened in a single thread that was
> used to submit the patch then sure - it's straightforward. However,
> consider 2 scenarios that we encounter on a weekly basis:
> 
> 1. We see a stable patch but not sure why/how it fixes an issue. The
> patch itself doesn't have enough information and there was no
> discussion after the patch was submitted. However, there was a lot of
> discussion in a completely unrelated thread unlinked from the patch
> submission. We can't find that because it doesn't refer to the patch
> at all, it just describes the problem and a solution.

This means the commit message was bad if it doesn't give you the
information.  If a patch is tagged for stable you know the Maintainer
made the decision before it was committed and they should have the
courtesy to explain the user visible issues (or make sure the submitter
did).  I really don't think you need to second guess the maintainer on
this.

There is a workflow issue in that not all maintainers tag for stable,
but I think that could be a separate topic.

> 2. We pull in a patch into the stable tree, but a few days later
> someone reports a bug and points to that patch. It's easier to solve
> these cases by grepping through mailboxes before shipping out stable
> releases, but it adds a considerable amount of effort.

So, again, don't second guess; triage by user visible fixes.  If the
patch doesn't really fix anything essential: revert it and notify the
subsystem and if it does ask the relevant subsystem for help ... that
is what they're there for.

Sure, it's nice to have the historical information, but it shouldn't be
your first port of call when you have a live subsystem and maintainer
who should be on top of all the issues and should be more expert than
you.

James
