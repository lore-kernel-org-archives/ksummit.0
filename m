Return-Path: <SRS0=aia5=6D=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4BA1E982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 01:16:44 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C9ADBE9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 01:16:43 +0000 (UTC)
Date: Thu, 29 Jun 2017 21:16:41 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170629211641.5aeb3af7@gandalf.local.home>
In-Reply-To: <CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<20170629205218.5b9a7923@gandalf.local.home>
	<CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
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

On Thu, 29 Jun 2017 18:00:42 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> On Thu, Jun 29, 2017 at 5:52 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> >
> > Just to explain what Mathieu was talking about with echo and such, is
> > that Peter Zijlstra has been against multiple tracepoints for that one
> > sched switch location.  
> 
> I am too.

I didn't realize you even used the tracepoints.

> 
> Dammit, if somebody cares about one partiocular scheduler, then that
> person can add dynamic tracepoints.

You mean kprobes? Or perhaps eBPF?

The information about SCHED_DEADLINE is not trivial enough to extract
with them.

> 
> Leave the existing one alone. Really. Zero out any fields that no
> longer make sense. Really. Don't beat this damn horse again. It's been
> dead for three years, and it's not just smelling bad, it's bloating in
> some scary ways.
> 
> The only reason for static tracepoints are for major tools like
> powertop. There is no way in hell such a tool will care about fields
> that only exist for one particular scheduler implementation. Don't add
> new random crap.

Well, the world does have people that use tools besides powertop.

> 
> If somebody is interested in *one* particular odd low-level scheduler,
> he damn well can add the dynamic points.

Again, not a trivial task. It's much easier to patch the kernel. Which,
I guess is what will be needed from now on.

> 
> This is the last I want to ever hear about it, and I particularly do
> not want to have this be a kernel summit discussion. We've had it
> before. Get over it.

OK, this is my last email on the subject. Too bad you feel this way.

Just one last note. I've tried very hard to keep tracing as contained
as possible. That is, not to let implementation details and such creep
into the rest of the kernel. I worked on making it as robust as
possible. All solutions to this had one major requirement. That is, it
must be contained, and not something that would cause any disruption in
any other part of the kernel or even other tracepoints. But oh well,
this idea is now dead. Well, at least until the demand for it boils up
into your visibility.

-- Steve
