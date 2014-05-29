Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E520A976
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 16:33:17 +0000 (UTC)
Received: from qmta01.emeryville.ca.mail.comcast.net
	(qmta01.emeryville.ca.mail.comcast.net [76.96.30.16])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 978931F899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 16:33:17 +0000 (UTC)
Date: Thu, 29 May 2014 11:33:15 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
In-Reply-To: <4313963.MgakXbDg9t@avalon>
Message-ID: <alpine.DEB.2.10.1405291132010.12545@gentwo.org>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<2513219.zeNxM5s3Dn@avalon>
	<alpine.DEB.2.10.1405290942460.11991@gentwo.org>
	<4313963.MgakXbDg9t@avalon>
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

> On the other hand, this can be an issue for developers and/or maintainers who
> want to ensure that all parts of a patch have received proper review. That's
> why I sometimes split patches that perform a simple change to multiple drivers
> in a series with one patch per driver, and then squash everything into a
> single patch before submitting a pull request. That workflow could probably be
> improved.

Well that in turn may lead to breakage if modifications to only some files
are merged. If the modifications in multiple files are not depending on
one another then they could go in as separate patches in the first place.
