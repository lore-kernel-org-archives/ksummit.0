Return-Path: <SRS0=+gHD=LT=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EFBA9CBD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:18:52 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EB4FD7A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:18:51 +0000 (UTC)
Date: Wed, 5 Sep 2018 11:18:49 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20180905111849.1d08653c@gandalf.local.home>
In-Reply-To: <alpine.DEB.2.21.1809051603100.1416@nanos.tec.linutronix.de>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<alpine.DEB.2.21.1809051108220.1416@nanos.tec.linutronix.de>
	<nycvar.YFH.7.76.1809051246380.15880@cbobk.fhfr.pm>
	<alpine.DEB.2.21.1809051603100.1416@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 5 Sep 2018 16:41:50 +0200 (CEST)
Thomas Gleixner <tglx@linutronix.de> wrote:

> Yeah, I've heard that song over and over. Of course you can't undo the
> mistakes of the past, but the shades of meltdown & co. should give all
> vendors enough ammunition to start serious negotiations with their
> customers.

Perhaps that's the most distros can do.

> 
> > Such contracts are usually set up in a way that only very specific fixes 
> > can be requested for said kernels. We've historically put our bets on the 
> > fact that we'll be able to provide those rare fixes even for 2.6, and it 
> > worked well.
> > Now we're paying back a bit of course (because spectre/meltdown of course 
> > qualifies), but upstream can completely and happily ignore that.  
> 
> Hell, no. It affects upstream very much because the whole dead kernel
> rituals consume a massive amount of brain power.
> 
> These backports are not done by random code monkeys, they waste the scarse
> time of top notch developers and maintainers. This time is not available
> for concentrating on upstream and a very restricted set of LTS kernels,
> which would benefit everybody, including distros and their customers.
> 
> I very well know how many developers and maintainers are trainwrecked and
> frustrated by that. Not to talk about the massive backlog this creates,
> which hurts everyone again.
> 
> So no, we cannot shrug it off and happily ignore it. We have to tell
> distros over and over that they are doing a massive damage.

It's not the distros that need convincing, it's the vendors that pay to
have it done. When I first started at Red Hat and was told about the
"Stable Kernel ABI", the person telling me about this (a very
established kernel developer) also said "Yeah it really sucks, but
companies are willing to pay a shite load of money to have it done". And
it's in the distros best interest to get that shite load of money. It
also funds the same developers to do this work, and hopefully continue
to help upstream as well.

If we remove that nasty work, these companies wont need to continue
paying that shite load anymore, and they may not be able to afford
paying these talented developers.

-- Steve
