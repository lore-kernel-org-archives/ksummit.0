Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8AEEEB14
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 08:56:40 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6F338623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 08:56:39 +0000 (UTC)
Date: Sat, 8 Sep 2018 10:56:35 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@amacapital.net>
In-Reply-To: <CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Fri, 7 Sep 2018, Andy Lutomirski wrote:
> (There was another CVE that got much less press that I was involved,
> and it didn't get much attention in Linux land because Linux was only
> minimally affected.  Despite being an Intel/AMD issue, all of the
> coordination was done by Microsoft, and it was done remarkably well
> once the process actually got started.)

The point is that the coordination done by the entity who 'owns' the thing
is the key.

Contrary to Meltdown/Spectre Intel informed us about L1Tf halfways early
and allowed _all_ involved parties to talk to each other. There were still
some rough edges to bring key people like Greg in, but that was a minor
nuisance compared to the whole Meltdown/Spectre mess.

Of course there was no communication channel which allowed us to talk in a
workable way, but that got resolved by ourself setting up a encrypted
mailing list which made halfways normal kernel style cooperation
possible. That still has its rough edges vs. limited review capacity and
testing, but compared to Meltdown/Spectre L1TF was halfways workable.

So we surely have the ability to communicate properly in an embargo
situation, but that requires that the entity who controls the issue is

 1) Telling us in time and putting all cards on the table
 2) Setting no silly restrictions vs. who can talk to whom

That said, I agree that a more formal process with clear rules might make
it easier for companies to handle that proper. It's definitely worth to
try.

Though it won't make the issues which come inherently with embargo
development go away. Mechanisms we rely on like 0-bot, kernel-ci and others
need to grow an embargo mode as well.

Thanks,

	tglx
