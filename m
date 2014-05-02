Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CA142A8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:33:21 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 731971FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:33:20 +0000 (UTC)
Date: Fri, 2 May 2014 15:33:14 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <20140502193314.GA24108@thunk.org>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

There's been a huge focus on system calls in this discussion, and I
suspect this is a bit of a red herring.  Taking a look at "git log
arch/x86/syscalls/syscall_64.tbl" --- since all the world's is no
longer a Vax, but rather an x86_64 :-P --- there really hasn't been
that many new system calls lately.  Yes, we recently added
renameat(2), but the next addition was half a year earlier, when the
new schedular parameters syscalls went in.

There's much more in the way of kernel functionality and complexity
which isn't really syscall related --- for example, all of the control
group stuff, and security hair caused by things like user namespaces,
and new fallocate(2) modes --- we've added PUNCH_HOLE, COLLAPSE_RANGE,
and ZERO_RANGE, and there are threats to add INSERT_RANGE in the next
release or two.

And if you look at things like renameat(2), the actual code savings by
removing renameat(2) is pretty small, and IMHO, not worth the
complexity and uncertainty that it would represent to application
programmers of "does this system call exist or doesn't it".

In contrast, if you want to take at the bloat and complexity added by
the pluggable security LSM's, control groups, and name spaces, the
comparison isn't even close.  Furthermore, given that low level
progams programs like systemd have grown to require control groups,
it's not like you can even realistically strip it from potentially
even many embedded kernels, since there seems to be a movement to have
systemd infect even smaller embedded applications.

Anyone want to lay odds on when systemd will start using various
namespaces for its own purposes?  :-)

						- Ted
