Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CD06A1BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Aug 2016 07:03:45 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2B46DA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Aug 2016 07:03:45 +0000 (UTC)
Date: Thu, 25 Aug 2016 03:03:38 -0400
From: Josh Triplett <josh@joshtriplett.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20160825070338.i5g5obwgjamaq7fk@x>
References: <e315013e77cc851b040b5b5f4fe9f0bf@motives.com>
	<20160824130832.GA28564@kroah.com>
	<1472052583.61594.577.camel@infradead.org>
	<20160824174724.GE30853@kroah.com> <20160824205011.GA31615@ebb.org>
	<20160824215447.GA5368@kroah.com> <20160825040619.GA32072@ebb.org>
	<20160825063707.fcgu3ogqqcun2vmy@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160825063707.fcgu3ogqqcun2vmy@thunk.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 25, 2016 at 02:37:07AM -0400, Theodore Ts'o wrote:
> On Wed, Aug 24, 2016 at 09:06:19PM -0700, Bradley M. Kuhn wrote:
> > I work for an organization that holds copyrights in Linux, and Conservancy
> > furthermore coordinates a coalition of developers who signed agreements
> > asking us to enforce their copyrights.  We also have embedded device users
> > writing us weekly asking us to please get the Linux sources for their
> > devices.  We have a huge mandate, and we're going to enforce (always adhering
> > to the Principles of Community-Oriented Enforcement, of course).
> 
> Bradley,
> 
> If the Conservancy is going to do what it's going to do, it's not
> clear what's the purpose of having a discussion.
> 
> Having a debate implies that there is a question on the floor, and to
> date it's not clear what the question or questions would be.  Yes,
> it's clear what you and Karen have proposed as the *topic*, and the
> Conservancy's positions aren't really a secret --- but that's not a
> debatable question; it's not a specific proposal that could be
> examined.

A few possibilities:

- What's the right way to handle enforcement?  (The most general version
  of this question has no hope of consensus, but I suspect we could
  fairly easily reach consensus about what we don't want to see people
  doing, for instance.)

- What (if anything) do we do in response to the "wrong" way to handle
  enforcement?  Would we ever have a response at the kernel level,
  rather than just within a maintainer team (as happened with
  netfilter)?  Is there a line where we'd stop taking patches from
  someone because they've created problems in the legal arena?  Where is
  that line?

- Do any of our current development procedures make enforcement easier
  or harder?

- Could we incorporate anything into our development procedures that
  improves the situation, analogous to the DCO?  (Not suggesting a live
  brainstorming session, but rather suggesting that if a concrete
  proposal exists for such a change, Kernel Summit seems like the place
  to discuss it.)

- EXPORT_SYMBOL_GPL and MODULE_LICENSE.  I know that some history exists
  suggesting that they've helped with some cases.  Do they potentially
  make enforcement more difficult, though?  (This also includes informal
  or internal enforcement/compliance efforts; for instance,
  EXPORT_SYMBOL_GPL may provide a supporting argument for such efforts,
  but conversely EXPORT_SYMBOL may then hinder such efforts.)

- A recent proposal (with patch) suggested adding an additional
  (GPL-compatible) license to the table of licenses in MODULE_LICENSE.
  Should that happen?  Would it make sense to use a different approach
  in MODULE_LICENSE, such as just "GPL-compatible" or "GPL and
  additional rights"?  Would any of the possible approaches there cause
  problems?

Some of these questions may potentially work better on a mailing list;
some of them seem like good topics for in-person discussion, especially
if there's research or answers that friendly legal experts could
provide.
