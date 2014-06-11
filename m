Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E6F9F7AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 22:17:57 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8553F201CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 22:17:57 +0000 (UTC)
Message-ID: <1402525074.2523.71.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 11 Jun 2014 15:17:54 -0700
In-Reply-To: <CALCETrXEZ-Z+Kqgs28RCe7r9M-+QhbR2tQdMtznDB2uwmSmvYA@mail.gmail.com>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611175433.GA10462@roeck-us.net>
	<CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
	<20140612075355.4b0d1f5a@canb.auug.org.au>
	<CALCETrXEZ-Z+Kqgs28RCe7r9M-+QhbR2tQdMtznDB2uwmSmvYA@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	David Vrabel <david.vrabel@citrix.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: Re: [Ksummit-discuss] Topic: Removal of code that is still in use
 by users but there is a better code.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2014-06-11 at 15:01 -0700, Andy Lutomirski wrote:
> On Wed, Jun 11, 2014 at 2:53 PM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > Hi Bjorn,
> >
> > On Wed, 11 Jun 2014 13:43:18 -0600 Bjorn Helgaas <bhelgaas@google.com> wrote:
> >>
> >> all did our jobs perfectly, we would never add a change to Linux that
> >> broke compilation of anything.  So if there's a file that doesn't
> >> compile anymore, I think of that as a result of a mistake somewhere
> >> along the line.  We can use that mistake to deduce that nobody cares
> >> anymore, but it'd be a lot nicer to have a scheme that didn't depend
> >> on people making random mistakes.
> >
> > We could start making nonrandom mistakes? ;-)
> 
> How about adding CONFIG_DELETED_THINGS.  If you enable it, you get a
> message asking you to speak up if you actually need anything in there.
> CONFIG_DELETED_THINGS would default to n, and the new (and temporary)
> things under it would also default to n.
> 
> Think feature-removal-schedule, but with teeth.

This would eventually become like CONFIG_EXPERIMENTAL before somebody
put it out of its misery: a pointless thing which everybody enables.

Could we just step back and ask what the burning need to do this (at
least for drivers; I understand the ABI deprecation headache) is?  Most
driver code for obsolete things harmlessly compiles; why bother trying
to hunt them down and shoot them when they're not really causing
offence?

James
