From: Jiri Kosina <jikos@kernel.org>
Date: Fri, 17 Jun 2022 09:53:52 +0200 (CEST)
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan> <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
 <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
Message-ID: <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>

On Thu, 16 Jun 2022, James Bottomley wrote:

> > If you want a "stable ebpf program" then you submit it upstream and
> > we can make sure that it works with any internal API changes, the
> > same way we do for modules. Those with out-of-tree modules will have
> > the technical debt of changing every time a new kernel release is
> > out, and so should out-of-tree bpf programs.
> 
> Assuming eBPF takes off, that would have some poor maintainer managing
> the whole of the compatibility changes for the entire eBPF ecosystem
> ... I really don't think that's scalable.

I nevertheless still see this as the best and only option we have; that 
is, have an infrastructure in the kernel tree for maintaining eBPF 
programs, somehow sorted per subsystem so that it mirrors the standard 
maintainership / subsystem structure proper, and have the maintainers 
responsible for keeping the eBPF programs related to their subsystem in 
sync with the internal changes happening in the subsystem.

At the end of the day, it will be the subsystem maintainers themsleves 
accepting the program into the tree in the first place, so it's not like 
they are receiving responsibility for something they never wanted in the 
first place. So we'll probably end up with subsystems with many eBPF 
programs, and also subsystems with zero. Similarly to tracepoints.

I.e. pretty much the 'perf' model, but on much wider scale (as eBPF can 
hook to just about anything).

Any other option seems to lead to having eBPF programs sprinkled all over 
the internet that depend on particular kernel version / API, leading to 
nothing else than unhappy users, because "I downloaded it, it didn't work, 
Linux sucks".

-- 
Jiri Kosina
SUSE Labs

