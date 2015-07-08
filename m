Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 94E95B68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 07:37:13 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 46C1212D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 07:37:13 +0000 (UTC)
Message-ID: <1436341028.2136.14.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Date: Wed, 08 Jul 2015 08:37:08 +0100
In-Reply-To: <1481488.5WJFbB0Dlm@vostro.rjw.lan>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2015-07-08 at 03:29 +0200, Rafael J. Wysocki wrote:
> On Wednesday, July 08, 2015 01:21:40 AM Peter Huewe wrote:
> > Hi,
> > 
> > In order to continue our traditions I would like to propose again the topic of 
> > recruitment, but this time not only limiting to the hobbyists market.
> > 
> > We are definitely short on reviewers and thus have mostly overloaded 
> > maintainers.
> > For testers it's usually even worse - how many patches are actually tested?
> > Judging from what I read on LKML not that many.
> > 
> > So we should definitely discuss:
> > - how can we encourage hobbyists to become regular contributors
> > -- how to keep people interested, the drop-out rates are huge.
> > - encourage regular contributors to become reviewers and testers
> > - reviewers to become co-maintainers and finally maintainers (once the 
> > original maintainer is used up or moves up/on)
> 
> Good topic.
> 
> Unfortunately, there are not too many incentives for people to become
> code reviewers or testers, or at least to spend more time reviewing patches.

We can alter that somewhat.  We used to run a Maintainers lottery for
the kernel summit ... we could instead offer places based on the number
of Reviewed-by: tags ... we have all the machinery to calculate that.  I
know an invitation to the kernel summit isn't a huge incentive, but it's
a useful one.

> Most of the time there's a little to no recognition for doing that work and,
> quite frankly, writing code is more rewarding than that for the majority of
> people anyway.
> 
> The only way to address this problem I can see is to recognize reviewers
> *much* more than we tend to do and not just "encourage" them, because that's
> way insufficient.

What other incentives or recognition mechanisms would you propose?

James
