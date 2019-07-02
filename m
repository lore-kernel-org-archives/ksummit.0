Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EFFCD1865
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 14:20:07 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 844AA834
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 14:20:07 +0000 (UTC)
Message-ID: <1562077203.3321.2.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Thomas Gleixner <tglx@linutronix.de>
Date: Tue, 02 Jul 2019 07:20:03 -0700
In-Reply-To: <alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
	<1561996215.3551.49.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
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

On Mon, 2019-07-01 at 19:54 +0200, Thomas Gleixner wrote:
> On Mon, 1 Jul 2019, James Bottomley wrote:
> > On Mon, 2019-07-01 at 17:40 +0200, Thomas Gleixner wrote:
> > > On Mon, 1 Jul 2019, David Howells wrote:
> > > > I put the changelog in the cover note (ie. patch 0) since if
> > > > there's more than one patch there may well be changes that span
> > > > multiple patches.  Whoever's
> > > 
> > > That's a pain. I'd have to go back and forth to find that
> > > information. If the v$N info is in the patch itself, then it
> > > clearly shows what the scope of the change is in that particular
> > > patch, e.g. just fixing up the typo or some structural change.
> > > 
> > > And no, this is not about convenience for the submitter. It's
> > > about convenience for the reviewer/maintainer. The goal must be
> > > to make their life as simple as possible not the other way round.
> > 
> > Wouldn't the contemporaneous reviewer/maintainer be on the actual
> > email threads ... so they wouldn't need the references?
> > 
> > I see the Link tag as a useful historical artifact but you seem to
> > think it's an essential part of the contemporaneous
> > acceptance.  I've
> 
> That's not what I was talking about. This was about a per patch
> change history vs. putting all changes fron the previous version into
> the cover letter.
> 
> i.e.
> 
> 	cover letter
> 
> 	V2 -> V3:
> 	      - list of changes
> 
> vs.
> 
> 	cover letter
> 
> 	V2 -> V3:
> 	   High level overview of changes
> 
>   and
> 	patch b/m
> 
> 	SOB
> 	---
> 	V3: Fixup up typo
> 
> 	patch d/m
> 
> 	SOB
> 	---
> 	V3: New algorithm
> 
> 	patch f/m
> 
> 	SOB
> 	---
> 	V2: Fix comment style
> 
> 
> So on review I can (if I trust the submitter) just skip 'b' and 'f'
> because 'b' has no interesting change (i.e. the typo which made the
> compile fail is fixed) and 'f' has no change at all. Instead I focus
> on 'd' because there is the meat of the V3 submission.
> 
> Having all this information only in the cover letter is a pain
> especially on larger patch series.
> 
> The link to V2 is in both cases in the cover letter. That's
> sufficient. Yes, it might not be necessary, but I just recently ended
> up wasting an hour finding an earlier version because the cover
> letter subject changed slightly. I surely have better things to do.

I'm not arguing against changelogs in the patches themselves as long as
they're below the commit message --- cutoff.  In fact I think that's
best practice for reviewers.  I'm just arguing making a link tag
mandatory would impose an enforcement burden on a lot of subsystems
which would provide no benefit to them), so I don't mind it's being
optional but it shouldn't be mandatory.

James
