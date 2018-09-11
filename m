Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A312AE18
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 09:03:32 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 34DF52C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 09:03:32 +0000 (UTC)
Date: Tue, 11 Sep 2018 11:03:25 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Jiri Kosina <jikos@kernel.org>
In-Reply-To: <nycvar.YFH.7.76.1809111013260.15880@cbobk.fhfr.pm>
Message-ID: <alpine.DEB.2.21.1809111050280.5110@nanos.tec.linutronix.de>
References: <20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
	<20180908153235.GB11120@kroah.com>
	<1536422066.22308.3.camel@HansenPartnership.com>
	<20180909125130.GA16474@kroah.com>
	<CA+55aFwHH7cN0GXcV7trRs1zgdak+_e8-TyXEsXu62G5V_248A@mail.gmail.com>
	<1536503930.3192.2.camel@HansenPartnership.com>
	<6ECFDF7E-2674-4096-BFB5-25243D62913E@amacapital.net>
	<20180909172039.GE22251@thunk.org>
	<9E5C84F3-410E-4177-AA96-FA09A8D53BC6@amacapital.net>
	<20180909185651.GF22251@thunk.org>
	<alpine.DEB.2.21.1809101026160.1402@nanos.tec.linutronix.de>
	<nycvar.YFH.7.76.1809111013260.15880@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	mchehab+samsung@kernel.org,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Tue, 11 Sep 2018, Jiri Kosina wrote:
> On Mon, 10 Sep 2018, Thomas Gleixner wrote:
> 
> > Looking at SSBD/L1TF only and ignoring the Meltdown/Spectre disaster (which
> > was completely FUBARed by Intel), having something like this in place could
> > have certainly solved the main gap which we had. We were able to
> > communicate freely between the informed parties and their allowed to know
> > kernel developers, even accross vendors. 
> 
> Agreed, this worked pretty well this time.
> 
> > But there was no simple way to bring in anybody else. It tooks us almost 
> > 2 months to get GregKH on board, but there was no way to talk to e.g. 
> > the BPF folks in time.
> 
> But this was what has caused real pain indeed. Do we know / can it be 
> publicly said what exactly was the issue in those cases? Was it perhaps 
> that those people were not employed by a company the disclosing party had 
> a NDA in place already (like it probably had with all the involved 
> vendors, etc)?

Greg is not employed by one of the companies to which the issue was
disclosed and had no NDA in place. AFAIK he's not doing the NDA mess
either, so it took time to sort it out.

For others, who were not employed by one of the involved parties and were
not covered by some magic NDA construct, we just gave up because at the
point we realized that we need their expertise it was way too late to wait
a couple of month/weeks to get that sorted.

That's where I see the embargo coordination to have it's place. If the
people working on the embargoed issue need the expertise of somebody who is
not covered in one way or the other, then the embargo team can disclose it
due to technical necessarity and based on trust.

And I can see that working, because if someone gets pulled in and spills
the beans then he has not only violated the trust put into him for this
particular embargo issue, he also killed his reputation and trust
relationships in the community as a whole.

I doubt that any coordinator in a company - despite the whole NDA/work
contract/whatever stuff in place - will disclose a sensitive embargo issue
to an engineer whom he doesn't trust fully.

Thanks,

	tglx
