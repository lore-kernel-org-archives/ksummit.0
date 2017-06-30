Return-Path: <SRS0=aia5=6D=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B13918A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 01:27:53 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31FCDE9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 01:27:53 +0000 (UTC)
Date: Thu, 29 Jun 2017 21:27:50 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170629212750.5c3542ee@gandalf.local.home>
In-Reply-To: <20170629211641.5aeb3af7@gandalf.local.home>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<20170629205218.5b9a7923@gandalf.local.home>
	<CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
	<20170629211641.5aeb3af7@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Julien Desfossez <jdesfossez@efficios.com>,
	daolivei <daolivei@redhat.com>, bristot <bristot@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Pulling away from the tracing
 ABI quicksands
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


I know I said that was going to be my last email, but I just noticed
something by re-reading the thread.

On Thu, 29 Jun 2017 21:16:41 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> > On Thu, Jun 29, 2017 at 5:52 PM, Steven Rostedt <rostedt@goodmis.org> wrote:  
> > >
> > > Just to explain what Mathieu was talking about with echo and such, is
> > > that Peter Zijlstra has been against multiple tracepoints for that one
> > > sched switch location.    
> > 
> > I am too.  
> > 
> > Dammit, if somebody cares about one partiocular scheduler, then that
> > person can add dynamic tracepoints.  
> 
> You mean kprobes? Or perhaps eBPF?

I missed this because you cut it out. What I originally wrote:

  Just to explain what Mathieu was talking about with echo and such, is
  that Peter Zijlstra has been against multiple tracepoints for that one
  sched switch location. He would prefer a dynamic case, instead of
  having to enable all tracepoints, to get full functionality, as he
  tends to use echo / cat to interact with ftrace than by using the
  tools. He doesn't want the hassle of enabling more than one tracepoint
  for sched_switch.


Where I mentioned that he prefers a dynamic tracepoint. Is that what
you mean? Because what he prefers doesn't exist yet. It's not kprobes
nor eBPF. It is something we've been talking about implementing, and we
were going to discuss the implementation at ksummit.

Are you OK with that?

-- Steve
