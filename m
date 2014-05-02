Return-Path: <davej@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 62FAD21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:49:50 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id EC5211FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:49:49 +0000 (UTC)
Date: Fri, 2 May 2014 15:49:35 -0400
From: Dave Jones <davej@redhat.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Message-ID: <20140502194935.GA9766@redhat.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140502193314.GA24108@thunk.org>
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

On Fri, May 02, 2014 at 03:33:14PM -0400, Theodore Ts'o wrote:
 > There's been a huge focus on system calls in this discussion, and I
 > suspect this is a bit of a red herring.  Taking a look at "git log
 > arch/x86/syscalls/syscall_64.tbl" --- since all the world's is no
 > longer a Vax, but rather an x86_64 :-P --- there really hasn't been
 > that many new system calls lately.

I may have a vested interest in syscalls :)

The rate we're adding them has slowed down, but the rate at which we're
finding bugs exposed through them has accelerated enormously over the
last few years.

To use just one example, on certain systems I'd love to be able to just
turn off sys_perf_event_open given what a trainwreck of vulnerabilities it's been
over the last few years [comedy: it is actually a config option, but x86
'selects' it, so you'll have it and you'll like it].
Thankfully at least the scarier parts of it are now hidden behind the
paranoid sysctl.

 > And if you look at things like renameat(2), the actual code savings by
 > removing renameat(2) is pretty small, and IMHO, not worth the
 > complexity and uncertainty that it would represent to application
 > programmers of "does this system call exist or doesn't it".

I think we've got two categories here.

"variant" syscalls like renameat, which just offers enhancements over
an existing syscall. Stuff that things like glibc tend to care about.
This stuff is usually pretty boring, and not even worth considering for
potentially disabling imo.

And then we have "enable boatload of code" syscalls that are typically
used by a few standalone apps/features. kexec, checkpointing, whatever
db it was that cares about remap_file_pages, mempolicy, etc. etc.

It's this "not used by every user" code that tends to scare me, because
it's written with 1-2 well behaved bits of userspace in mind, which
usually means "has so many unchecked corner cases it's not even funny"

Ok, maybe there is also a grey area in the middle, which I guess depends
on what your userspace is going to do, (things like vmsplice and
friends), but I lean towards just classing them in the 2nd category too.

 > In contrast, if you want to take at the bloat and complexity added by
 > the pluggable security LSM's, control groups, and name spaces, the
 > comparison isn't even close.  Furthermore, given that low level
 > progams programs like systemd have grown to require control groups,
 > it's not like you can even realistically strip it from potentially
 > even many embedded kernels, since there seems to be a movement to have
 > systemd infect even smaller embedded applications.

Yeah, we've reached a point of no return with things like cgroups now.

 > Anyone want to lay odds on when systemd will start using various
 > namespaces for its own purposes?  :-)

I thought it already was tbh.

	Dave
