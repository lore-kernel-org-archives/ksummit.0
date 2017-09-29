Return-Path: <alexei.starovoitov@gmail.com>
Date: Fri, 29 Sep 2017 16:50:23 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Josef Bacik <josef@toxicpanda.com>
Message-ID: <20170929235022.2f3rm7shb3plkcim@ast-mbp>
References: <20170920095031.1972fba5@gandalf.local.home>
	<0C1E6F2D-2E7D-4477-9F35-8C59F62BB409@fb.com>
	<20170920150404.2x63t3bd4pkusoa3@destiny>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170920150404.2x63t3bd4pkusoa3@destiny>
Cc: Josef Bacik <jbacik@fb.com>, "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>,
	Peter Zijlstra <peterz@infradead.org>
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

On Wed, Sep 20, 2017 at 11:04:05AM -0400, Josef Bacik wrote:
> On Wed, Sep 20, 2017 at 02:54:07PM +0000, Josef Bacik wrote:
> > Cc’ing my personal address so I can reply with a sane email client.
> > 
> > On 9/20/17, 9:50 AM, "Steven Rostedt" <rostedt@goodmis.org> wrote:
> > 
> > The topic came up again at (of all places) the Schedule Workloads
> > Microconf at Linux Plumbers in LA last week. The addition of
> > tracepoints in locations that maintainers don't want them, only because
> > they don't want them to become an ABI for user space tools. Where
> > these tools then must be supported indefinitely, and may prevent
> > future development of the kernel. This includes the scheduler as well
> > as VFS (mandated by Al Viro).
> > 
> > The current solution by Facebook (told to us by Josef Bacik) is to just
> > hand write kprobes with BPF programs to the locations that they need.
> > When they get a new kernel, they just rewrite the programs because the
> > kprobes and BPF programs break at each new release (or can break).
> > 
> > First it was mentioned to add a hook to locations where it would be
> > easier to get variables, as the compiler could optimize them out, and
> > it becomes difficult even with BPF and kprobes to get the information
> > one would like to have. It was asked if we could add a tracepoint hook
> > in these locations that are not exported to user space where it runs
> > the risk of becoming an ABI. It was pointed out that this mechanism
> > already exists in the kernel.

Aren't we beating the dead horse?
A year ago at the kernel summit:
https://lwn.net/Articles/705270/
"The session concluded with Linus saying that, in the history of kernel development,
nobody has ever screamed about a change to a tracepoint. He allowed that this might
happen as the use of tracepoints increases. But, he said, there is no point in
making a big deal about that possibility before it proves to be a problem."

So instead of inventing trace markers and other new things that are just
like existing tracepoints but without arguments how about
adding normal tracepoints with one or two arguments task* and rq*
bpf progs can walk whatever internals of these structs they need
with probe_read() and that would be plenty of info for most users
including kernel developers.
In that sense the only difference between these new sched tracepoints
and existing kprobe-based scripts will be the speed and ease of
access to task/rq pointers.
If pretty print of tracepoints into trace_pipe is an abi
concern then don't print anything.
Existing sched tracepoints are not useful from bpf point of view,
since they don't have pointers in arguments and instead print
comm/pid/cpu which is not very interesting.
Dumb kprobe in enqueue_task_*() is more powerful
since progs can simply bpf_trace_printk("%d\n", rq->nr_running);
btw I won't be in Prague, so best to discuss over email.
