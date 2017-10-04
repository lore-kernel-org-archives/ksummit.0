Return-Path: <SRS0=q5li=BD=goodmis.org=rostedt@kernel.org>
Date: Tue, 3 Oct 2017 20:55:32 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Message-ID: <20171003205532.6a294613@gandalf.local.home>
In-Reply-To: <20170929235022.2f3rm7shb3plkcim@ast-mbp>
References: <20170920095031.1972fba5@gandalf.local.home>
	<0C1E6F2D-2E7D-4477-9F35-8C59F62BB409@fb.com>
	<20170920150404.2x63t3bd4pkusoa3@destiny>
	<20170929235022.2f3rm7shb3plkcim@ast-mbp>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Josef Bacik <jbacik@fb.com>, "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>,
	Peter Zijlstra <peterz@infradead.org>, Josef Bacik <josef@toxicpanda.com>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] tracepoints without user
 space interfaces
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 29 Sep 2017 16:50:23 -0700
Alexei Starovoitov <alexei.starovoitov@gmail.com> wrote:

> Aren't we beating the dead horse?

Not really, because this dead horse can still give quite a hell of a
kick back.

> A year ago at the kernel summit:
> https://lwn.net/Articles/705270/
> "The session concluded with Linus saying that, in the history of kernel development,
> nobody has ever screamed about a change to a tracepoint. He allowed that this might
> happen as the use of tracepoints increases. But, he said, there is no point in
> making a big deal about that possibility before it proves to be a problem."

We have two, possibly three instances that user space has caused
tracepoint hell already. Yes, powertop screamed about changing a
tracepoint. We have silly crap in sched_switch and sched_wakeup due to
user space not wanting that to change. And there was just another
tracepoint having to carry blank fields because userspace expects them
to exist.

> 
> So instead of inventing trace markers and other new things that are just

There is no "inventing". They already exist. In fact, that's what
TRACE_EVENT() macros are built on. In fact, what we are talking about
was the original introduction of tracepoints. This is what is in
tracepoint.h and is implemented in tracepoint.c. No new code needs to
be done to implement this. All it would take is to put in the
tracepoints by hand, without the use of the TRACE_EVENT macros.


> like existing tracepoints but without arguments how about

We are not talking about tracepoints without arguments.

> adding normal tracepoints with one or two arguments task* and rq*
> bpf progs can walk whatever internals of these structs they need
> with probe_read() and that would be plenty of info for most users
> including kernel developers.
> In that sense the only difference between these new sched tracepoints
> and existing kprobe-based scripts will be the speed and ease of
> access to task/rq pointers.

That may be what we are talking about ;-)

> If pretty print of tracepoints into trace_pipe is an abi
> concern then don't print anything.

No, that's not the issue. The issue is what gets written into the
binary buffers of perf or ftrace.

> Existing sched tracepoints are not useful from bpf point of view,
> since they don't have pointers in arguments and instead print
> comm/pid/cpu which is not very interesting.

?? The sched tracepoints pass in the task pointers that they deal with.

> Dumb kprobe in enqueue_task_*() is more powerful
> since progs can simply bpf_trace_printk("%d\n", rq->nr_running);
> btw I won't be in Prague, so best to discuss over email.

Well this isn't just about bpf, it's also about tracing.

-- Steve
