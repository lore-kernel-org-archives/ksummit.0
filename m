Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D9DB125A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:22:52 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 56B4625B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:22:52 +0000 (UTC)
Message-ID: <1472498570.2376.44.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Johannes Berg <johannes@sipsolutions.net>, Jiri Kosina
	<jikos@kernel.org>,  Steven Rostedt <rostedt@goodmis.org>
Date: Mon, 29 Aug 2016 12:22:50 -0700
In-Reply-To: <1472496471.14003.14.camel@sipsolutions.net>
References: <1472403654.2420.29.camel@HansenPartnership.com>
	<20160829090703.1c063975@gandalf.local.home>
	<1472486062.2376.26.camel@HansenPartnership.com>
	<20160829121615.25e5ddce@gandalf.local.home>
	<alpine.LNX.2.00.1608292021550.22028@cbobk.fhfr.pm>
	<1472496471.14003.14.camel@sipsolutions.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Owning your own copyrights in
 Linux
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2016-08-29 at 20:47 +0200, Johannes Berg wrote:
> On Mon, 2016-08-29 at 20:32 +0200, Jiri Kosina wrote:
> 
> > Just for the sake of completness, the situation is quite
> > dramatically different in US (where the jurisdiction system is
> > based
> > on common law, which means that employer indeed owns the copyright
> > in
> > work created by employees), whereas in civil law systems, it's
> > usually legally impossible to assign the moral rights away from the
> > actual person creating the work (the employer just usually owns a
> > licence to the economic rights).
> 
> *exclusive* license. That's an important distinction.

Indeed: even under jurisdictions which make a distinction between
economic and moral rights (only the former being assignable), an
exclusive licence becomes the equivalent of ownership.  You certainly
can't use residual moral rights to enforce a licence like the GPL
because that's mostly about economic rights.

> > If there is any kind of session at KS about this matter, this 
> > aspect should be taken into account.
> > 
> 
> I'm not really sure it matters *that* much. Where you'd negotiate 
> "own copyright and give $company the regular license (perhaps plus 
> some extra license to use it as non-GPL, or some covenant not to sue, 
> or such)" in the US, you'd have to negotiate "own economic rights 
> [...]" in other jurisdictions.
> 
> Much of the negotiation leading up to that will be very similar,
> presumably.

Exactly: to be a party to GPL enforcement, you still need to retain
some of the economic rights ownership you likely gave away in your
employment contract.

I suspect the eventual contract may look different. The problem in
Europe is that the concept of ownership of the work is usually tied to
the moral rights, so you can't give it up (even if you give up
effective ownership when you sign away the economic rights).  In the US
negotiation is definitely over ownership and what you usually end up
with is so called undivided partial ownership, which gives either party
full rights to enforce and sublicense.   I think, although never having
had to negotiate this type of agreement in europe I'm not really
experienced, that you'd need to negotiate to the point where each party
has a non-exclusive licence with the right to sublicense to have some
sort of equivalence.

Is there someone who's done this in Europe?

James
