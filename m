Return-Path: <SRS0=LIaE=AV=goodmis.org=rostedt@kernel.org>
Date: Wed, 20 Sep 2017 09:50:31 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: ksummit-discuss@lists.linux-foundation.org
Message-ID: <20170920095031.1972fba5@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Josef Bacik <jbacik@fb.com>, Peter Zijlstra <peterz@infradead.org>
Subject: [Ksummit-discuss] [MAINTAINER TOPIC] tracepoints without user space
	interfaces
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The topic came up again at (of all places) the Schedule Workloads
Microconf at Linux Plumbers in LA last week. The addition of
tracepoints in locations that maintainers don't want them, only because
they don't want them to become an ABI for user space tools. Where
these tools then must be supported indefinitely, and may prevent
future development of the kernel. This includes the scheduler as well
as VFS (mandated by Al Viro).

The current solution by Facebook (told to us by Josef Bacik) is to just
hand write kprobes with BPF programs to the locations that they need.
When they get a new kernel, they just rewrite the programs because the
kprobes and BPF programs break at each new release (or can break).

First it was mentioned to add a hook to locations where it would be
easier to get variables, as the compiler could optimize them out, and
it becomes difficult even with BPF and kprobes to get the information
one would like to have. It was asked if we could add a tracepoint hook
in these locations that are not exported to user space where it runs
the risk of becoming an ABI. It was pointed out that this mechanism
already exists in the kernel.

A tracepoint is the hook in the kernel. The TRACE_EVENT() macro is
built on top of a tracepoint to export it to user space. But the
tracepoint itself can be manually added anywhere and there will be no
creation of trace event files in the tracefs directory, nor would perf
be able to access it. But the advantage of having this hook is that a
kernel module could access it without a problem.

By adding tracepoints in the scheduler and VFS, without the TRACE_EVENT
macros that export them to user space, it would be much easier for
companies like Facebook, Red Hat and SuSE to add a module that can tap
into these hooks and build their custom analysis tools on top.

Requiring an external and custom module to access the tracepoints on
live systems (that is, an unmodified vanilla kernel or distro kernel)
will help these companies implement advance analytical tools to monitor
their production kernels, and because it requires a module, and it has
been stated several times in the past that there is no KABI with module
interfaces, the maintainers of these hooks should have no fear that
they will become a stable interface.

Now, I will also point out that if one of the tracepoint hooks prove to
be useful for a generic tool, then this could be an incentive to have
the maintainer change the tracepoint hook into a full blown
TRACE_EVENT() and upgrade it to an ABI, after having time to see how it
is useful. This is a better method than having tens of trace events
where one random one proves to be useful for tools and surprises the
maintainer that the code it affects can no longer be changed.

Thoughts?

-- Steve
