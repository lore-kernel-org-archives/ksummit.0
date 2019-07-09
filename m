Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 86BAA3266
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Jul 2019 15:50:57 +0000 (UTC)
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9DA7D880
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Jul 2019 15:50:56 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 09 Jul 2019 17:44:13 +0200
Message-ID: <2859305.DT5vN9tDxJ@kreacher>
In-Reply-To: <nycvar.YFH.7.76.1907082324440.5899@cbobk.fhfr.pm>
References: <20190703013557.GQ11506@sasha-vm> <20190708151040.GB1548@kroah.com>
	<nycvar.YFH.7.76.1907082324440.5899@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
	automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, July 8, 2019 11:31:45 PM CEST Jiri Kosina wrote:
> On Mon, 8 Jul 2019, Greg KH wrote:
> 
> > Well, I think the conversation will go just like it has in the past for
> > this issue:
> > 	"We need to have someone track regressions!"
> > 	"X said they would do it but they need to be paid, any company
> > 	willing to sponsor this?"
> > 	{crickets}
> 
> SUSE has actually been funding this for quite some time (back when Rafael 
> was doing it), but it's really tricky.
> 
> We of course realize it's very important long-term activity, from which 
> everybody profits.
> 
> At the same time, you need somebody who *really deeply* understands 
> everything inside and around the kernel development, otherwise you get 
> more harm and chaos than added value out of the whole excercise.
> 
> And if you have such a person (like we had Rafael), it's unlikely that 
> person would want to do that work forever, and the funding company is also 
> losing brainpower in other, more development-related areas (like PM in 
> Rafael's case) at the same time.
> 
> So it's not as simple as "hey, you, company making money on linux, go pay 
> someone to do this".
> 
> If I remember correctly (Rafael for sure would remember better), there 
> were some attempts to have the regression tracking made by someone much 
> more juniorish, but that person got of course immediately overwhelmed.

There were such attempts and yes, the people dropped the ball eventually.

Honestly, I don't agree with the idea that one person can practically track
regression on the whole kernel basis today, because there is too many potential
sources of information to follow.  You'd need to track all of the mailing lists used for
development, bug tracking systems in many places and so on.

When I was tracking regressions, it was more or less sufficient to follow the LKML,
and that was hard enough already at that time, but it is not sufficient any more (and
even the LKML itself has become much more of a fire hose since then).

The tracking of regressions, to be effective, would need to scale at least in the
same way as the development process does IMO.
