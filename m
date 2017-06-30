Return-Path: <alexei.starovoitov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5EB9389E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 02:58:59 +0000 (UTC)
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4066CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 02:58:58 +0000 (UTC)
Received: by mail-pf0-f195.google.com with SMTP id s66so15288957pfs.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 19:58:58 -0700 (PDT)
Date: Thu, 29 Jun 2017 19:58:54 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170630025852.xjoif3aai6rny5a2@ast-mbp>
References: <20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<20170629205218.5b9a7923@gandalf.local.home>
	<CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
	<20170629211641.5aeb3af7@gandalf.local.home>
	<20170629212750.5c3542ee@gandalf.local.home>
	<CA+55aFzzCPMUDt72hckauYu+fj=Q2MWjx+XiR06KpMLAr1EBAA@mail.gmail.com>
	<20170629221245.489760b1@gandalf.local.home>
	<CA+55aFxFLvX62SyOC9qyVwEQXH8J224Fe03tvy624AUx0U2fRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+55aFxFLvX62SyOC9qyVwEQXH8J224Fe03tvy624AUx0U2fRQ@mail.gmail.com>
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

On Thu, Jun 29, 2017 at 07:34:53PM -0700, Linus Torvalds wrote:
> On Thu, Jun 29, 2017 at 7:12 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> >
> > Well, I don't want to put words in his mouth, but as he's probably
> > currently putting mush in a baby's mouth, so I'll do it anyway. ;-) We
> > were talking about making the static tracepoints more "dynamic". I'm not
> > sure he's ever used eBPF with tracing.
> 
> I don't know how else you would make them dynamic, though.
> Realistically, ebpf seems to be working really well for the networking
> people, and seems to be the obvious solution.
> 
> Now, the networking people have obviously *made* it work for them. So
> it's not like it's some kind of "ebpf automatically solves all
> problems" thing. ebpf needs some infrastructure too, to be able to get
> to the interesting data sanely (and safely).
> 
> > eBPF is still very limited in tracing. Currently it is only implemented
> > for perf. Although, it has been on my todo list to get it working for
> > ftrace as well, and implementing eBPF for ftrace can also be on the
> > agenda.
> 
> Oh, I thought it worked outside of perf already. My bad. I'm actually
> surprised it doesn't interact with ftrace, since it seems like the
> perfect use case.

If Steven has a use case for bpf in ftrace, I don't mind, but I don't see
a value yet. Everything we wanted to see inside the kernel we can already
do with perf_events and bpf scripts.
Here is one scheduler related script:
https://github.com/iovisor/bcc/blob/master/tools/runqlen.py#L79
it builds a histogram of task->se.cfs_rq->nr_running like
# ./runqlat 
Tracing run queue latency... Hit Ctrl-C to end.
^C
     usecs               : count     distribution
         0 -> 1          : 233      |***********                             |
         2 -> 3          : 742      |************************************    |
         4 -> 7          : 203      |**********                              |
         8 -> 15         : 173      |********                                |
        16 -> 31         : 24       |*                                       |
        32 -> 63         : 0        |                                        |

This particular script just samples the whole system at given frequency
and uses probe_read() to walk kernel internal data strctures.
It's obviously unstable interace and scripts break from time to time.
The worst offender over the last years was constantly changing
internals of 'struct request' on block side, so the biosnoop.py bpf script
has ugly code like this:
#ifdef REQ_WRITE
    data.rwflag = !!(req->cmd_flags & REQ_WRITE);
#elif defined(REQ_OP_SHIFT)
    data.rwflag = !!((req->cmd_flags >> REQ_OP_SHIFT) == REQ_OP_WRITE);
#else
    data.rwflag = !!((req->cmd_flags & REQ_OP_MASK) == REQ_OP_WRITE);
#endif
to be able to run with different kernel versions, but that's fine.
When one wants to look inside kernel structures they need to
be ready to change their scripts with every kernel version
and that is well understood.

Re-reading Mathieu's original email I don't really understand
what he's trying to solve that is not solved already.

Also I'm not planning to fly to Prague just for tracing discussion.
There is netdev2.2 right after in Seoul.
And tracing microconf at plumbers in September which is imo better
suited to discuss tracing related topics.
