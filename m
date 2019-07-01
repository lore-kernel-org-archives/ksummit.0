Return-Path: <SRS0=/x9j=U6=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7E49B490F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 17:27:51 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F4178782
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 17:27:50 +0000 (UTC)
Date: Mon, 1 Jul 2019 13:27:48 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190701132748.6d19e011@gandalf.local.home>
In-Reply-To: <alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
	<20190630163120.GA13925@chatter.i7.local>
	<20190701072013.GJ3402@hirez.programming.kicks-ass.net>
	<alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Peter Zijlstra <peterz@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 1 Jul 2019 09:49:56 +0200 (CEST)
Thomas Gleixner <tglx@linutronix.de> wrote:

> > I much prefer https://lkml.kernel.org/r/$msgid over lore, because I can
> > change it to marc.info with a single character change. And while lore
> > has improved, the thing is still a horrible horrible ugly site (an
> > actual fixed frame for the thread overview, and hiding that 'Reply
> > instructions' and 'LKML Archive on lore.kernel.org' somewhow would
> > already be a big improvement).  
> 
> But lore allows to reference all mailinglists which are archived
> there, while lkml.k.org is hardcoded to lkml.

That's not true. For example:

 http://lkml.kernel.org/r/20190613122035.7d19f318@gandalf.local.home

Which ends up on the linux-rt-users list, and so does lore/r.

-- Steve
