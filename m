Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EE0E6BBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 02:11:30 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4F559175
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 02:11:30 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 86C4120CB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:11:29 -0400 (EDT)
Date: Tue, 7 Jul 2015 19:11:28 -0700
From: Greg KH <greg@kroah.com>
To: Josh Boyer <jwboyer@fedoraproject.org>
Message-ID: <20150708021128.GB3102@kroah.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
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

On Tue, Jul 07, 2015 at 09:14:00PM -0400, Josh Boyer wrote:
> You could make a Reviewed-by tag required before a patch can be
> included in a submaintainer's tree.  At least some maintainers seem to
> (arbitrarily?) require this at times.  However, if you do that then it
> would likely slow down development quite a bit.

It doesn't seem to have slowed down the rate of change for the
subsystems that currently require this, so why do you think it would?

> Then Greg might cry because he wouldn't get to show pretty graphs at
> conferences about how fast the rate of change is in the kernel.

I don't have any graphs showing rate of change.  I have a few "raw"
numbers that I talk about, but that's just to scare people.  Even if we
went back to 2.5 development speeds (2.5 changes per hour), that's
enough to scare people for my needs :)

> (I would love to see a graph comparing rate of change to rate of
> regressions/bugs, but then people would have to know the latter.)

Want to start tracking that?  We've needed someone to do that work for
quite some time now, the fact that we've gotten by without it either
means that no one sees the value in funding such a position and/or it's
not really something that anyone cares about...

thanks,

greg k-h
