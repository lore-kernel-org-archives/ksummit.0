Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CA0DE982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 10:58:28 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4B9A91FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 10:58:28 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Christoph Lameter <cl@gentwo.org>
Date: Fri, 30 May 2014 12:58:47 +0200
Message-ID: <3613898.QzNNH3fhMT@avalon>
In-Reply-To: <alpine.DEB.2.10.1405291132010.12545@gentwo.org>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<4313963.MgakXbDg9t@avalon>
	<alpine.DEB.2.10.1405291132010.12545@gentwo.org>
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

On Thursday 29 May 2014 11:33:15 Christoph Lameter wrote:
> On Thu, 29 May 2014, Laurent Pinchart wrote:
> > On the other hand, this can be an issue for developers and/or maintainers
> > who want to ensure that all parts of a patch have received proper review.
> > That's why I sometimes split patches that perform a simple change to
> > multiple drivers in a series with one patch per driver, and then squash
> > everything into a single patch before submitting a pull request. That
> > workflow could probably be improved.
> 
> Well that in turn may lead to breakage if modifications to only some files
> are merged.

This can of course only be done when the patches don't depend on each other in 
a circular way.

> If the modifications in multiple files are not depending on one another then
> they could go in as separate patches in the first place.

They could, but some maintainers prefer them not to as they find it easier to 
handle this kind of change in a single patch.

-- 
Regards,

Laurent Pinchart
