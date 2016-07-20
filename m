Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD2F42C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 02:49:02 +0000 (UTC)
Received: from out03.mta.xmission.com (out03.mta.xmission.com [166.70.13.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BD16A101
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 02:49:01 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Josh Triplett <josh@joshtriplett.org>
References: <87inw1skws.fsf@x220.int.ebiederm.org> <20160719212645.GA14203@x>
Date: Tue, 19 Jul 2016 21:36:05 -0500
In-Reply-To: <20160719212645.GA14203@x> (Josh Triplett's message of "Tue, 19
	Jul 2016 14:26:45 -0700")
Message-ID: <87inw1ave2.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain
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

Josh Triplett <josh@joshtriplett.org> writes:

> On Tue, Jul 19, 2016 at 10:32:51AM -0500, Eric W. Biederman wrote:
>> Would a gcc plugin that checks the most interesting things that sparse
>> checks on every build be interesting? (endianness of integer types for example)
>
> I'd like to see those checks more widely available, ideally not just as
> plugins.  Some exploration of that occurred upstream:
>
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59852 (bitwise/endian types)
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59856 (contexts/locking)
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59851 (nocast: no implicit conversions)
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59850 (address spaces)
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59855 (designated_init; done)
>
> I'd love to see someone pick those up and get them into upstream GCC.

Interesting.

Whatever I do I intend to start and the hard problem of types that know
where all of your aliases are because I have something that works and is
very interesting there, so I won't volunteer for those but that does
look like a reasonable part of the discussion.

>> Would a type system for pointers derived from separation logic that
>> has the concept that a piece of data is owned by a piece of running
>> code rather than another piece of data be interesting?
>
> Interesting, yes, but trying to track "ownership" gets complicated
> *fast* to handle real-world cases.  Rust went through quite a lot of
> work, and multiple iterations, to get to the system it has now.  I don't
> think you'd be able to handle many of the cases in the kernel without
> about that much complexity.

So "ownership" may be the wrong word.  See my reply to James Bottomley.
Rust never advanced past what are effectively smart pointers, and smart
pointers are the wrong concept for tracking aliases.

To get past that it takes some turning of all of your trained exceptions
of what a type system is tracking inside out (or at least it did for me)
but when you are done there is something that is much more expressive
and simpler than what Rust implemented.

Our fundamental complexity with smp synchronization may add up the
complexity again but it is undoubtedly possible to do better than Rust.
The way our kernel is built all of the core kernel would need to be in a
Rust unsafe block.  So I would not even consider doing what Rust did.

>> I would really like to get a feel among kernel maintainers and
>> developers if this is something that is interesting, and what kind of
>> constraints they think something like this would need to be usable for
>> the kernel?
>
> I think the biggest constraint is that new tools get very slow adoption,
> and it's incredibly difficult to introduce a new *mandatory* tool or
> compiler version (with the exception of tools that ship with the
> kernel).  And optional ones have a tendency to break due to patches from
> people not running them.  Apart from that: false positive rate.
>
> Ideally, build something you can opt into using, such that if you
> explicitly use it, the false positive rate should be *zero* by design.

With types what you do get a *zero* false positive rate by desgin.
Although sometimes you get a lot of const correctness kinds of
conversion requitements that are a royal PITA.

Eric
