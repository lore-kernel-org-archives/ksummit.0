From: Jonathan Corbet <corbet@lwn.net>
Date: Wed, 15 Jun 2022 11:25:12 -0600
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
Message-ID: <87h74lvnyf.fsf@meer.lwn.net>

Jan Kara <jack@suse.cz> writes:

> Yeah. Related to this is the fact that this way eBPF hooks become de-facto
> API of the kernel with all the implications for required stability. It is
> one thing to use eBPF for kernel introspection / monitoring (there
> occasional breakage is kind of expected by userspace) and another to enable
> hardware with it where people just expect things to work...

Relevant to this whole thing, I think, is the multigenerational LRU
discussion at LSFMM: https://lwn.net/Articles/894859/

One aspect that was only dropped in as a response to a question is that
the plan is to add a BPF hook to manage the movement of pages between
LRU generations; this will be done because nobody really knows how to
come up with an optimal solution to that problem for the general case.
That's about as core as it gets and, if users are tweaking memory
management with BPF, that will surely achieve ABI status in short order.

Beyond that, though, is the temptation to say "we don't have to figure
out this hard problem, we'll just add a BPF hook and let the users find
a solution for themselves".  The line between providing a useful means
for expert users to optimize their systems and skipping out on our own
duty to optimize things is not always clear, at least to me.

jon
