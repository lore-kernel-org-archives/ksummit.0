Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4AA241086
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Oct 2018 18:56:36 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 68C2C7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Oct 2018 18:56:35 +0000 (UTC)
Date: Tue, 9 Oct 2018 11:56:23 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Rainer Fiebig <jrf@mailbox.org>
Message-ID: <20181009185622.GA20960@localhost>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
	<20181008152043.GA5796@localhost> <1718828.OxLgMoHbrt@siriux>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1718828.OxLgMoHbrt@siriux>
Cc: james.bottomley@hansenpartnership.com, linux-kernel@vger.kernel.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 09, 2018 at 08:29:24PM +0200, Rainer Fiebig wrote:
> Am Montag, 8. Oktober 2018, 08:20:44 schrieb Josh Triplett:
> > On Sat, Oct 06, 2018 at 02:36:39PM -0700, James Bottomley wrote:
> > > The current code of conduct has an ambiguity in the it considers publishing
> > > private information such as email addresses unacceptable behaviour.  Since
> > > the Linux kernel collects and publishes email addresses as part of the patch
> > > process, add an exception clause for email addresses ordinarily collected by
> > > the project to correct this ambiguity.
> > 
> > Upstream has now adopted a FAQ, which addresses this and many other
> > questions. See https://www.contributor-covenant.org/faq .
> > 
> > Might I suggest adding that link to the bottom of the document, instead?
> > (And then, optionally, submitting entries for that FAQ.)
> > 
> 
> The Code of Conflict has 28 lines, including the heading. 
> The Code of Conduct has 81 lines, including the heading. And it needs a FAQ. Hm.

Yes, it turns out to be a more complicated problem than it was
previously oversimplified to. People don't automatically share a common
understanding.
