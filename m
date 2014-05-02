Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3D7F0875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:56:49 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4682E1FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:56:48 +0000 (UTC)
Date: Fri, 2 May 2014 21:56:44 +0000
From: tytso@mit.edu
To: Dave Jones <davej@redhat.com>
Message-ID: <20140502215644.GA9856@thunk.org>
References: <20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org>
	<20140502194935.GA9766@redhat.com>
	<20140502204141.GB24108@thunk.org>
	<20140502210123.GA13536@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140502210123.GA13536@redhat.com>
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

On Fri, May 02, 2014 at 05:01:23PM -0400, Dave Jones wrote:
> This is starting to tread into the other thread about userspace
> mandating 'optional' facilities, but is that even a problem, given
> the proliferation of init's (taking the systemd example).

For the record, there is no "other thread" because as Jiri pointed out
(and I agree) it's not at all clear there's anything we as kernel
developers can do about this.  Once some kind of system call interface
is made available in mainline, it's not at all realistic to say that
"it's only for this use case".

If someone thinks that it might be worthwhile to start such a thread
and/or propose that that might be a worthy topic for the kernel
summit, feel free to start such a thread --- but I'd suggest doing so
after coming up with a proposed solution to how we could even
influence what facilities various bits of userspace might want to
mandate.

Cheers,

					- Ted
