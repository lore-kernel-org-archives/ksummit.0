Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6934C988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 14:44:14 +0000 (UTC)
Received: from qmta01.emeryville.ca.mail.comcast.net
	(qmta01.emeryville.ca.mail.comcast.net [76.96.30.16])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1A23C1FA97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 14:44:14 +0000 (UTC)
Date: Thu, 29 May 2014 09:44:11 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
In-Reply-To: <2513219.zeNxM5s3Dn@avalon>
Message-ID: <alpine.DEB.2.10.1405290942460.11991@gentwo.org>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<1734054.557RqAjsBf@avalon>
	<20140528231845.GA8518@core.coreip.homeip.net>
	<2513219.zeNxM5s3Dn@avalon>
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Thu, 29 May 2014, Laurent Pinchart wrote:

> We most certainly do, but if we want that credit to be an incentive, it has to
> have value. A casual review tag could even be seen as having a negative value.
> My opinion is most probably strongly biased on that subject though.


There are patches that straddle multiple subsystems. Maybe we need
something to indicate that the portion relevant to a certain subsystems
have been approved? I often see these with the slab allocators and
sometimes I just ack them to indicate that the slab portions are fine
thinking people know that this is in my role as slab maintainer.
