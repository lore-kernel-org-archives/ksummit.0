Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A607C87A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 15:13:17 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0043.hostedemail.com
	[216.40.44.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8D5401F0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 15:13:13 +0000 (UTC)
Date: Thu, 15 Oct 2015 11:13:10 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Christoph Lameter <cl@linux.com>
Message-ID: <20151015111310.01903df1@gandalf.local.home>
In-Reply-To: <alpine.DEB.2.20.1510150903480.20958@east.gentwo.org>
References: <20151013124230.1a082d28@gandalf.local.home>
	<alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
	<20151014092041.282117ac@gandalf.local.home>
	<alpine.DEB.2.20.1510140944380.11727@east.gentwo.org>
	<20151014112225.26771952@gandalf.local.home>
	<alpine.DEB.2.20.1510141303540.13301@east.gentwo.org>
	<20151014143244.19c2512a@gandalf.local.home>
	<alpine.DEB.2.20.1510141345540.13663@east.gentwo.org>
	<alpine.DEB.2.11.1510142203350.3960@nanos>
	<alpine.DEB.2.20.1510150903480.20958@east.gentwo.org>
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

On Thu, 15 Oct 2015 09:22:58 -0500 (CDT)
Christoph Lameter <cl@linux.com> wrote:

> I have no particular use case for my company in mind here. This is what I
> hear when talking to various companies in a number of different areas of
> computing that have tried preempt_rt.

Why are they telling you this and not us? Of course this may be people
that have different requirements.

Need a few microsecond latencies; Try Xenomai.
Need a few hundred microsecond latencies; PREEMPT_RT will do
Need no interference from the kernel; Use NO_HZ_FULL

Look, there's obviously users of PREEMPT_RT, so why are you trying to
kill it? If anything, PREEMPT_RT has made the mainline kernel cleaner.

Just because you don't see a use for it, doesn't mean one does not
exist.

-- Steve
