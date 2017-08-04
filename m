Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 24D1BA88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 14:22:39 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 447053F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 14:21:46 +0000 (UTC)
Date: Fri, 4 Aug 2017 10:20:33 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20170804142033.budoksvyhbphxmun@thunk.org>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<20170804132704.73c49b64@canb.auug.org.au>
	<alpine.DEB.2.20.1708040705240.1994@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1708040705240.1994@hadrien>
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

On Fri, Aug 04, 2017 at 07:13:10AM +0200, Julia Lawall wrote:
> I did some work on a semantic patch for collecting the error codes
> returned by all of the system class.  Things were going fairly well until
> I discovered that is fairly common near the user level to return error
> codes in reference parameters rather than by direct returns, and that
> meant that I was going to have to duplicate my entire rule set.  I also
> observed that the documentation is not always that precise.  It will say
> typically returns -E1, -E2, -E3, and may return other stuff, so in that
> case there is less to check.

Yeah, including potential new error returns as "changes to the
ABI/API" is probably simply not practical.  Adding a return for, say,
ENOMEM instead of causing a kernel oops is not something that needs to
be debated on the linux-api mailing list!

I recall, many years ago, an executive being indignant because Linux
was returning some error code for some syscall operation involving
network file system because it returned an network-related errno that
was not explicitly listed in POSIX for a file system related syscall,
and demanded that we fix the problem.  I had to gently point out to
said gentleman (since I was working for the Linux Foundation at the
time and he worked for a platinum sponsor :-) that POSIX as a blanket
statment allows confirming implementations' system calls to return
additional error codes as necessary.

I think people are much more concerned when there is a new system
call, or a new flag added to a core syscall (e.g., O_TMPFILE).  I
suspect that we required all new device ioctls and new flags to device
ioctls to get the linux-api@ treatment that we would get mass
resistance and the workload would not be practical.  And this list
doesn't even consider new sysfs files, new tracepoints, etc., etc.

Although technically speaking this is all "API's" I think we need to
pick our battles and start with a tractable subset of the problem...

          	 	     	   	- Ted
