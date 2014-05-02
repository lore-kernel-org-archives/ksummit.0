Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 614F62B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:06:30 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.225])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E96951FAA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:06:29 +0000 (UTC)
Date: Fri, 2 May 2014 16:06:27 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Dave Jones <davej@redhat.com>
Message-ID: <20140502160627.4c5b0d2a@gandalf.local.home>
In-Reply-To: <20140502194935.GA9766@redhat.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org>
	<20140502194935.GA9766@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Fri, 2 May 2014 15:49:35 -0400
Dave Jones <davej@redhat.com> wrote:


> I may have a vested interest in syscalls :)
> 
> The rate we're adding them has slowed down, but the rate at which we're
> finding bugs exposed through them has accelerated enormously over the
> last few years.

Well, besides perf, I'm sure the acceleration of finding bugs wasn't
due to system calls adding more of them, but because we now have much
better ways of finding bugs (yes this is a kudos to your trinity).

-- Steve
