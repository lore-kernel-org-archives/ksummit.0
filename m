From: Jiri Kosina <jikos@kernel.org>
Date: Wed, 15 Jun 2022 20:25:41 +0200 (CEST)
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan> <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
Message-ID: <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>

On Wed, 15 Jun 2022, Paul E. McKenney wrote:

> > Relevant to this whole thing, I think, is the multigenerational LRU
> > discussion at LSFMM: https://lwn.net/Articles/894859/
> > 
> > One aspect that was only dropped in as a response to a question is that
> > the plan is to add a BPF hook to manage the movement of pages between
> > LRU generations; this will be done because nobody really knows how to
> > come up with an optimal solution to that problem for the general case.
> > That's about as core as it gets and, if users are tweaking memory
> > management with BPF, that will surely achieve ABI status in short order.
> > 
> > Beyond that, though, is the temptation to say "we don't have to figure
> > out this hard problem, we'll just add a BPF hook and let the users find
> > a solution for themselves".  The line between providing a useful means
> > for expert users to optimize their systems and skipping out on our own
> > duty to optimize things is not always clear, at least to me.
> 
> I might as well ask the naive question:  Should subsystems document
> which hooks they intend to treat as ABI?  ;-)

Unfortunately, this "just select a subset" aproach has been proven not to 
work with tracepoints (which is exactly why some subsytems systematically 
refused to add tracepoints in the first place, because they explicitly did 
want to avoid being constrained by tracepoints having to be stable), which 
in this particular aspect is a similar problem.

-- 
Jiri Kosina
SUSE Labs

