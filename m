Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 47584128F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:41:56 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A17CC7C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:41:55 +0000 (UTC)
Date: Wed, 5 Sep 2018 16:41:50 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Jiri Kosina <jikos@kernel.org>
In-Reply-To: <nycvar.YFH.7.76.1809051246380.15880@cbobk.fhfr.pm>
Message-ID: <alpine.DEB.2.21.1809051603100.1416@nanos.tec.linutronix.de>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<alpine.DEB.2.21.1809051108220.1416@nanos.tec.linutronix.de>
	<nycvar.YFH.7.76.1809051246380.15880@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Wed, 5 Sep 2018, Jiri Kosina wrote:
> On Wed, 5 Sep 2018, Thomas Gleixner wrote:
> If enterprise vendors would be able to create a working business 
> relationship with partners and customers around 'rolling' kernel versions 
> in enterprise distributions one day, that'd of course be awesome.

It would be a good thing if _all_ of them would start to think about it
seriously and even more so if they would agree and push that model
together.

> > IOW, in the light of meltdown/spectre all effort should have been put 
> > into getting 4.14 and 4.9 fixed instead of diverting our very limited 
> > capcity to create monstrosities back to 2.6 variants.
> 
> I agree that it'd be an ideal world, but it's guaranteed that if we just 
> say to the people running some of our 2.6 kernel under a very special 
> contract that they have to all of a sudden move to 4.14, we'll just 
> immediately lose that contract (and someone else will immediately plug the 
> hole on the market and create perhaps even worse backport for them), and 
> for various reasons we don't want that to happen :)

Yeah, I've heard that song over and over. Of course you can't undo the
mistakes of the past, but the shades of meltdown & co. should give all
vendors enough ammunition to start serious negotiations with their
customers.

> Such contracts are usually set up in a way that only very specific fixes 
> can be requested for said kernels. We've historically put our bets on the 
> fact that we'll be able to provide those rare fixes even for 2.6, and it 
> worked well.
> Now we're paying back a bit of course (because spectre/meltdown of course 
> qualifies), but upstream can completely and happily ignore that.

Hell, no. It affects upstream very much because the whole dead kernel
rituals consume a massive amount of brain power.

These backports are not done by random code monkeys, they waste the scarse
time of top notch developers and maintainers. This time is not available
for concentrating on upstream and a very restricted set of LTS kernels,
which would benefit everybody, including distros and their customers.

I very well know how many developers and maintainers are trainwrecked and
frustrated by that. Not to talk about the massive backlog this creates,
which hurts everyone again.

So no, we cannot shrug it off and happily ignore it. We have to tell
distros over and over that they are doing a massive damage.

Thanks,

	tglx
