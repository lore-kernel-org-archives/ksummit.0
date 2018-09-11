Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 88E98B9E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 08:20:27 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6AB06766
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 08:20:26 +0000 (UTC)
Date: Tue, 11 Sep 2018 10:20:23 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1809101026160.1402@nanos.tec.linutronix.de>
Message-ID: <nycvar.YFH.7.76.1809111013260.15880@cbobk.fhfr.pm>
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

On Mon, 10 Sep 2018, Thomas Gleixner wrote:

> Looking at SSBD/L1TF only and ignoring the Meltdown/Spectre disaster (which
> was completely FUBARed by Intel), having something like this in place could
> have certainly solved the main gap which we had. We were able to
> communicate freely between the informed parties and their allowed to know
> kernel developers, even accross vendors. 

Agreed, this worked pretty well this time.

> But there was no simple way to bring in anybody else. It tooks us almost 
> 2 months to get GregKH on board, but there was no way to talk to e.g. 
> the BPF folks in time.

But this was what has caused real pain indeed. Do we know / can it be 
publicly said what exactly was the issue in those cases? Was it perhaps 
that those people were not employed by a company the disclosing party had 
a NDA in place already (like it probably had with all the involved 
vendors, etc)?

Thanks,

-- 
Jiri Kosina
