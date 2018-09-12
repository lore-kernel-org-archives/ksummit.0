Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 90CACD49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 12:03:26 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DFD7676D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 12:03:24 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 12 Sep 2018 15:03:35 +0300
Message-ID: <3146009.WtUYtaxuno@avalon>
In-Reply-To: <CAMuHMdUTkrT6Jovw1wwCTQj3Cg+5yw5WPn5QKRNOhrcvB13s7g@mail.gmail.com>
References: <20180910174638.26fff182@vmware.local.home>
	<1536708545.3511.18.camel@HansenPartnership.com>
	<CAMuHMdUTkrT6Jovw1wwCTQj3Cg+5yw5WPn5QKRNOhrcvB13s7g@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday, 12 September 2018 14:55:44 EEST Geert Uytterhoeven wrote:
> On Wed, Sep 12, 2018 at 1:29 AM James Bottomley wrote:
> > On Tue, 2018-09-11 at 16:22 -0700, Tony Lindgren wrote:
> >> * James Bottomley [180911 22:58]:
> >>> On Tue, 2018-09-11 at 16:31 -0400, Steven Rostedt wrote:
> >>> Why not do what I do and push to a -pre-next branch when you kick
> >>>> off your local tests?
> >>> 
> >>> Because there's no point.  As I said, when we complete the local
> >>> criteria the branch is ready for integration.  We push to -next and
> >>> *all* the built bots tell us if there are any problems (which I
> >>> don't expect there are but there's room for me to be wrong) ...
> >>> including 0day.  I don't see what the delay and the process hassle
> >>> would buy us if we only get a review by 0day in the -pre-next branch. 
> >>> It seems more efficient to let every bot loose on what we think is
> >>> mergeable.
> >> 
> >> Well what we're after is providing a trigger for people writing test
> >> scripts to test individual branches before they get merged into next.
> >> 
> >> With the goal of trying to keep next usable constantly.
> >> 
> >> Establishing a branch naming standard like "-pre-next" would allow
> >> the scripts to test the various branches where available before
> >> they hit next and warn about issues.
> > 
> > I still don't get the purpose: as I've said several times, SCSI pushes
> > to -next when it thinks the patches are ready for merging.  Almost none
> > of the subsequently discovered bugs (by both bots and humans) affect
> > anything other than SCSI (and usually only a specific driver) so there
> > would have been no benefit to testing them in a separate branch and
> > indeed probably the detriment of diverting resources.
> > 
> > That's my point: from my point of view the -next process is actually
> > working; I don't see a reason to complicate it.
> 
> Good. Then this discussion wasn't targeted to the SCSI people, but to
> other maintainers pushing brown paper bags and other trivial breakages
> they should have caught beforehand to linux-next ;-)

That's a behaviour that has been annoying me lately, maintainers should have 
no special privilege when it comes to pushing code upstream. All patches 
should be posted publicly, given enough time to be reviewed, and review 
comments should be addressed before anything is merged to a -next branch.  
Unfortunately that's not always the case :-S

I'm not sure whether we're actually doing better or worse in this area, as I 
haven't studied it across the kernel, but I've been bothered by that problem 
in several real cases.

I would even go as far as saying that all patches should have Reviewed-by or 
Acked-by tag, without enforcing that rule too strictly (I'm thinking in 
particular about drivers that only a single person cares about, it's sometimes 
hard to get patches reviewed).

-- 
Regards,

Laurent Pinchart
