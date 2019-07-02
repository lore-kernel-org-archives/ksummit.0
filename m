Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97B211B93
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 14:49:11 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 27C51836
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 14:49:11 +0000 (UTC)
Date: Tue, 2 Jul 2019 16:49:07 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1562077203.3321.2.camel@HansenPartnership.com>
Message-ID: <alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
	<1561996215.3551.49.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
	<1562077203.3321.2.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2 Jul 2019, James Bottomley wrote:
> On Mon, 2019-07-01 at 19:54 +0200, Thomas Gleixner wrote:
> > The link to V2 is in both cases in the cover letter. That's
> > sufficient. Yes, it might not be necessary, but I just recently ended
> > up wasting an hour finding an earlier version because the cover
> > letter subject changed slightly. I surely have better things to do.
> 
> I'm not arguing against changelogs in the patches themselves as long as
> they're below the commit message --- cutoff.  In fact I think that's
> best practice for reviewers.  I'm just arguing making a link tag
> mandatory would impose an enforcement burden on a lot of subsystems
> which would provide no benefit to them), so I don't mind it's being
> optional but it shouldn't be mandatory.

What's the burden exactly?

You mean that people would have to add them manually?

People who use the link tag today have their homebrewn scripts to add them
automatically and it shouldn't be rocket science to add that to git,
patchwork whatever.

Thanks,

	tglx
