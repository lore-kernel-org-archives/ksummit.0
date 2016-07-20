Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD70292B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 00:21:21 +0000 (UTC)
Received: from out03.mta.xmission.com (out03.mta.xmission.com [166.70.13.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFA63FD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 00:21:20 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: James Bottomley <James.Bottomley@HansenPartnership.com>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<1468962539.2383.82.camel@HansenPartnership.com>
Date: Tue, 19 Jul 2016 19:08:12 -0500
In-Reply-To: <1468962539.2383.82.camel@HansenPartnership.com> (James
	Bottomley's message of "Tue, 19 Jul 2016 14:08:59 -0700")
Message-ID: <87lh0xf9xv.fsf@x220.int.ebiederm.org>
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

James Bottomley <James.Bottomley@HansenPartnership.com> writes:

> On Tue, 2016-07-19 at 10:32 -0500, Eric W. Biederman wrote:
>> Historically the types in C came about because the machines
>> fundamentally supported different data types either with different
>> sizes or different characteristics (i.e. u8, u16, float, double).
>> These data types and the C type system were built so programmers
>> could tell the machine what they needed it to do.
>> 
>> There is another genesis of types that started with the simply typed
>> lambda calculs that is about eliminating common errors and otherwise
>> helping a programmer get their code right.
>> 
>> In the years since C was invented there has been a lot of activity
>> and a
>> little bit of progress in this area.  Would people be receptive to
>> improvements in this area?
>> 
>> I would like to talk to folks and gague what it would take to make
>> improvements in this area acceptable, practical, and useful.
>> 
>> Would a gcc plugin that checks the most interesting things that 
>> sparse checks on every build be interesting? (endianness of integer 
>> types for example)
>
> How would this be different from simply automatically running sparse in
> the kernel build if the binary is present (effectively making make C=1
> the default)?

Nothing.  I am just honestly looking at ways that we can get things to
always or almost always run.   Sparse isn't getting run regularly now so
I was suspect that would not be as good of a solution.

>> Would a type system for pointers derived from separation logic that
>> has the concept that a piece of data is owned by a piece of running
>> code rather than another piece of data be interesting?
>
> By this you mean a thread of execution that should be expected to free
> the data pointed to when it finishes?  Sort of like a self garbage
> collecting reference?

Not really.  The big idea is to make expressable in the type system the
key concepts on how a programmer reasons about their data structures,
instead of trying to make programmers perform some convoluted logic to
express things in concepts that are trivial to implement in a type
system.

Another way to talk about it would be complete alias analysis at type
checking time.

Which means that the type system then knows essentially everything the
programmer knows about aliases and object lifetimes and if you don't
pass something on or free it, the type checker then knows you made
a mistake.

>>   * This cleanly allows for doubly linked lists.
>>   
>>   * This is useful to ensure that data is either put in another data
>>     structure where it is remembered or it is freed.
>> 
>>   * This is useful to ensure reference counts are not leaked.
>> 
>>   * This is useful to ensure that every lock is paired with an
>> unlock.
>> 
>> My personal filter for things like this are types that can be checked
>> in time proportional to the amount of code to be built so that it is
>> roughly the same situation we are in now.
>> 
>> 
>> Given it's heritage and it's history the type system in C has serious
>> limitations that I don't know if they are correctible, when it comes 
>> to catching programmer mistakes: silent truncation of unsigned types
>> into smaller unsigned types, casts, etc.  Would people be willing to
>> consider a simple, link compatible alternative to C for some of the 
>> code in the kernel that had the same low level control of the machine 
>> but had a type system that made catching mistakes easier?
>> 
>> 
>> Deploying solutions like this will take a fair bit of grunt work, and
>> time similar or worse than the big kernel lock removal.  Given how
>> widely Linux is used and how annoying some of these bugs can be I 
>> think it is worthwhile to dig in and see what kind of improvements 
>> can be made.
>> 
>> I would really like to get a feel among kernel maintainers and
>> developers if this is something that is interesting, and what kind of
>> constraints they think something like this would need to be usable 
>> for the kernel?
>
> I've got to say that rewriting in some as yet undefined language simply
> to get better typing and conversions looks very daunting.  Before even
> considering this, can you answer why an extension to sparse, which
> would mostly flag the problems if we use the correct annotations,
> wouldn't work just as well?  We'd still have to add the additional
> annotations (and someone would have to update sparse) but it would
> still be a lot easier than rewriting and giving the kernel a build
> dependency on whatever the rewrite is done in.

That is a very good question.  The short answer is that I am not yet
convinced I can figure out how to retrofit the type checks I want onto
C's type system.  I have implemented the type checks I am looking at in
a fresh language I am toying with where I can throw out inconvinient
unnecessary corner cases.  After I finished boiling the ocean the basic
types were similar enough to C's type system that I think I can make
the connection but I haven't tried yet.

Assuming things can be sorted so they coexist nicely C's types.  No
advantage.  If it turns out that to make the code not a pain to write we
need better syntax or some basic type inference there is a large
advantage in converting code.

The first place I can think of where I might get hung up in the area of
discriminated unions.  I am pretty certain that some cases of type
safety will require them and C doesn't have anything like that today.  A
practical example would be a type system that ensures you call
IS_ERR(ptr) before you use a pointer as a pointer.

Ordinary C unions and type casts that serve the same purpose would at the
end of the day all have to be reabstracted.  Because otherwise memory
safety cound not be analyized.

Some of that reabstraction I will need to introduce type variables which
a completely foreing concept to C.

On the flip side since the linux kernel and low level programming where
precise control of the machine happens is my target audience it is
definitely worth looking at what can be done in a context like sparse.
That is the fastest way to connect the tools with the real world
problems.  If it can't be done or if it can't be made nice simple
and easy to use then there will be good arguments for why we need a new
syntax.

Mostly I asked the question because the type system would be so much
easier in a green field setting, and I wanted to be lazy.  So hearing
the common sense request (Please fix C.) Is helpful to get that lazy
part of myself in gear.

The end game for me is a type system that doesn't permit memory errors,
reference counting errors, locking errors, or deadlocks, while at the
same time allowing pretty much the code and data structures that we use
in the kernel today.

Eric
