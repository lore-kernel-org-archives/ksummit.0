From: Jan Kara <jack@suse.cz>
Date: Fri, 17 Jun 2022 12:30:50 +0200
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
 <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
 <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
 <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>
Message-ID: <20220617103050.2almimus5hjcifxl@quack3.lan>

On Fri 17-06-22 09:53:52, Jiri Kosina wrote:
> On Thu, 16 Jun 2022, James Bottomley wrote:
> 
> > > If you want a "stable ebpf program" then you submit it upstream and
> > > we can make sure that it works with any internal API changes, the
> > > same way we do for modules. Those with out-of-tree modules will have
> > > the technical debt of changing every time a new kernel release is
> > > out, and so should out-of-tree bpf programs.
> > 
> > Assuming eBPF takes off, that would have some poor maintainer managing
> > the whole of the compatibility changes for the entire eBPF ecosystem
> > ... I really don't think that's scalable.
> 
> I nevertheless still see this as the best and only option we have; that 
> is, have an infrastructure in the kernel tree for maintaining eBPF 
> programs, somehow sorted per subsystem so that it mirrors the standard 
> maintainership / subsystem structure proper, and have the maintainers 
> responsible for keeping the eBPF programs related to their subsystem in 
> sync with the internal changes happening in the subsystem.
> 
> At the end of the day, it will be the subsystem maintainers themsleves 
> accepting the program into the tree in the first place, so it's not like 
> they are receiving responsibility for something they never wanted in the 
> first place. So we'll probably end up with subsystems with many eBPF 
> programs, and also subsystems with zero. Similarly to tracepoints.
> 
> I.e. pretty much the 'perf' model, but on much wider scale (as eBPF can 
> hook to just about anything).
> 
> Any other option seems to lead to having eBPF programs sprinkled all over 
> the internet that depend on particular kernel version / API, leading to 
> nothing else than unhappy users, because "I downloaded it, it didn't work, 
> Linux sucks".

OK, but if we keep eBPF programs this closely coupled to the kernel, then
what is the advantage of using eBPF, say for HID as was discussed earlier
in this thread, compared to just making sure HID has appropriate hooks and
the handling of the device quirks is done in normal C code (kernel module)
attached to these hooks?

Because frankly for me the main value of eBPF over patching and recompiling
the kernel is that I can tweak the eBPF code exactly to my needs and load
it to the kernel without needing to reboot, over time it is less work than
maintaining a source code patch out of tree, and usually it is a hacky
tweak I use for some debugging so merging it upstream does not make sense.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
