Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 91101C84
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 18:56:56 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2E2F3766
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 18:56:56 +0000 (UTC)
Date: Sun, 9 Sep 2018 14:56:51 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20180909185651.GF22251@thunk.org>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9E5C84F3-410E-4177-AA96-FA09A8D53BC6@amacapital.net>
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

On Sun, Sep 09, 2018 at 11:17:20AM -0700, Andy Lutomirski wrote:
> 
> What I want is the opposite of an NDA. I want a gentlemen’s
> agreement plus an explicit statement that the relevant people *may*
> talk about the issue among themselves despite any NDAs that might
> already exist. And that they may release patches when the embargo is
> up. And that the embargo has an end date, and that the developers
> may decline an extension.

So what you're talking about is some kind of "Memo of Understanding"
that has no talk about "if this leaks it will Intel will suffer
millons and billons and zillons of dollars and Intel well sue you
until your assets are a smoking crater in the ground"?

If there are no consequences to violating the Gentleman's agreement
(other than not being included the next time *when* another CPU
vulnerability comes up), then nothing really needs to be signed, since
it has no legal impact.

I'd certainly support such a thing, but in my view it's really no
different from Linus's #2:

   2. Force industry to adopt new norms that actually work well with open
      source.

If the MOU with no teeth is enough to save the lawyer's face, that
would be great.

					- Ted
