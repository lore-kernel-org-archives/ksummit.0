Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 85DF3410
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 02:20:05 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E390490
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 02:20:04 +0000 (UTC)
Date: Wed, 14 Oct 2015 22:20:02 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Tim Bird <tim.bird@sonymobile.com>
Message-ID: <20151014222002.3f345ac3@grimm.local.home>
In-Reply-To: <561EAD4D.6080901@sonymobile.com>
References: <20151013124230.1a082d28@gandalf.local.home>
	<alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
	<20151014092041.282117ac@gandalf.local.home>
	<alpine.DEB.2.20.1510140944380.11727@east.gentwo.org>
	<20151014112225.26771952@gandalf.local.home>
	<alpine.DEB.2.20.1510141303540.13301@east.gentwo.org>
	<20151014143244.19c2512a@gandalf.local.home>
	<alpine.DEB.2.20.1510141345540.13663@east.gentwo.org>
	<561EAD4D.6080901@sonymobile.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Mainlining PREEMPT_RT
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 14 Oct 2015 12:30:21 -0700
Tim Bird <tim.bird@sonymobile.com> wrote:

REPLY ALL Tim! I didn't notice this email till I saw it as QotW on LWN.


> Check out Xenomai. (xenomai.org)  I think that's what many embedded folk use
> if they find that RT-PREEMPT does not meet their needs.  Xenomai 3.0
> allows you to use their system either on top of RT-PREEMPT or
> on top of their Cobalt kernel sitting next to (or in front of,
> depending on your perspective) the Linux kernel.
> 
> Sony used RT-PREEMPT in some products, and a dual-kernel in others,
> and isolated CPUs running something else (usually uItron) in yet others.
> 
> Personally, I'd be happy to see RT-PREEMPT go in - there are certain use

BTW, it's PREEMPT_RT not RT-PREEMPT.

> cases for it.  I'd also like to see the NOHZ stuff go in as well.  It should
> solve a set of problems for isolating RT tasks without sacrificing
> performance on the non-RT CPUs.  And finally, I wouldn't mind putting
> a non-Linux RT kernel like Cobalt (oh the horrors) into mainline as well.
> Each of these approaches has their strengths and weaknesses.  Linux is,
> after all, whatever we say it is - and it could easily have a small RT
> micro-kernel as part of the source base as well.
> 
> AFAIK the patent issues that plagued the dual-kernel approach are now
> behind us, so this might be a good area of investigation.
> 
> I've long felt that RT-PREEMPT was sucking the oxygen out of getting other,
> technically valid, approaches to RT with Linux into mainline.

I'm perfectly fine with working together with Xenomai. When you need a
few microsecond latencies, that may be the best tool. I don't think
they are mutually exclusive, but actually complement each other quite
nicely.

-- Steve
