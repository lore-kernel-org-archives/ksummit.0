Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1D55371
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 22:34:22 +0000 (UTC)
Received: from out02.mta.xmission.com (out02.mta.xmission.com [166.70.13.232])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 86532CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 22:34:21 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Josh Triplett <josh@joshtriplett.org>
References: <87inw1skws.fsf@x220.int.ebiederm.org> <20160719212645.GA14203@x>
	<87vazn57gt.fsf@x220.int.ebiederm.org>
	<20160730184950.2elfi4edvkuthwaw@x>
	<87r3aa3oom.fsf@x220.int.ebiederm.org>
	<20160730205657.dg2lpbfao2ync4am@x>
Date: Sat, 30 Jul 2016 17:21:15 -0500
In-Reply-To: <20160730205657.dg2lpbfao2ync4am@x> (Josh Triplett's message of
	"Sat, 30 Jul 2016 13:56:57 -0700")
Message-ID: <874m763gys.fsf@x220.int.ebiederm.org>
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

> On Sat, Jul 30, 2016 at 02:34:33PM -0500, Eric W. Biederman wrote:
>> Josh Triplett <josh@joshtriplett.org> writes:
>> 
>> > On Sat, Jul 30, 2016 at 01:03:30PM -0500, Eric W. Biederman wrote:
>> >> 
>> >> Josh Triplett <josh@joshtriplett.org> writes:
>> >> 
>> >> > On Tue, Jul 19, 2016 at 10:32:51AM -0500, Eric W. Biederman wrote:
>> >> >> Would a type system for pointers derived from separation logic that
>> >> >> has the concept that a piece of data is owned by a piece of running
>> >> >> code rather than another piece of data be interesting?
>> >> >
>> >> > Interesting, yes, but trying to track "ownership" gets complicated
>> >> > *fast* to handle real-world cases.  Rust went through quite a lot of
>> >> > work, and multiple iterations, to get to the system it has now.  I don't
>> >> > think you'd be able to handle many of the cases in the kernel without
>> >> > about that much complexity.
>> >> 
>> >> Politely Rust did it the stupid way.  "ownership" or perhaps better said
>> >> who is allowed to modify the data is an active piece of code thing
>> >> rather than a data thing, and Rust did it as a data thing.
>> >
>> > I'd be interested to hear more details on what you mean by this, because
>> > the way you've described it doesn't make sense to me.  The way lifetimes
>> > are implemented in Rust seems very much like "an active piece of code
>> > thing".  Can you give an example of the distinction you're making?
>> 
>> But that is a lifetime of a piece of data, that isn't ownership of data.
>> The data is still owned by some pointer.
>> 
>> Ownership by code looks roughly like:
>> 
>> 	head = acquire_list(&task_list);
>> 
>> 	/* At the data level head points to the first element of the list */
>>         /* The type of head is a recursive type that includes every
>>          * element on the list.
>>          */
>>          for (ptr = head; ptr; ptr = ptr->next) {
>>          	/* The type of ptr shares with head the type of the list.
>>                  * Which allows both ptr and head to be valid
>>                  * and the code of this function to continue owning the list.
>>                  */
>>                  ptr->scratch++;
>>                  /* As the owner any mutation may be performed on the list elements */
>> 	}
>> 
>> 	release_list(list);
>>         /* Accessing list past this point would be a type error */
>> 
>> Where acquire_list and grabs the appropriate spinlock and then returns
>> ownership of the list to the calling function through a ponter to the
>> first element of the list.
>
> (Nit: I think in that last line you wanted release_list(head);)

Yes.

> What happens if the code saves a copy of either head, ptr, or something
> accessed via ptr, and then some other distant code accesses that after
> release_list?  (For instance, consider a function that takes a pointer
> to "scratch" and retains that pointer.)  In the type system you
> envision, what prevents that?

It depends a bit on how the copy is saved.  Without something special
when you reach the line release_list(head) the return of release_list
consumes the list as free does.

Which type wise means that the pointers you talk of remain valid things,
but you can not dereference them because the type they point to has
become unusable.   Which makes all future derefernces impossible.

> What happens if the code in that region, while looking at one value of
> ptr, changes the list in a way that invalidates ptr?  What prevents
> that?

Depends.  If it invalides ptr.  ptr becomes unusable (at least
undereferenceable).  And using dereferencing pointer past that point
does not type check.

Which is a long way of saying that functions are allowed to change the
destination types of pointers that are passed into them.  This changing
what pointers point to is the type equivalent of having preconditions
and postconditions.

Plus there is the other benefit to being able to change the type of
things by functions.  It is possible to build types that enforce state
machines by changing a the type of a variable and only making methods
available when they are valid to use.

And yes all of this depends upon having enough information to know
(within a small window) where all of the aliases for any value are at
any given time.

Eric
