Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C195348E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:24:55 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4BDB22020D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:24:55 +0000 (UTC)
Message-ID: <53751466.1030401@zytor.com>
Date: Thu, 15 May 2014 12:24:22 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: "Theodore Ts'o" <tytso@mit.edu>, Josh Boyer <jwboyer@fedoraproject.org>
References: <20140511171824.GB2527@linux.com>	<20140512155320.GW12708@titan.lakedaemon.net>	<20140512164921.GB3509@linux.com>
	<53710053.4040100@zytor.com>	<CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>	<20140513112525.GB10733@kroah.com>	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>	<20140513150520.GA15857@kroah.com>	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>
	<20140513160743.GA11391@thunk.org>
In-Reply-To: <20140513160743.GA11391@thunk.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Sarah A Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Jason Cooper <jason@lakedaemon.net>, Dirk Hohndel <hohndel@infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/13/2014 09:07 AM, Theodore Ts'o wrote:
> I'll note this discussion has started mutating to a more general "how
> do we get more useful bug reports in front of developers", which I
> think is a good thing.
> 
> However, I'm still not sure how useful it would be to have a tech
> topic (or a core topic) dedicated to the matter, because we've had
> discussions about and at the end of the day, what's probably really
> necessary is to have someone, or a small team, dedicated all or most
> of their time to:
> 
> a) improving kerneloops.org
> b) finding interesting patterns in the bulk reported data, and then
> forwarding that on to developers
> c) finding ways of automating (b)
> 
> QR encoded oops might be a means towards that end, but there might be
> other things that could be done as well.
> 
> If someone were to *do* all of this work, then reporting on it and
> then asking for suggestions about how this service could be improved,
> might make a great tech topic.
> 
> But in the absence of that, can folks suggest ways that this doesn't
> turn into a "I know, let's put a bell on the cat!" sort of discussion
> that doesn't lead to anything useful?
> 

A workflow discussion for gathering fault information in general *might*
be useful, but I'm not sure we have the right people for it.  As far as
I understand, kerneloops.org pretty much lost its usefulness when Fedora
(and other distros?) stopped participating and redirected to their own
internal sites.

	-hpa
