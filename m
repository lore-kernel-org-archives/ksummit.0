Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 996AF256
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 21:09:03 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1683610A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 21:09:03 +0000 (UTC)
Message-ID: <1468962539.2383.82.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 19 Jul 2016 14:08:59 -0700
In-Reply-To: <87inw1skws.fsf@x220.int.ebiederm.org>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Tue, 2016-07-19 at 10:32 -0500, Eric W. Biederman wrote:
> Historically the types in C came about because the machines
> fundamentally supported different data types either with different
> sizes or different characteristics (i.e. u8, u16, float, double).
> These data types and the C type system were built so programmers
> could tell the machine what they needed it to do.
> 
> There is another genesis of types that started with the simply typed
> lambda calculs that is about eliminating common errors and otherwise
> helping a programmer get their code right.
> 
> In the years since C was invented there has been a lot of activity
> and a
> little bit of progress in this area.  Would people be receptive to
> improvements in this area?
> 
> I would like to talk to folks and gague what it would take to make
> improvements in this area acceptable, practical, and useful.
> 
> Would a gcc plugin that checks the most interesting things that 
> sparse checks on every build be interesting? (endianness of integer 
> types for example)

How would this be different from simply automatically running sparse in
the kernel build if the binary is present (effectively making make C=1
the default)?

> Would a type system for pointers derived from separation logic that
> has the concept that a piece of data is owned by a piece of running
> code rather than another piece of data be interesting?

By this you mean a thread of execution that should be expected to free
the data pointed to when it finishes?  Sort of like a self garbage
collecting reference?

>   * This cleanly allows for doubly linked lists.
>   
>   * This is useful to ensure that data is either put in another data
>     structure where it is remembered or it is freed.
> 
>   * This is useful to ensure reference counts are not leaked.
> 
>   * This is useful to ensure that every lock is paired with an
> unlock.
> 
> My personal filter for things like this are types that can be checked
> in time proportional to the amount of code to be built so that it is
> roughly the same situation we are in now.
> 
> 
> Given it's heritage and it's history the type system in C has serious
> limitations that I don't know if they are correctible, when it comes 
> to catching programmer mistakes: silent truncation of unsigned types
> into smaller unsigned types, casts, etc.  Would people be willing to
> consider a simple, link compatible alternative to C for some of the 
> code in the kernel that had the same low level control of the machine 
> but had a type system that made catching mistakes easier?
> 
> 
> Deploying solutions like this will take a fair bit of grunt work, and
> time similar or worse than the big kernel lock removal.  Given how
> widely Linux is used and how annoying some of these bugs can be I 
> think it is worthwhile to dig in and see what kind of improvements 
> can be made.
> 
> I would really like to get a feel among kernel maintainers and
> developers if this is something that is interesting, and what kind of
> constraints they think something like this would need to be usable 
> for the kernel?

I've got to say that rewriting in some as yet undefined language simply
to get better typing and conversions looks very daunting.  Before even
considering this, can you answer why an extension to sparse, which
would mostly flag the problems if we use the correct annotations,
wouldn't work just as well?  We'd still have to add the additional
annotations (and someone would have to update sparse) but it would
still be a lot easier than rewriting and giving the kernel a build
dependency on whatever the rewrite is done in.

James
