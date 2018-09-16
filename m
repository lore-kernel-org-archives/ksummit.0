Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C81ABA0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 22:15:28 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B473A2D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 22:15:27 +0000 (UTC)
Date: Sun, 16 Sep 2018 18:15:23 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20180916221523.GB3575@thunk.org>
References: <CAPcyv4i=h-7CHpu5ZvXxPsgUOPY-B-wAjX3e5+W9vCm+o081xw@mail.gmail.com>
	<1591325.98K2JSm7l9@avalon>
	<CAPM=9txDYkWu3Ta1HN0vw5Hp-isHccA4Nfj+XbPOma6BskKrKg@mail.gmail.com>
	<7500551.ylj9XQ2o2G@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7500551.ylj9XQ2o2G@avalon>
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

On Fri, Sep 14, 2018 at 10:08:47AM +0300, Laurent Pinchart wrote:
> > 
> > https://lwn.net/Articles/154602/
> > 
> > Was the original advice Linus got and raised.
> > 
> > Since then I think this advice has been sufficiently diluted by people
> > lobbying for _GPL on any/all new exports, which means that we've
> > probably neutered the actual usefulness of it from a legal point of
> > view, instead of having a discussion about why a symbol is internal
> > and hints at a derived work, we slapped it on a bunch of interfaces
> > where it probably isn't applicable.

First of all, there's no real value (and probably some real harm) to
have programmers trying to debate questions of legal interpretation.
It would be much like asking lawyers to debug deadlocks in kernel
code.  It's not highest and best use of the people involved's talents.  :-)

Secondly, if you look very carefully at the above e-mail, the advice
didn't say anything about what criteria should be used.  In fact, the
advice was to say that instead of trying to define the criteria
(whether or not it is about internal implementation or anything else),
what was important was that there *was* a difference, and that it be
expressed explicitly in the code.


In practice, it's been mostly been up to the person who originally
implements the interface to decide whether it should be exported at
all, and if so, whether it's exported using EXPORT_SYMBOL, or
EXPORTED_SYMBOL_GPL.  I don't think there has ever been a commonly
agreed-upon set of criteria.

My personal opinion is that a good dividing line is whether the
interface is likely to stay ABI-compatible.  After all, that's the
promise that we make for userspace interfaces; once an interface is
established, it can only be changed in a way that breaks userspace for
extraordinary reasons (e.g., if it's the only way to deal with a
security issue).  And it's *clearly* understood that whether or not
you believe the GPL can infect over any interface (which is a legal
question for which the answer may vary in different jourisdictions),
that it doesn't infect across the system call boundary.

Now, obviously we don't make guarantees of absolute ABI stability of
EXPORT_SYMBOL interfaces.  But my personal take on it is that one of
the essential differences between EXPORT_SYMBOL_GPL and EXPORT_SYMBOL
is that EXPORT_SYMBOL_GPL is _more_ unstable than EXPORT_SYMBOL.

Cheers,

					- Ted
