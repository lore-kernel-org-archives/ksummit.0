Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3EA1DA7B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 15:49:56 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BF7783D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 15:49:12 +0000 (UTC)
Date: Fri, 4 Aug 2017 17:47:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Theodore Ts'o <tytso@mit.edu>
In-Reply-To: <20170804142033.budoksvyhbphxmun@thunk.org>
Message-ID: <alpine.DEB.2.20.1708041742260.25279@hadrien>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<20170804132704.73c49b64@canb.auug.org.au>
	<alpine.DEB.2.20.1708040705240.1994@hadrien>
	<20170804142033.budoksvyhbphxmun@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Andy Lutomirski <luto@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Fri, 4 Aug 2017, Theodore Ts'o wrote:

> On Fri, Aug 04, 2017 at 07:13:10AM +0200, Julia Lawall wrote:
> > I did some work on a semantic patch for collecting the error codes
> > returned by all of the system class.  Things were going fairly well until
> > I discovered that is fairly common near the user level to return error
> > codes in reference parameters rather than by direct returns, and that
> > meant that I was going to have to duplicate my entire rule set.  I also
> > observed that the documentation is not always that precise.  It will say
> > typically returns -E1, -E2, -E3, and may return other stuff, so in that
> > case there is less to check.
>
> Yeah, including potential new error returns as "changes to the
> ABI/API" is probably simply not practical.  Adding a return for, say,
> ENOMEM instead of causing a kernel oops is not something that needs to
> be debated on the linux-api mailing list!
>
> I recall, many years ago, an executive being indignant because Linux
> was returning some error code for some syscall operation involving
> network file system because it returned an network-related errno that
> was not explicitly listed in POSIX for a file system related syscall,
> and demanded that we fix the problem.  I had to gently point out to
> said gentleman (since I was working for the Linux Foundation at the
> time and he worked for a platinum sponsor :-) that POSIX as a blanket
> statment allows confirming implementations' system calls to return
> additional error codes as necessary.
>
> I think people are much more concerned when there is a new system
> call, or a new flag added to a core syscall (e.g., O_TMPFILE).  I
> suspect that we required all new device ioctls and new flags to device
> ioctls to get the linux-api@ treatment that we would get mass
> resistance and the workload would not be practical.  And this list
> doesn't even consider new sysfs files, new tracepoints, etc., etc.

I guess that new stsem calls would be easy to recognize, if they all start
with SYSCALL_DEFINE1, etc?

New flags could be #defines that are added to uapi .h file and that are
used in some similar way to other flags mentioned in the documentation?
So if the code already contains eg x & O_APPEND and there appears x &
O_TMPFILE and the documentation mentions O_APPEND, then it should now
mention O_TMPFILE too?

julia

>
> Although technically speaking this is all "API's" I think we need to
> pick our battles and start with a tractable subset of the problem...
>
>           	 	     	   	- Ted
>
