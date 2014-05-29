Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 54848988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 14:59:36 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC2801FAA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 14:59:35 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Christoph Lameter <cl@gentwo.org>
Date: Thu, 29 May 2014 16:59:55 +0200
Message-ID: <4313963.MgakXbDg9t@avalon>
In-Reply-To: <alpine.DEB.2.10.1405290942460.11991@gentwo.org>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<2513219.zeNxM5s3Dn@avalon>
	<alpine.DEB.2.10.1405290942460.11991@gentwo.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Reforming Acked-by (was Re: [TOPIC]
	Encouraging more reviewers)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thursday 29 May 2014 09:44:11 Christoph Lameter wrote:
> On Thu, 29 May 2014, Laurent Pinchart wrote:
> > We most certainly do, but if we want that credit to be an incentive, it
> > has to have value. A casual review tag could even be seen as having a
> > negative value. My opinion is most probably strongly biased on that
> > subject though.
>
> There are patches that straddle multiple subsystems. Maybe we need
> something to indicate that the portion relevant to a certain subsystems
> have been approved? I often see these with the slab allocators and
> sometimes I just ack them to indicate that the slab portions are fine
> thinking people know that this is in my role as slab maintainer.

I usually reply with a "For driver/subsystem xyz, Acked-by ....". Only the 
Acked-by is recorded in the git history though, but that might not be an issue 
as we can always go back to the mailing list archives if we really want to 
know who is to blame for a too casual review.

On the other hand, this can be an issue for developers and/or maintainers who 
want to ensure that all parts of a patch have received proper review. That's 
why I sometimes split patches that perform a simple change to multiple drivers 
in a series with one patch per driver, and then squash everything into a 
single patch before submitting a pull request. That workflow could probably be 
improved.

-- 
Regards,

Laurent Pinchart
