Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7168C9A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 13:32:16 +0000 (UTC)
Received: from mail-ee0-f44.google.com (mail-ee0-f44.google.com [74.125.83.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A9FC420248
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 13:32:15 +0000 (UTC)
Received: by mail-ee0-f44.google.com with SMTP id c41so3950240eek.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 03 May 2014 06:32:14 -0700 (PDT)
Message-ID: <5364EFD5.10603@gmail.com>
Date: Sat, 03 May 2014 15:32:05 +0200
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
MIME-Version: 1.0
To: Theodore Ts'o <tytso@mit.edu>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org>
In-Reply-To: <20140502193314.GA24108@thunk.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
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

On 05/02/2014 09:33 PM, Theodore Ts'o wrote:
> There's been a huge focus on system calls in this discussion, and I
> suspect this is a bit of a red herring.  Taking a look at "git log
> arch/x86/syscalls/syscall_64.tbl" --- since all the world's is no
> longer a Vax, but rather an x86_64 :-P --- there really hasn't been
> that many new system calls lately.  Yes, we recently added
> renameat(2), but the next addition was half a year earlier, when the
> new schedular parameters syscalls went in.

A minor correction: that wasn't 6 months ago -- it was 3.14, released 
at the end of March, that added sched_getattr() and sched_setattr().

> There's much more in the way of kernel functionality and complexity
> which isn't really syscall related --- for example, all of the control
> group stuff, and security hair caused by things like user namespaces,
> and new fallocate(2) modes --- we've added PUNCH_HOLE, COLLAPSE_RANGE,
> and ZERO_RANGE, and there are threats to add INSERT_RANGE in the next
> release or two.

Yes, that's a much bigger part of the growing surface. (Just by the 
bye, I try to track the growth of the surface at 
http://man7.org/tlpi/api_changes/ . Corrections and additions are 
welcome. It's reasonably complete with respect to system calls, 
partially complete on /proc and socket options, and rather out to 
lunch on other pieces such as /sys and other pseudo filesystems

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
