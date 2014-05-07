Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 23179681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 02:07:51 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4C7EA20212
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 02:07:50 +0000 (UTC)
Date: Tue, 6 May 2014 22:07:43 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20140507020743.GA6461@thunk.org>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org> <20140506203337.GE21332@cloud>
	<20140506205052.GF5012@thunk.org> <53695CE3.5090005@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53695CE3.5090005@linaro.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 06, 2014 at 03:06:27PM -0700, John Stultz wrote:
> 
> Sure. If its preferred I can try to get some mail on the list outlining
> my and Thomas' proposals w/ various pros and cons to the list prior to
> the discussion. And I can make a point to provide specific data on the #
> of syscall and ioctl structures that embed time_t (or embed structures
> which contain time_t), etc.

It also might be useful to also consider which interfaces are mediated
by glibc, and which aren't (i.e., ioctl's).  We might be able to
separate what might be doable by negotaitons between glibc and the
kernel, and between applications and the shared library ecosystem,
which would allow a soft/slow cutover, but with all or most of the
compatibility in glibc.

> Thomas (at least as far as my understanding last we spoke) would prefer
> not to introduce a whole new ABI, but to introduce new syscalls in
> addition existing syscalls which would provide something like ktime_t
> (u64 nanosecond value) as main time type. Eventually deprecating all the
> syscalls that use time_t.

One of the questions to evaluate this proposal is how many syscalls
this would take.  And if we the goal is to "avoid a hard ABI break",
then that also means doing something like the Large File Support hack
(i.e., open64, read64, etc.) which is application visible.  Right?
But the problem is unless you get all applications to use these
non-standard, non-POSIX interfaces --- or you need to get them to use
a magic #define, ala the LFS --- and good luck getting all
applications to do make that change, or to get distributions to modify
their build scrpits to include that --- and then it's equivalent to a
hard ABI break, since it means time_t changes size.

> Right. So clearly I don't have all the details ready right this moment,
> but I hope providing more detail above gives you a better sense of the
> current proposals and some confidence that I'll try to do my homework
> and have some discussions on lkml before the Kernel Summit discussion.

Something else to consider is whether we would need to have some glibc
folks present at the kernel summit if we want to discuss it there, and
whether we should also think about also planning some discussions at
the Plumber's Conference --- because there will certainly be userspace
impacts that will need to be taken into account.

						- Ted
