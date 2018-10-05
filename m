Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B83BF1310
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 16:03:17 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0AE42108
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 16:03:16 +0000 (UTC)
Date: Fri, 5 Oct 2018 12:03:14 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20181005160314.GA20342@thunk.org>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon>
	<20181004203956.GR32577@ZenIV.linux.org.uk>
	<20181004145631.5d1c3fb2@lwn.net>
	<alpine.DEB.2.21.1810042323350.29948@nanos.tec.linutronix.de>
	<20181004160414.20c72c21@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181004160414.20c72c21@lwn.net>
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

On Thu, Oct 04, 2018 at 04:04:14PM -0600, Jonathan Corbet wrote:
> Again, I don't think anybody is envisioning telling maintainers that they
> cannot accept patches from a given individual over conduct issues, and
> I've certainly heard no talk of trying to mandate email filters.  I don't
> understand who you think might be telling the maintainer not to apply such
> a patch..?
> 
> One fairly common approach to conduct problems is to have the person
> involved work through somebody who is willing to deal with them for a
> while.  This sounds kind of like that sort of scenario.
> 
> The community needs to figure out how it wants to handle the disciplinary
> side of things should we ever have a case where trying to talk to the
> person involved isn't enough.  I suppose that *could* involve a blanket
> refusal to accept that person's patches under any circumstances, but I
> don't think I've ever seen that in the past except in cases where there
> were issues with the patches themselves.  I would be surprised to see that
> change.

It might be helpful to consider that cutting off a contributor has
happened already, when the netfilter core team, as maintainers,
collectively made a decision to not accept any patches from a
copyright troll.  Neither Linus, nor the TAB, nor the LF were involved
in that decision.  That maintainer team decided to do that on their
own.  The sky didn't fall down.  No one sued the netfilter core team
for millions and millions of dollars.  In fact, it seems to me that
the community as a whole breathed a sign of relief, and we all moved
on.

I don't know what the netfilter core team would decide to do if the
copyright troll submitted a security patch.  It wouldn't be up to me,
but if they asked them for my advice, I'd tell them they received a
bug report, and they should fix it.  In this particular case, I'd
advise them to find a different way to fix the bug, and rewrite it in
a clean room fashion, because, you know --- copyright troll --- but I
don't think it's worth it to figure out how to handle every single
eventuality ahead of time.

Like most personnel matters, it's going to be very case specific, but
it should be noted that the decision to cut off contributions from the
copyright troll happened after much provocation.  It was *not*
something that was done casually, and I'm sure there was a lot careful
thought, and probably emtional anguish, involved.

People seem to be assuming that this kind of very extreme decision
happen casually and easily, but it's happened only *once* in over a
quarter century of Linux kernel development.  And it only got done
after **substantial** damage had already been inflicted, and it was
the only way to protect the community.

	  	    	   	       	      - Ted
