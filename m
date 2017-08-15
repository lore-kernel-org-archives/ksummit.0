Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15BAA8E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Aug 2017 07:14:23 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 90177A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Aug 2017 07:14:22 +0000 (UTC)
Date: Tue, 15 Aug 2017 09:13:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Linus Torvalds <torvalds@linux-foundation.org>
In-Reply-To: <CA+55aFyJMwrOk0RN1GtcZ20r3RQYAL5Y-3iKcXcVgvGf3rea9g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1708150912490.3849@hadrien>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
	<c2091a67-0a06-44ae-86e0-84879f3c7865@suse.com>
	<20170804160454.GC13098@kroah.com>
	<20170814154910.249caf70@gandalf.local.home>
	<CA+55aFyJMwrOk0RN1GtcZ20r3RQYAL5Y-3iKcXcVgvGf3rea9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Mon, 14 Aug 2017, Linus Torvalds wrote:

> On Mon, Aug 14, 2017 at 12:49 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> > On Fri, 4 Aug 2017 09:04:54 -0700
> > Greg KH <greg@kroah.com> wrote:
> >
> >
> >> We could start searching linux-next for new additions of sysfs files
> >> (search for the ATTR macros), and complain that there are no matching
> >> Documentation/ABI/ updates at the same time.  I try to do that when
> >> reviewing patches that come through my trees, but yes, this is hard to
> >> keep up to date with.
> >>
> >> Sounds like a good GSoC project though, setting up the infrastructure to
> >> do this in a semi-automated fashion.
> >
> > And perhaps do the same for new tracepoints.
>
> Honestly, the *real* issue has traditionally been new ioctl's, not so
> much sysfs files or tracepoints.
>
> People add random device-specific crud that then has issues with
> alignment or word size.

In terms of documentation, there are around 2500 names defined using _IOW,
_IOR, or _IOWR, and around 500 of them are mentioned somewhere in
Documentation.

julia
