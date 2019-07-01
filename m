Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55EC349B5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 15:48:29 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0A2DA782
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 15:48:27 +0000 (UTC)
Date: Mon, 1 Jul 2019 18:48:06 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190701154806.GF5018@pendragon.ideasonboard.com>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
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

Hi Thomas,

On Mon, Jul 01, 2019 at 05:40:58PM +0200, Thomas Gleixner wrote:
> On Mon, 1 Jul 2019, David Howells wrote:
> > Shuah Khan <skhan@linuxfoundation.org> wrote:
> > > In a recent patch discussion, I learned that some maintainers would like
> > > to see patch version changes in the commit log.
> > > 
> > > I went looking in the git log and found a handful of recent commits with
> > > "Changes since" type information in the commit logs. It appears to be
> > > maintainer preference and a recent trend.
> > > 
> > > I see the value in including the information. It can be informative
> > > and valuable for future work in the area.
> > > 
> > > Is this something that we would like to see in all commits going forward? If
> > > so, updating submitting patch documentation and making
> > > sure the version information evolves from "informal" to more formal
> > > nature that fits in with the commit logs would be helpful.
> > > 
> > > Making sure it doesn't get out of hand and commit logs don't
> > > become too long to be useful would also be helpful.
> > 
> > I put the changelog in the cover note (ie. patch 0) since if there's more than
> > one patch there may well be changes that span multiple patches.  Whoever's
> 
> That's a pain. I'd have to go back and forth to find that information. If
> the v$N info is in the patch itself, then it clearly shows what the scope
> of the change is in that particular patch, e.g. just fixing up the typo or
> some structural change.

I agree with you in general (I've asked multiple submitters to move
changelogs to individual patches in the past), except for high-level
change descriptions at the series level that don't naturally fit in one
particular patch. I tend myself to summarise the most important changes
in the cover letter, so someone reviewing the whole series will have a
global view of the changes at the beginning, and will also find the
relevant information in each patch. I however understand that this is
possibly more work for the submitter and my thus get frowned upon, but
I find it useful during review.

> And no, this is not about convenience for the submitter. It's about
> convenience for the reviewer/maintainer. The goal must be to make their
> life as simple as possible not the other way round.
> 
> > doing the merge could include this in the merge description.
> 
> That does not help for patch series which are applied directly from mail.

-- 
Regards,

Laurent Pinchart
