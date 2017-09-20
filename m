Return-Path: <josef@toxicpanda.com>
Date: Wed, 20 Sep 2017 11:04:05 -0400
From: Josef Bacik <josef@toxicpanda.com>
To: Josef Bacik <jbacik@fb.com>
Message-ID: <20170920150404.2x63t3bd4pkusoa3@destiny>
References: <20170920095031.1972fba5@gandalf.local.home>
	<0C1E6F2D-2E7D-4477-9F35-8C59F62BB409@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0C1E6F2D-2E7D-4477-9F35-8C59F62BB409@fb.com>
Cc: "ksummit-discuss@lists.linux-foundation.org"
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

On Wed, Sep 20, 2017 at 02:54:07PM +0000, Josef Bacik wrote:
> Cc’ing my personal address so I can reply with a sane email client.
> 
> On 9/20/17, 9:50 AM, "Steven Rostedt" <rostedt@goodmis.org> wrote:
> 
> The topic came up again at (of all places) the Schedule Workloads
> Microconf at Linux Plumbers in LA last week. The addition of
> tracepoints in locations that maintainers don't want them, only because
> they don't want them to become an ABI for user space tools. Where
> these tools then must be supported indefinitely, and may prevent
> future development of the kernel. This includes the scheduler as well
> as VFS (mandated by Al Viro).
> 
> The current solution by Facebook (told to us by Josef Bacik) is to just
> hand write kprobes with BPF programs to the locations that they need.
> When they get a new kernel, they just rewrite the programs because the
> kprobes and BPF programs break at each new release (or can break).
> 
> First it was mentioned to add a hook to locations where it would be
> easier to get variables, as the compiler could optimize them out, and
> it becomes difficult even with BPF and kprobes to get the information
> one would like to have. It was asked if we could add a tracepoint hook
> in these locations that are not exported to user space where it runs
> the risk of becoming an ABI. It was pointed out that this mechanism
> already exists in the kernel.
> 
> A tracepoint is the hook in the kernel. The TRACE_EVENT() macro is
> built on top of a tracepoint to export it to user space. But the
> tracepoint itself can be manually added anywhere and there will be no
> creation of trace event files in the tracefs directory, nor would perf
> be able to access it. But the advantage of having this hook is that a
> kernel module could access it without a problem.
> 
> By adding tracepoints in the scheduler and VFS, without the TRACE_EVENT
> macros that export them to user space, it would be much easier for
> companies like Facebook, Red Hat and SuSE to add a module that can tap
> into these hooks and build their custom analysis tools on top.
> 
> Requiring an external and custom module to access the tracepoints on
> live systems (that is, an unmodified vanilla kernel or distro kernel)
> will help these companies implement advance analytical tools to monitor
> their production kernels, and because it requires a module, and it has
> been stated several times in the past that there is no KABI with module
> interfaces, the maintainers of these hooks should have no fear that
> they will become a stable interface.
> 

The tricky part is we want to be able to access these from eBPF.  I argue that
eBPF is run in the kernel so it has the same rules as kernel modules.  Others
seem less convinced of this argument, so it would be good to get a definitive
answer.  Thanks,

Josef
