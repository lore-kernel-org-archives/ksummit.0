Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6CBA010A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 17:10:36 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 024F42C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 17:10:35 +0000 (UTC)
Message-ID: <1536599433.4035.19.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Date: Mon, 10 Sep 2018 10:10:33 -0700
In-Reply-To: <20180910162404.GU16300@sasha-vm>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<CA+55aFwg+iP-R9=fiJ_uzggiQi39Ce7wO707rPYx7C9BGQ0-Rw@mail.gmail.com>
	<20180910153806.GR16300@sasha-vm>
	<1536594427.4035.14.camel@HansenPartnership.com>
	<20180910155551.GS16300@sasha-vm>
	<1536596019.4035.17.camel@HansenPartnership.com>
	<20180910162404.GU16300@sasha-vm>
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

On Mon, 2018-09-10 at 16:24 +0000, Sasha Levin via Ksummit-discuss
wrote:
> On Mon, Sep 10, 2018 at 09:13:39AM -0700, James Bottomley wrote:
> > On Mon, 2018-09-10 at 15:55 +0000, Sasha Levin via Ksummit-discuss
[...]
> > > Indeed, if *all* discussions happened in a single thread that was
> > > used to submit the patch then sure - it's straightforward.
> > > However, consider 2 scenarios that we encounter on a weekly
> > > basis:
> > > 
> > > 1. We see a stable patch but not sure why/how it fixes an issue.
> > > The patch itself doesn't have enough information and there was no
> > > discussion after the patch was submitted. However, there was a
> > > lot of discussion in a completely unrelated thread unlinked from
> > > the patch submission. We can't find that because it doesn't refer
> > > to the patch at all, it just describes the problem and a
> > > solution.
> > 
> > This means the commit message was bad if it doesn't give you the
> > information.  If a patch is tagged for stable you know the
> > Maintainer made the decision before it was committed and they
> > should have the courtesy to explain the user visible issues (or
> > make sure the submitter did).  I really don't think you need to
> > second guess the maintainer on this.
> 
> We don't always do it to "second guess". A more common case is us
> trying to understand if we missed anything. Look at the following
> patch (from last week) for example:
> 
> 	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.
> git/commit/?id=d806afa495e2e2a1a726e26c5e44f27818e804c1
> 
> It states no functional changes, there are no related patches
> before/after it, and yet it's still tagged for stable. Is it us
> missing a related fix? Is it just not stable material? How do we
> explain it to ourselves?

It's a whitespace change ... I thought stable policy was to reject
those without further consideration.

However, given the #L1TF qualifier, I think it's a precursor patch for
another L1TF change, isn't it?

What's wrong with if in doubt, ask the maintainer.

> Another related reason is that I look at patches without stable tags
> trying to understand whether they should go in stable or not, and
> then I try to understand whether a certain patch is a fix or not.

Why?  If a Maintainer didn't tag it and no-one else submitted it, why
go looking for trouble?  I really strongly think stable should be a
push process not a random pull one.

> > There is a workflow issue in that not all maintainers tag for
> > stable, but I think that could be a separate topic.
> > 
> > > 2. We pull in a patch into the stable tree, but a few days later
> > > someone reports a bug and points to that patch. It's easier to
> > > solve these cases by grepping through mailboxes before shipping
> > > out stable releases, but it adds a considerable amount of effort.
> > 
> > So, again, don't second guess; triage by user visible fixes.  If
> > the patch doesn't really fix anything essential: revert it and
> > notify the subsystem and if it does ask the relevant subsystem for
> > help ... that is what they're there for.
> > 
> > Sure, it's nice to have the historical information, but it
> > shouldn't be your first port of call when you have a live subsystem
> > and maintainer who should be on top of all the issues and should be
> > more expert than you.
> 
> This is a bit different, in these cases I want to understand if I
> should be applying an additional fix or reverting a patch from
> stable. The sooner we get that information the less known buggy
> kernels will be shipped out.

So simply asking will get you that information.

James
