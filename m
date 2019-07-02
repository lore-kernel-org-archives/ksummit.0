Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8A9BC1AC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 15:40:12 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 87E8370D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 15:40:11 +0000 (UTC)
Message-ID: <1562082009.3321.31.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Thomas Gleixner <tglx@linutronix.de>
Date: Tue, 02 Jul 2019 08:40:09 -0700
In-Reply-To: <alpine.DEB.2.21.1907021719320.1802@nanos.tec.linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
	<1561996215.3551.49.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
	<1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021719320.1802@nanos.tec.linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2019-07-02 at 17:30 +0200, Thomas Gleixner wrote:
> On Tue, 2 Jul 2019, James Bottomley wrote:
> > On Tue, 2019-07-02 at 16:49 +0200, Thomas Gleixner wrote:
> > > On Tue, 2 Jul 2019, James Bottomley wrote:
> > > > On Mon, 2019-07-01 at 19:54 +0200, Thomas Gleixner wrote:
> > > > > The link to V2 is in both cases in the cover letter. That's
> > > > > sufficient. Yes, it might not be necessary, but I just
> > > > > recently ended up wasting an hour finding an earlier version
> > > > > because the cover letter subject changed slightly. I surely
> > > > > have better things to do.
> > > > 
> > > > I'm not arguing against changelogs in the patches themselves as
> > > > long as they're below the commit message --- cutoff.  In fact I
> > > > think that's best practice for reviewers.  I'm just arguing
> > > > making a link tag mandatory would impose an enforcement burden
> > > > on a lot of subsystems which would provide no benefit to them),
> > > > so I don't mind it's being optional but it shouldn't be
> > > > mandatory.
> > > 
> > > What's the burden exactly?
> > 
> > Not everyone knows what a message ID is or how to find it, so we'd
> > have to explain why the patch was rejected (or simply have the
> > maintainer add it at commit time, which currently involves some
> > effort).  Quite a few of the list archives mangle it so someone
> > would have to notice this or unmangle it.
> > 
> > > You mean that people would have to add them manually?
> > 
> > Most email tools don't show you the msgid, so if you're simply
> > doing driveby commits now we have to explain to you how to find it
> > ... remember linux-scsi isn't currently on lore so we can't just
> > say "use the lore archive".
> 
> The submitter has not to do anything for a drive by patch. The
> maintainer who grabs it from the list adds the tags (with tools).

They do for a link to a previous patch set.

> > There's also a knock on: for this to be useful, the commit series
> > needs to be threaded.  I've actually no objection to making this
> > one mandatory I'm just noting it's another precursor we need to
> > think about.
> > 
> > > People who use the link tag today have their homebrewn scripts to
> > > add them automatically and it shouldn't be rocket science to add
> > > that to git, patchwork whatever.
> > 
> > So if we find a way of automating this globally, I'm completely
> > happy. However, I would also note that whatever script does this
> > could likely also be run by you after the fact to generate the back
> > link, so foolproof automation also lessens the need to make this a
> > mandatory commit tag.
> 
> That's what I'm doing today. My mbox to quilt converter inserts the
> Link tag.
> 
> So let's take a step back.
> 
> 1) Link tag in the commit itself.
> 
>    That's added by the person who applies a patch from mail,
>    i.e. maintainer.
> 
>    That needs tooling support in git, patchwork etc. which should be
> a
>    solvable problem.

Agree, can be done completely by tooling with no manual effort.  I also
think we should engage the git people so this simply becomes automatic
metadata for all git-am processed commits.

> 2) Link to a previous version of patch series in the cover letter
> 
>    Lot of people provide already links in their cover letter. Many of
> them
>    unfortunately use lkml.org which is a pain, but it's better than
>    nothing.
> 
>    Ideally we can bring people to use the MSG id based links because
> they
>    do not depend on any particular archive.
> 
>    That needs a bit more education. Proper documentation should solve
> that
>    over time. If people use lkml.org for the link until they figure
> out
>    what a message id is, fine.

This is the bit that I think is the problem.  However, if it's optional
but recommended I'm happy ... drive by committers won't do it, we don't
have to add it for them and likely if they were forced to do a V2 there
wasn't much illuminating content in V1 because it's probably process or
other trivial changes.

James
