Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ECEEE40B7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 15:50:17 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 749B1832
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 15:50:17 +0000 (UTC)
Message-ID: <1561996215.3551.49.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Thomas Gleixner <tglx@linutronix.de>, David Howells <dhowells@redhat.com>
Date: Mon, 01 Jul 2019 08:50:15 -0700
In-Reply-To: <alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
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

On Mon, 2019-07-01 at 17:40 +0200, Thomas Gleixner wrote:
> On Mon, 1 Jul 2019, David Howells wrote:
> 
> > Shuah Khan <skhan@linuxfoundation.org> wrote:
> > 
> > > In a recent patch discussion, I learned that some maintainers
> > > would like to see patch version changes in the commit log.
> > > 
> > > I went looking in the git log and found a handful of recent
> > > commits with "Changes since" type information in the commit logs.
> > > It appears to be maintainer preference and a recent trend.
> > > 
> > > I see the value in including the information. It can be
> > > informative and valuable for future work in the area.
> > > 
> > > Is this something that we would like to see in all commits going
> > > forward? If so, updating submitting patch documentation and
> > > making sure the version information evolves from "informal" to
> > > more formal nature that fits in with the commit logs would be
> > > helpful.
> > > 
> > > Making sure it doesn't get out of hand and commit logs don't
> > > become too long to be useful would also be helpful.
> > 
> > I put the changelog in the cover note (ie. patch 0) since if
> > there's more than one patch there may well be changes that span
> > multiple patches.  Whoever's
> 
> That's a pain. I'd have to go back and forth to find that
> information. If the v$N info is in the patch itself, then it clearly
> shows what the scope of the change is in that particular patch, e.g.
> just fixing up the typo or some structural change.
> 
> And no, this is not about convenience for the submitter. It's about
> convenience for the reviewer/maintainer. The goal must be to make
> their life as simple as possible not the other way round.

Wouldn't the contemporaneous reviewer/maintainer be on the actual email
threads ... so they wouldn't need the references?

I see the Link tag as a useful historical artifact but you seem to
think it's an essential part of the contemporaneous acceptance.  I've
definitely been in the situation of having to find patches and
discussion (usually when next or 0day informs us of a SCSI breakage
that wasn't sent to our list and I have to find the original to take a
look) but really, it's not a common occurrence so it's not a huge
burden to have to use a search facility to find the patch and
discussion on the list it was originally sent to.

My general impression is that for me it's not contemporaneously very
useful and cregit seems to cover the historical part, so I'm
ambivalent about including a Link tag and definitely wouldn't require
it.

James


> > doing the merge could include this in the merge description.
> 
> That does not help for patch series which are applied directly from
> mail.
> 
> Thanks,
> 
> 	tglx
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
