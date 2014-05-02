Return-Path: <davej@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BEC3D21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:03:23 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6BED01FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:03:23 +0000 (UTC)
Date: Fri, 2 May 2014 17:03:08 -0400
From: Dave Jones <davej@redhat.com>
To: Ben Hutchings <ben@decadent.org.uk>
Message-ID: <20140502210308.GB13536@redhat.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org>
	<20140502194935.GA9766@redhat.com>
	<1399063518.24523.43.camel@deadeye.wl.decadent.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1399063518.24523.43.camel@deadeye.wl.decadent.org.uk>
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

On Fri, May 02, 2014 at 09:45:18PM +0100, Ben Hutchings wrote:
 > On Fri, 2014-05-02 at 15:49 -0400, Dave Jones wrote:
 
 > > To use just one example, on certain systems I'd love to be able to just
 > > turn off sys_perf_event_open given what a trainwreck of vulnerabilities it's been
 > > over the last few years [comedy: it is actually a config option, but x86
 > > 'selects' it, so you'll have it and you'll like it].
 > > Thankfully at least the scarier parts of it are now hidden behind the
 > > paranoid sysctl.
 > 
 > I have considered proposing perf_event_paranoid=3 to disable it
 > completely for non-root.

Doesn't seem too crazy an idea to me.

 > > It's this "not used by every user" code that tends to scare me, because
 > > it's written with 1-2 well behaved bits of userspace in mind, which
 > > usually means "has so many unchecked corner cases it's not even funny"
 > [...]
 > 
 > Since Michael often seems to be the one testing those corner cases while
 > writing documentation, it seems like you're getting back to the old
 > issue of whether lack of documentation should be a blocker for adding
 > new system calls.

That, and test cases.

	Dave
