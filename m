From: Steven Rostedt <rostedt@goodmis.org>
Date: Thu, 16 Jun 2022 12:26:34 -0400
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
 <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
Message-ID: <20220616122634.6e11e58c@gandalf.local.home>

On Wed, 15 Jun 2022 20:25:41 +0200 (CEST)
Jiri Kosina <jikos@kernel.org> wrote:

> > I might as well ask the naive question:  Should subsystems document
> > which hooks they intend to treat as ABI?  ;-)  

I would like there to be a decree that eBPF is denoted as the same as a
fancy module. And be treated the same as modules. That is, there is NO ABI!

A eBPF program that works on one kernel should have no guarantee that it
will work on another version of the kernel. Because eBPF is basically just
that, a module. It is compiled into native code that runs in kernel space.
Exactly like a module, with the caveat that it must first go through a
verifier.

> 
> Unfortunately, this "just select a subset" aproach has been proven not to 
> work with tracepoints (which is exactly why some subsytems systematically 
> refused to add tracepoints in the first place, because they explicitly did 
> want to avoid being constrained by tracepoints having to be stable), which 
> in this particular aspect is a similar problem.

The difference between eBPF and tracepoints (actually only trace events),
is that trace events are exported visibly to user space and attached via
the perf system call. The trace event's format is shown in the tracefs
events directory. Just like any file in /proc, the trace events can easily
be read by a privileged user space application.

Now tracepoints are not exported to user space.

  The difference between a tracepoint and trace event is that a tracepoint
  is the "trace_foo()" in the kernel, where as the trace event is the data
  extracted from the tracepoint via the TRACE_EVENT() macro and listed in
  the format files in the tracefs events directory.

The tracepoint interface is just like any other C function in the kernel,
and should never be considered an ABI.

I wanted to bring this up at MS as well, so I'd like to extend this topic,
and say eBPF programs *are* modules.

We had an issue [1] that we added a parameter to the sched_switch
tracepooint (not trace event), and that broke some eBPF programs. Since all
they wanted was for use to reorder the parameters of the tracepoint call,
we obliged. But we made it a point that this must not set a precedent.
The mere fact that we had to do this has brought up major concerns that
eBPF is starting to become too invasive and may limit the ability of kernel
development.

[1] https://lore.kernel.org/all/c8a6930dfdd58a4a5755fc01732675472979732b.camel@fb.com/T/#mc2ec6eded478552fc01d10e32dc4a892f95a9900

-- Steve

