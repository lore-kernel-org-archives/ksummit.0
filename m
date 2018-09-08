Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E177AC23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 11:21:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1D63B8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 11:21:55 +0000 (UTC)
Date: Sat, 8 Sep 2018 08:21:41 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20180908082141.15d72684@coco.lan>
In-Reply-To: <alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
	<alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Sat, 8 Sep 2018 10:56:35 +0200 (CEST)
Thomas Gleixner <tglx@linutronix.de> escreveu:

> On Fri, 7 Sep 2018, Andy Lutomirski wrote:
> > (There was another CVE that got much less press that I was involved,
> > and it didn't get much attention in Linux land because Linux was only
> > minimally affected.  Despite being an Intel/AMD issue, all of the
> > coordination was done by Microsoft, and it was done remarkably well
> > once the process actually got started.)  
> 
> The point is that the coordination done by the entity who 'owns' the thing
> is the key.

I didn't participate on handing those bugs. So, I'll give just my
2 cents here.

IMO, the problem with embargoed security issues is that the affected
vendor will very likely want to contain the ones that have access to
the bug-related information. They also want to have some legal ways
to protect their asses^Wassets if data gets disclosed.

In other words, they'll very likely require some sort of NDA. As 
we're working on different places, each one is under a different NDA
agreement with the affected vendor (and some may even not have any
signed NDA at all). I suspect that identifying who has a signed NDA
that would cover the assets for everyone that would have access to
the embargoed data can take quite some time.

> Contrary to Meltdown/Spectre Intel informed us about L1Tf halfways early
> and allowed _all_ involved parties to talk to each other.

That's probably because they had already gave some sort of 
"clearance" to the ones that handled Meltdown/Spectre.

I suspect that, if L1Tf were affecting some other vendor, it would 
also be as painful as it was for Meltdown/Spectre.

IMHO, the best would be to have a formal/legal way to handle it.

I suspect that having a single entity like LF handling a formal
process for embargoed issues could help making it smoother.
That would likely envolve having a single NDA model that could
be signed with vendors (either before of after an event like that),
and LF having pre-signed NDA with the group of maintainers/developers
that would more likely handle such issues.

> There were still
> some rough edges to bring key people like Greg in, but that was a minor
> nuisance compared to the whole Meltdown/Spectre mess.
> 
> Of course there was no communication channel which allowed us to talk in a
> workable way, but that got resolved by ourself setting up a encrypted
> mailing list which made halfways normal kernel style cooperation
> possible. That still has its rough edges vs. limited review capacity and
> testing, but compared to Meltdown/Spectre L1TF was halfways workable.

A formal agreement with a single entity could help there too.

I mean, provided that everyone's involved is under a legal umbrella,
it should be possible for the vendor to give logical access to some
of their own labs where it would be possible to run the tests with
the real thing.

> 
> So we surely have the ability to communicate properly in an embargo
> situation, but that requires that the entity who controls the issue is
> 
>  1) Telling us in time and putting all cards on the table
>  2) Setting no silly restrictions vs. who can talk to whom
> 
> That said, I agree that a more formal process with clear rules might make
> it easier for companies to handle that proper. It's definitely worth to
> try.
> 
> Though it won't make the issues which come inherently with embargo
> development go away. Mechanisms we rely on like 0-bot, kernel-ci and others
> need to grow an embargo mode as well.
> 
> Thanks,
> 
> 	tglx
> 
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



Thanks,
Mauro
