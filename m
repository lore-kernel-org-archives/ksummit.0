From: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Thu, 16 Jun 2022 12:38:24 -0400
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <20220616122634.6e11e58c@gandalf.local.home>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan> <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
Message-ID: <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>

On Thu, 2022-06-16 at 12:26 -0400, Steven Rostedt wrote:
> On Wed, 15 Jun 2022 20:25:41 +0200 (CEST)
> Jiri Kosina <jikos@kernel.org> wrote:
> 
> > > I might as well ask the naive question:  Should subsystems
> > > document
> > > which hooks they intend to treat as ABI?  ;-)  
> 
> I would like there to be a decree that eBPF is denoted as the same as
> a fancy module. And be treated the same as modules. That is, there is
> NO ABI!

Well, you can wish for a Pony, but there's no guarantee you'll get one
...

> 
> A eBPF program that works on one kernel should have no guarantee that
> it will work on another version of the kernel. Because eBPF is
> basically just that, a module. It is compiled into native code that
> runs in kernel space. Exactly like a module, with the caveat that it
> must first go through a verifier.

Based on the encouragement we gave as kernel developers, certain
tracing as a service companies that previously had propritary modules
(Sysdig for instance) are now moving over to using tracing with eBPF. 
At the time we thought this was good for the kernel; if we now try to
tell them "actually you can't use the interface because it's completely
unstable" that's going to undermine our whole argument to them for
dumping proprietary modules.  So I don't think no eBPF at all is stable
is a tenable position for us.

Equally well, I don't think it's as hard as a userspace ABI meaning it
can never change.  I think we can get away with changes that force
tracing and other value added service providers to change their eBPF, I
just don't think we can do it very often without damaging the value of
eBPF over proprietary modules.

> > Unfortunately, this "just select a subset" aproach has been proven
> > not to work with tracepoints (which is exactly why some subsytems
> > systematically refused to add tracepoints in the first place,
> > because they explicitly did want to avoid being constrained by
> > tracepoints having to be stable), which in this particular aspect
> > is a similar problem.

As I said above, I think we have to provide *some* stability, but for a
sophisticated consumer it doesn't have to be the absolute stability
guarantee of an ABI.  I think we should debate what kinds of slightly
unstable stability we could provide

James



