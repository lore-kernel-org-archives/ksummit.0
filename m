Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21208BE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 09:25:57 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9512871C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 09:25:56 +0000 (UTC)
Date: Mon, 10 Sep 2018 11:25:49 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
In-Reply-To: <20180909185651.GF22251@thunk.org>
Message-ID: <alpine.DEB.2.21.1809101026160.1402@nanos.tec.linutronix.de>
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
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1641188141-1536571549=:1402"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1641188141-1536571549=:1402
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Sun, 9 Sep 2018, Theodore Y. Ts'o wrote:
> On Sun, Sep 09, 2018 at 11:17:20AM -0700, Andy Lutomirski wrote:
> > 
> > What I want is the opposite of an NDA. I want a gentlemen’s
> > agreement plus an explicit statement that the relevant people *may*
> > talk about the issue among themselves despite any NDAs that might
> > already exist. And that they may release patches when the embargo is
> > up. And that the embargo has an end date, and that the developers
> > may decline an extension.
> 
> So what you're talking about is some kind of "Memo of Understanding"
> that has no talk about "if this leaks it will Intel will suffer
> millons and billons and zillons of dollars and Intel well sue you
> until your assets are a smoking crater in the ground"?
> 
> If there are no consequences to violating the Gentleman's agreement
> (other than not being included the next time *when* another CPU
> vulnerability comes up), then nothing really needs to be signed, since
> it has no legal impact.

Looking at SSBD/L1TF only and ignoring the Meltdown/Spectre disaster (which
was completely FUBARed by Intel), having something like this in place could
have certainly solved the main gap which we had. We were able to
communicate freely between the informed parties and their allowed to know
kernel developers, even accross vendors. But there was no simple way to
bring in anybody else. It tooks us almost 2 months to get GregKH on board,
but there was no way to talk to e.g. the BPF folks in time.

I think this needs to have some formal setup. The way disclosure to
companies work is through coordinators, who then disclose it internaly to
the relevant people.

We should provide something similar, i.e. an embargo coordination group,
which coordinates the issue with the disclosing party. And yes, this only
can be based on a general Memo of Understanding, as there is no way to make
that whole NDA mess work when the group needs to bring in individual
developers.

Having something formal and halfways familiar in place is definitely
something we need before we are starting to communicate and negotiate that
through all channels.

What I came up with so far is:

 - work out a Memo of Understanding
   
 - appoint an initial group of embargo coordinators, ideally people who
   have already an established trust relationship in the industry.

 - come up with a clear and well defined set of rules what this embargo
   group is doing and what not.

   It's sole purpose is to handle and coordinate the kind of embargo
   issues, which have a long preparation time, need coordination with other
   OSes etc, i.e. the Meltdown/Spectre/L1TF scenarios.

   It won't deal with NDAs and has to be free to disclose to individual
   developers based on trust under the MOU.

Creating this kind of formal entity is probably the closest thing to the
established inter corporate embargo handling which we can provide.

Thanks,

	tglx
--8323329-1641188141-1536571549=:1402--
