Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 169DE67AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 15:26:04 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ADDAF108
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 15:26:03 +0000 (UTC)
Message-ID: <1538753161.4380.5.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Josh Triplett <josh@joshtriplett.org>, Geert Uytterhoeven
	<geert@linux-m68k.org>
Date: Fri, 05 Oct 2018 08:26:01 -0700
In-Reply-To: <20181005075156.GB24138@localhost>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon> <20181004203956.GR32577@ZenIV.linux.org.uk>
	<20181004205648.GB10640@localhost>
	<CAMuHMdWXOJL6W-9FodvuKABe=Lw0Or-nuHSEwrv1wRR0sW-hNw@mail.gmail.com>
	<20181005075156.GB24138@localhost>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2018-10-05 at 00:51 -0700, Josh Triplett wrote:
> On Fri, Oct 05, 2018 at 09:16:06AM +0200, Geert Uytterhoeven wrote:
[...]
> > It's not exactly the same: for the non-functional email address,
> > you can still fix the issue yourself with a "Reported-by" line,
> > without violating the rule about publishing addresses, as the
> > address is no longer valid.
> 
> That wasn't the situation as proposed; the situation as proposed
> involved a patch already written. (And the email address issue was
> already discussed; an email address attached to a publically posted
> patch is hardly private information.)

It's been discussed but I don't think there's been agreement about the
potential problems.  The problematic piece is specific mention of email
address as private information.

To give a more cogent example: it also mentions physical address. 
However, for anyone who owns their own house physical address is also a
matter of public record; to find it all I have to do is search the
county property records which means I can get it as long as I roughly
know where you live.  I think posting someone's actual address would be
a CoC violation because it's irrelevant to any patch process I can
think of and yet for most people it would still be "public
information".  The intent around that particular clause of the CoC
seems to be to give enhanced privacy to something that may or may not
be in the public domain, but it's badly worded to cover stuff that we
use as part of our everyday process.

James
