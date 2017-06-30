Return-Path: <SRS0=aia5=6D=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 904448CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 00:52:22 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AE1B8A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 00:52:21 +0000 (UTC)
Date: Thu, 29 Jun 2017 20:52:18 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170629205218.5b9a7923@gandalf.local.home>
In-Reply-To: <20170629203224.6bf7f29a@gandalf.local.home>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
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

On Thu, 29 Jun 2017 20:32:24 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:


> The problem we have is how to implement it?
> 
> We could make one tracepoint hook location have several different
> "tracepoints" in the tracefs directory letting the user choose how much
> information they want to trace. Have different tracepoints that can be
> enabled for a single location, where it may show extended fields.
> 
> I know people would like to have a way to cut down some fields, as
> real-estate in the ring buffer is of high value, and the smaller the
> events are, the more data one can collect. People who use tracing
> really do care about any wasted space (which is why we like to avoid
> writing zeros in fields no longer valued, it makes it harder to get the
> data you are after).
> 
> In summary, this is not another beat the dead horse how to do stable
> tracepoints. The focus is, how to make tracepoints more user
> customizable for their use cases.

Just to explain what Mathieu was talking about with echo and such, is
that Peter Zijlstra has been against multiple tracepoints for that one
sched switch location. He would prefer a dynamic case, instead of
having to enable all tracepoints, to get full functionality, as he
tends to use echo / cat to interact with ftrace than by using the
tools. He doesn't want the hassle of enabling more than one tracepoint
for sched_switch. One could call him lazy ;) but he's also the
maintainer of that tracepoint!

What would be really nice is a way to have sched_switch be a dynamic
tracepoint where it can trace differently depending on what is being
scheduled in and out. I'm sure other tracepoints locations may want a
similar feature.

But the devil is in the details of implementation, and we need to do
all this without breaking the existing tools that use the tracing
system. (See I have been listening to you!)

-- Steve
