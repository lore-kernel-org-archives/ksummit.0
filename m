From: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Thu, 16 Jun 2022 14:25:44 -0400
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <20220616125128.68151432@gandalf.local.home>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan> <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
Message-ID: <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>

On Thu, 2022-06-16 at 12:51 -0400, Steven Rostedt wrote:
> On Thu, 16 Jun 2022 12:38:24 -0400
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> > > A eBPF program that works on one kernel should have no guarantee
> > > that it will work on another version of the kernel. Because eBPF
> > > is basically just that, a module. It is compiled into native code
> > > that runs in kernel space. Exactly like a module, with the caveat
> > > that it must first go through a verifier.  
> > 
> > Based on the encouragement we gave as kernel developers, certain
> > tracing as a service companies that previously had propritary
> > modules (Sysdig for instance) are now moving over to using tracing
> > with eBPF. 
> 
> I wasn't in this conversation, so I'm unaware of the advantages of
> it.

Unaware of the advantages of using eBPF over proprietary modules? 
We've had a long standing policy of discouraging proprietary modules. 
We use the carrot and stick methods.  The stick is definitely the API
is unstable and changes often and will break you (and even some kernel
developers will go out of their way to change the API your using).  The
carrot is showing them there are better and easier ways of doing the
things they're trying to achieve without using proprietary modules.

> > At the time we thought this was good for the kernel; if we now try
> > to tell them "actually you can't use the interface because it's
> > completely unstable" that's going to undermine our whole argument
> > to them for dumping proprietary modules.  So I don't think no eBPF
> > at all is stable is a tenable position for us.
> > 
> > Equally well, I don't think it's as hard as a userspace ABI meaning
> > it can never change.  I think we can get away with changes that
> > force tracing and other value added service providers to change
> > their eBPF, I just don't think we can do it very often without
> > damaging the value of eBPF over proprietary modules.
> 
> Perhaps we should add a place in tools/bpf for "upstream bpf
> programs". Or is there already something there? Again, I would like
> to treat bpf no different than modules. Sorry, I don't see a
> "convince proprietary module folks to create proprietary bpf
> programs" as progress. If anything, it's going backwards.

That's a false dichotomy: it's not true the only way of forcing
openness is to pull something into the kernel tree.  I gave the
proprietary module as one example, but not everything that uses eBPF is
proprietary ... although it is also true that not everything that's
open is under a licence compatible with the kernel.

> If you want a "stable ebpf program" then you submit it upstream and
> we can make sure that it works with any internal API changes, the
> same way we do for modules. Those with out-of-tree modules will have
> the technical debt of changing every time a new kernel release is
> out, and so should out-of-tree bpf programs.

Assuming eBPF takes off, that would have some poor maintainer managing
the whole of the compatibility changes for the entire eBPF ecosystem
... I really don't think that's scalable.

> > > > Unfortunately, this "just select a subset" aproach has been
> > > > proven not to work with tracepoints (which is exactly why some
> > > > subsytems systematically refused to add tracepoints in the
> > > > first place, because they explicitly did want to avoid being
> > > > constrained by tracepoints having to be stable), which in this
> > > > particular aspect is a similar problem.  
> > 
> > As I said above, I think we have to provide *some* stability, but
> > for a sophisticated consumer it doesn't have to be the absolute
> > stability guarantee of an ABI.  I think we should debate what kinds
> > of slightly unstable stability we could provide
> 
> What you define as "somewhat stable" others may define as "not stable
> at all". There is no happy medium (as you said, "you can wish for a
> Pony, but there's no guarantee you'll get one").
> 
> Once you say you will have some stability, that will become an
> albatross around your neck forever.

Not if it's managed correctly.  One method could simply be to not care
but be careful.  After all, lots of companies still manage to produce
proprietary modules even with us actively trying to break the API. 
Either it's not as difficult as we think or API changes are easier to
cope with than we assume.

James


