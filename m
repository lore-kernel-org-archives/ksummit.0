Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1ED749B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 03:23:50 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0090.hostedemail.com
	[216.40.44.90])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A19B7AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 03:23:49 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 3DCB7B0EB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 03:05:38 +0000 (UTC)
Date: Wed, 27 Jul 2016 23:05:32 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160727230532.2982b40d@grimm.local.home>
In-Reply-To: <20160721142127.GA23563@x>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578EF192.3050808@huawei.com>
	<CALCETrUbuQjEAettvDStqEophng+1TNGDpueWDJ4QWLqiyaQ2w@mail.gmail.com>
	<028967b8-6107-9d9c-453a-a7f25e967f70@suse.com>
	<1469097065.120686.124.camel@infradead.org>
	<20160721111917.GA20006@x>
	<1469102358.120686.142.camel@infradead.org>
	<20160721142127.GA23563@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 21 Jul 2016 07:21:28 -0700
Josh Triplett <josh@joshtriplett.org> wrote:
> 
> Given the discussion in this thread about wanting to eliminate
> earlyprintk in favor of a unified mechanism that works as early as
> possible, how would this case work on the system I described above where
> earlyprintk works and console doesn't?

No no no!!! Please do not eliminate earlyprintk(). It is critical to
the PREEMPT_RT project. It requires no sleeping locks, and can be used
in pretty much any context (with slight modifications). printk() is a
beast, and in -rt it calls sleeping locks. That is, if interrupts are
disabled, we prevent printk from print anything. (Note PREEMPT_RT
keeps interrupts enabled much more than the normal kernel does). If a
bug happens where interrupts are disabled, we fall back to earlyprintk
(and tracing), to debug it.

-- Steve
