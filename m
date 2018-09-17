Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E447BBAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 10:23:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DE41263D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 10:23:02 +0000 (UTC)
Date: Mon, 17 Sep 2018 07:22:50 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <20180917072250.5bbcb736@coco.lan>
In-Reply-To: <20180916221523.GB3575@thunk.org>
References: <CAPcyv4i=h-7CHpu5ZvXxPsgUOPY-B-wAjX3e5+W9vCm+o081xw@mail.gmail.com>
	<1591325.98K2JSm7l9@avalon>
	<CAPM=9txDYkWu3Ta1HN0vw5Hp-isHccA4Nfj+XbPOma6BskKrKg@mail.gmail.com>
	<7500551.ylj9XQ2o2G@avalon> <20180916221523.GB3575@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] EXPORT_SYMBOL_GPL
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Sun, 16 Sep 2018 18:15:23 -0400
"Theodore Y. Ts'o" <tytso@mit.edu> escreveu:

> On Fri, Sep 14, 2018 at 10:08:47AM +0300, Laurent Pinchart wrote:
> > > 
> > > https://lwn.net/Articles/154602/
> > > 
> > > Was the original advice Linus got and raised.
> > > 
> > > Since then I think this advice has been sufficiently diluted by people
> > > lobbying for _GPL on any/all new exports, which means that we've
> > > probably neutered the actual usefulness of it from a legal point of
> > > view, instead of having a discussion about why a symbol is internal
> > > and hints at a derived work, we slapped it on a bunch of interfaces
> > > where it probably isn't applicable.  
> 
> First of all, there's no real value (and probably some real harm) to
> have programmers trying to debate questions of legal interpretation.
> It would be much like asking lawyers to debug deadlocks in kernel
> code.  It's not highest and best use of the people involved's talents.  :-)
> 
> Secondly, if you look very carefully at the above e-mail, the advice
> didn't say anything about what criteria should be used.  In fact, the
> advice was to say that instead of trying to define the criteria
> (whether or not it is about internal implementation or anything else),
> what was important was that there *was* a difference, and that it be
> expressed explicitly in the code.
> 
> 
> In practice, it's been mostly been up to the person who originally
> implements the interface to decide whether it should be exported at
> all, and if so, whether it's exported using EXPORT_SYMBOL, or
> EXPORTED_SYMBOL_GPL.  I don't think there has ever been a commonly
> agreed-upon set of criteria.
> 
> My personal opinion is that a good dividing line is whether the
> interface is likely to stay ABI-compatible.  After all, that's the
> promise that we make for userspace interfaces; once an interface is
> established, it can only be changed in a way that breaks userspace for
> extraordinary reasons (e.g., if it's the only way to deal with a
> security issue).  And it's *clearly* understood that whether or not
> you believe the GPL can infect over any interface (which is a legal
> question for which the answer may vary in different jourisdictions),
> that it doesn't infect across the system call boundary.
> 
> Now, obviously we don't make guarantees of absolute ABI stability of
> EXPORT_SYMBOL interfaces.  But my personal take on it is that one of
> the essential differences between EXPORT_SYMBOL_GPL and EXPORT_SYMBOL
> is that EXPORT_SYMBOL_GPL is _more_ unstable than EXPORT_SYMBOL.

I have a different view. At least on media, we have a strong preference 
for EXPORT_SYMBOL_GPL() for kAPI, as it makes clear that we do expect them 
to be used by GPL compatible modules. We don't care much for symbols that
are used inside drivers that got coded on different modules (we have a
bunch of those usually on PCI/USB devices with multiple interfaces).

We still have some symbols with EXPORTED_SYMBOL(). The reason is mainly
historic. The symbols using it there are simply the ones that were
either:

 - added to the Kernel before the advent of EXPORT_SYMBOL_GPL(),
   e. g. added before 2005;
 - during the period of time where we are getting familiar with
   EXPORT_SYMBOL_GPL(), and was discussing about its usage along the
   subsystem;
 - On places where all other symbols were already using EXPORT_SYMBOL()
   and we didn't make any major changes. So, developers just wanted
   to follow the existing module coding style and didn't want to take
   any bias with regards of their usage or not by non-GPL'd code.

A common practice there is that, when someone rewrites the implementation
of some symbol using EXPORT_SYMBOL() is to use EXPORT_SYMBOL_GPL() at
the new implementation, to make clear about our desire that media modules
should be GPL'd, but when we do simpler changes (even adding/removing
parameters at the interface), we tend not to change it[1].

So, in practice, symbols with EXPORT_SYMBOL() are more stable, but just
because them are usually for some legacy code that still works.

[1] Usually just because EXPORT_SYMBOL*() comes after the function - it
is easy to not remember touching it when we don't do a complete rewrite.

Thanks,
Mauro
