Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8B4B61D0A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 15:49:50 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 21D09836
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 15:49:50 +0000 (UTC)
Date: Tue, 2 Jul 2019 17:49:46 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1562082009.3321.31.camel@HansenPartnership.com>
Message-ID: <alpine.DEB.2.21.1907021748470.1802@nanos.tec.linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
	<1561996215.3551.49.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
	<1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021719320.1802@nanos.tec.linutronix.de>
	<1562082009.3321.31.camel@HansenPartnership.com>
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
> On Tue, 2019-07-02 at 17:30 +0200, Thomas Gleixner wrote:
> > 2) Link to a previous version of patch series in the cover letter
> > 
> >    Lot of people provide already links in their cover letter. Many of
> > them
> >    unfortunately use lkml.org which is a pain, but it's better than
> >    nothing.
> > 
> >    Ideally we can bring people to use the MSG id based links because
> > they
> >    do not depend on any particular archive.
> > 
> >    That needs a bit more education. Proper documentation should solve
> > that
> >    over time. If people use lkml.org for the link until they figure
> > out
> >    what a message id is, fine.
> 
> This is the bit that I think is the problem.  However, if it's optional
> but recommended I'm happy ... drive by committers won't do it, we don't
> have to add it for them and likely if they were forced to do a V2 there
> wasn't much illuminating content in V1 because it's probably process or
> other trivial changes.

Yes. I'm not worried about those. It mostly matters for larger patch series.

Thanks,

	tglx
