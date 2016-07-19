Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 12BAA919
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 21:26:53 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5738125B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 21:26:52 +0000 (UTC)
Date: Tue, 19 Jul 2016 14:26:45 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20160719212645.GA14203@x>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87inw1skws.fsf@x220.int.ebiederm.org>
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

On Tue, Jul 19, 2016 at 10:32:51AM -0500, Eric W. Biederman wrote:
> Would a gcc plugin that checks the most interesting things that sparse
> checks on every build be interesting? (endianness of integer types for example)

I'd like to see those checks more widely available, ideally not just as
plugins.  Some exploration of that occurred upstream:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59852 (bitwise/endian types)
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59856 (contexts/locking)
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59851 (nocast: no implicit conversions)
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59850 (address spaces)
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59855 (designated_init; done)

I'd love to see someone pick those up and get them into upstream GCC.

> Would a type system for pointers derived from separation logic that
> has the concept that a piece of data is owned by a piece of running
> code rather than another piece of data be interesting?

Interesting, yes, but trying to track "ownership" gets complicated
*fast* to handle real-world cases.  Rust went through quite a lot of
work, and multiple iterations, to get to the system it has now.  I don't
think you'd be able to handle many of the cases in the kernel without
about that much complexity.

> I would really like to get a feel among kernel maintainers and
> developers if this is something that is interesting, and what kind of
> constraints they think something like this would need to be usable for
> the kernel?

I think the biggest constraint is that new tools get very slow adoption,
and it's incredibly difficult to introduce a new *mandatory* tool or
compiler version (with the exception of tools that ship with the
kernel).  And optional ones have a tendency to break due to patches from
people not running them.  Apart from that: false positive rate.

Ideally, build something you can opt into using, such that if you
explicitly use it, the false positive rate should be *zero* by design.

- Josh Triplett
