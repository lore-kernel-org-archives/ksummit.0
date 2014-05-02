Return-Path: <davej@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1F8E9681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:01:38 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B1D301F8D1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:01:37 +0000 (UTC)
Date: Fri, 2 May 2014 17:01:23 -0400
From: Dave Jones <davej@redhat.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Message-ID: <20140502210123.GA13536@redhat.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org>
	<20140502194935.GA9766@redhat.com>
	<20140502204141.GB24108@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140502204141.GB24108@thunk.org>
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

On Fri, May 02, 2014 at 04:41:41PM -0400, Theodore Ts'o wrote:

 > And I think we can also further break this down into the classes of
 > code which require root privs (i.e., like kexec), and those which can
 > be used by any userid.

In the brave new world of secure boot, we kind of have to care about
even the root cases now too [*], but I agree in the general case.

 > So perhaps what that means it that _these_ are the features which
 > require the most amount of paranoia and testing before we let them
 > into the mainline kernel in the first place.  Otherwise, once they get
 > in, there's always a chance that systemd or some other piece of
 > userspace will strict strictly requiring said optional feature, and it
 > doesn't matter whether we put in a CONFIG option to disable the
 > feature --- we'll never be able to do it.

This is starting to tread into the other thread about userspace
mandating 'optional' facilities, but is that even a problem, given
the proliferation of init's (taking the systemd example).
Yes, systemd "won" by now being the default in all the general purpose
distributions, but with my upstream hat on, I think we still care
about embedded systems etc that don't need anywhere near the
functionality that systemd provides.

	Dave

[*] oh god, ioctl.
