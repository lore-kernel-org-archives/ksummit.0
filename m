Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5605E71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 18:49:58 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A411F216
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 18:49:57 +0000 (UTC)
Date: Sat, 30 Jul 2016 11:49:50 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20160730184950.2elfi4edvkuthwaw@x>
References: <87inw1skws.fsf@x220.int.ebiederm.org> <20160719212645.GA14203@x>
	<87vazn57gt.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87vazn57gt.fsf@x220.int.ebiederm.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 30, 2016 at 01:03:30PM -0500, Eric W. Biederman wrote:
> 
> Josh Triplett <josh@joshtriplett.org> writes:
> 
> > On Tue, Jul 19, 2016 at 10:32:51AM -0500, Eric W. Biederman wrote:
> >> Would a gcc plugin that checks the most interesting things that sparse
> >> checks on every build be interesting? (endianness of integer types for example)
> >
> > I'd like to see those checks more widely available, ideally not just as
> > plugins.  Some exploration of that occurred upstream:
> >
> > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59852 (bitwise/endian types)
> > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59856 (contexts/locking)
> > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59851 (nocast: no implicit conversions)
> > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59850 (address spaces)
> > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59855 (designated_init; done)
> >
> > I'd love to see someone pick those up and get them into upstream GCC.
> >
> >> Would a type system for pointers derived from separation logic that
> >> has the concept that a piece of data is owned by a piece of running
> >> code rather than another piece of data be interesting?
> >
> > Interesting, yes, but trying to track "ownership" gets complicated
> > *fast* to handle real-world cases.  Rust went through quite a lot of
> > work, and multiple iterations, to get to the system it has now.  I don't
> > think you'd be able to handle many of the cases in the kernel without
> > about that much complexity.
> 
> Politely Rust did it the stupid way.  "ownership" or perhaps better said
> who is allowed to modify the data is an active piece of code thing
> rather than a data thing, and Rust did it as a data thing.

I'd be interested to hear more details on what you mean by this, because
the way you've described it doesn't make sense to me.  The way lifetimes
are implemented in Rust seems very much like "an active piece of code
thing".  Can you give an example of the distinction you're making?
