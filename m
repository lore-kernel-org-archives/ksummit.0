Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 961B39C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 18:16:40 +0000 (UTC)
Received: from out02.mta.xmission.com (out02.mta.xmission.com [166.70.13.232])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A5F78209
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 18:16:39 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Josh Triplett <josh@joshtriplett.org>
References: <87inw1skws.fsf@x220.int.ebiederm.org> <20160719212645.GA14203@x>
Date: Sat, 30 Jul 2016 13:03:30 -0500
In-Reply-To: <20160719212645.GA14203@x> (Josh Triplett's message of "Tue, 19
	Jul 2016 14:26:45 -0700")
Message-ID: <87vazn57gt.fsf@x220.int.ebiederm.org>
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
>
>> Would a type system for pointers derived from separation logic that
>> has the concept that a piece of data is owned by a piece of running
>> code rather than another piece of data be interesting?
>
> Interesting, yes, but trying to track "ownership" gets complicated
> *fast* to handle real-world cases.  Rust went through quite a lot of
> work, and multiple iterations, to get to the system it has now.  I don't
> think you'd be able to handle many of the cases in the kernel without
> about that much complexity.

Politely Rust did it the stupid way.  "ownership" or perhaps better said
who is allowed to modify the data is an active piece of code thing
rather than a data thing, and Rust did it as a data thing.

The kernel has some very interesting data structures and all kinds of
hand rolled smp syncrhonization primitives.   So I don't doubt there
will be challenges, but the situation will look nothing like what Rust
did.

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

Which is what makes types as opposed to other things nice.  Types
arguably don't have a false positive rate.  Unfortunately types can
sometimes be very pendantic and if everyone isn't using them things go
splat.

Eric
