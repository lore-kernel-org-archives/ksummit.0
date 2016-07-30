Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 711512C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 20:57:05 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A20D7235
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 20:57:04 +0000 (UTC)
Date: Sat, 30 Jul 2016 13:56:57 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20160730205657.dg2lpbfao2ync4am@x>
References: <87inw1skws.fsf@x220.int.ebiederm.org> <20160719212645.GA14203@x>
	<87vazn57gt.fsf@x220.int.ebiederm.org>
	<20160730184950.2elfi4edvkuthwaw@x>
	<87r3aa3oom.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87r3aa3oom.fsf@x220.int.ebiederm.org>
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

On Sat, Jul 30, 2016 at 02:34:33PM -0500, Eric W. Biederman wrote:
> Josh Triplett <josh@joshtriplett.org> writes:
> 
> > On Sat, Jul 30, 2016 at 01:03:30PM -0500, Eric W. Biederman wrote:
> >> 
> >> Josh Triplett <josh@joshtriplett.org> writes:
> >> 
> >> > On Tue, Jul 19, 2016 at 10:32:51AM -0500, Eric W. Biederman wrote:
> >> >> Would a type system for pointers derived from separation logic that
> >> >> has the concept that a piece of data is owned by a piece of running
> >> >> code rather than another piece of data be interesting?
> >> >
> >> > Interesting, yes, but trying to track "ownership" gets complicated
> >> > *fast* to handle real-world cases.  Rust went through quite a lot of
> >> > work, and multiple iterations, to get to the system it has now.  I don't
> >> > think you'd be able to handle many of the cases in the kernel without
> >> > about that much complexity.
> >> 
> >> Politely Rust did it the stupid way.  "ownership" or perhaps better said
> >> who is allowed to modify the data is an active piece of code thing
> >> rather than a data thing, and Rust did it as a data thing.
> >
> > I'd be interested to hear more details on what you mean by this, because
> > the way you've described it doesn't make sense to me.  The way lifetimes
> > are implemented in Rust seems very much like "an active piece of code
> > thing".  Can you give an example of the distinction you're making?
> 
> But that is a lifetime of a piece of data, that isn't ownership of data.
> The data is still owned by some pointer.
> 
> Ownership by code looks roughly like:
> 
> 	head = acquire_list(&task_list);
> 
> 	/* At the data level head points to the first element of the list */
>         /* The type of head is a recursive type that includes every
>          * element on the list.
>          */
>          for (ptr = head; ptr; ptr = ptr->next) {
>          	/* The type of ptr shares with head the type of the list.
>                  * Which allows both ptr and head to be valid
>                  * and the code of this function to continue owning the list.
>                  */
>                  ptr->scratch++;
>                  /* As the owner any mutation may be performed on the list elements */
> 	}
> 
> 	release_list(list);
>         /* Accessing list past this point would be a type error */
> 
> Where acquire_list and grabs the appropriate spinlock and then returns
> ownership of the list to the calling function through a ponter to the
> first element of the list.

(Nit: I think in that last line you wanted release_list(head);)

What happens if the code saves a copy of either head, ptr, or something
accessed via ptr, and then some other distant code accesses that after
release_list?  (For instance, consider a function that takes a pointer
to "scratch" and retains that pointer.)  In the type system you
envision, what prevents that?

What happens if the code in that region, while looking at one value of
ptr, changes the list in a way that invalidates ptr?  What prevents
that?
