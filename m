Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 77FB4C96
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 17:20:44 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0ED2F2C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 17:20:43 +0000 (UTC)
Date: Sun, 9 Sep 2018 13:20:39 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20180909172039.GE22251@thunk.org>
References: <alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan>
	<20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
	<20180908153235.GB11120@kroah.com>
	<1536422066.22308.3.camel@HansenPartnership.com>
	<20180909125130.GA16474@kroah.com>
	<CA+55aFwHH7cN0GXcV7trRs1zgdak+_e8-TyXEsXu62G5V_248A@mail.gmail.com>
	<1536503930.3192.2.camel@HansenPartnership.com>
	<6ECFDF7E-2674-4096-BFB5-25243D62913E@amacapital.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6ECFDF7E-2674-4096-BFB5-25243D62913E@amacapital.net>
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

On Sun, Sep 09, 2018 at 07:51:09AM -0700, Andy Lutomirski wrote:
> > So it seems we have the two choices:
> > 
> >   1. Conform to industry norms for disclosures and find a way of bringing
> >      an NDA framework to Linux Security fix handling 
> >   2. Force industry to adopt new norms that actually work well with open
> >      source.
> > 
> 
> Or my proposal of 3: have a policy, get lawyers to agree to it, and
> make it barely be an NDA.  I don’t know how practical it is, but it
> could be a nice middle ground.

The only middle ground is "gentleman's agreement".  The main problem
any legal agreement is what are the teeth if someone violates the NDA
and breaks the embargo.  The reason why it will be very hard for some
third-party, like the LF, to sign any kind of NDA on behalf of
independent developers is that it puts the liability risk on the LF.
And the LF's lawyers aren't going to be comfortable with this.

We've been through this before with the TAB and getting all of the TAB
members under an NDA so we could talk about pre-standardized UEFI
proposals.  We looked at trying to get the LF to sign an NDA for the
TAB members who didn't work for companies which had an NDA with UEFI,
and it just didn't work.  Ultimately, what we did is we negotiated a
specific NDA just for me (where it would be my house on the line in
terms of an NDA violation), and I then had to get the Google's lawyers
to OK my signing it as a personal NDA.  The whole process took
**months**.

If we need to do this when we're in a hurry, by the time the lawyers
get over their "we must reduce our client's risk to zero" obsession,
the security problem will have leaked, and the embargo and the NDA
will be moot.

					- Ted
