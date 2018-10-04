Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E00BCCB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Oct 2018 22:04:16 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EFB0DA3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Oct 2018 22:04:15 +0000 (UTC)
Date: Thu, 4 Oct 2018 16:04:14 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20181004160414.20c72c21@lwn.net>
In-Reply-To: <alpine.DEB.2.21.1810042323350.29948@nanos.tec.linutronix.de>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon>
	<20181004203956.GR32577@ZenIV.linux.org.uk>
	<20181004145631.5d1c3fb2@lwn.net>
	<alpine.DEB.2.21.1810042323350.29948@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
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

On Thu, 4 Oct 2018 23:27:33 +0200 (CEST)
Thomas Gleixner <tglx@linutronix.de> wrote:

> On Thu, 4 Oct 2018, Jonathan Corbet wrote:
> > On Thu, 4 Oct 2018 21:39:57 +0100
> > Al Viro <viro@ZenIV.linux.org.uk> wrote:
> >   
> > > 	* contributor Alice gets banned from contributing, for whatever reason
> > > 	* Alice finds a roothole and posts a technically valid fix
> > > 	* maintainer Bob sees the posting, verifies that the bug is real, that
> > > the fix is correct and that the source of that patch is banned.  
> > 
> > So, while remedies under the CoC are yet to be determined in any sort of
> > detail, I don't believe I have heard anybody talk about banning the
> > acceptance of patches from anybody.  Speaking only for myself, I have a
> > hard time seeing that happening in the absence of other sorts of concerns
> > (the event where a would-be contributor started sending under a sock
> > puppet name because nobody would consider his work anymore comes to mind).
> > 
> > What *is* common under CoCs in various projects is banning from specific
> > fora, such as this mailing list.  But that is a different thing and
> > doesn't bring about the scenario described above.  
> 
> It does. Alice is banned from the mailing list, but still posts the
> roothole fix to LKML and Cc's the maintainer according to the rules. LKML
> drops the post, but the maintainer still gets it. Now what is he supposed
> to do? Ignore it, because he forgot to add Alice to his /dev/null filter?

Again, I don't think anybody is envisioning telling maintainers that they
cannot accept patches from a given individual over conduct issues, and
I've certainly heard no talk of trying to mandate email filters.  I don't
understand who you think might be telling the maintainer not to apply such
a patch..?

One fairly common approach to conduct problems is to have the person
involved work through somebody who is willing to deal with them for a
while.  This sounds kind of like that sort of scenario.

The community needs to figure out how it wants to handle the disciplinary
side of things should we ever have a case where trying to talk to the
person involved isn't enough.  I suppose that *could* involve a blanket
refusal to accept that person's patches under any circumstances, but I
don't think I've ever seen that in the past except in cases where there
were issues with the patches themselves.  I would be surprised to see that
change.

In any case, this scenario is one thing to keep in mind as we work all
this out.

jon
