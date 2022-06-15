From: Jan Kara <jack@suse.cz>
Date: Wed, 15 Jun 2022 19:04:07 +0200
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
Message-ID: <20220615170407.ycbkgw5rofidkh7x@quack3.lan>

On Wed 15-06-22 10:36:41, Jiri Kosina wrote:
> On Wed, 15 Jun 2022, Linus Walleij wrote:
> 
> > > As everyone is pretty much aware, eBPF adoption is quickly expanding for
> > > various usecases in the kernel. For example, there has recently been
> > > effort invested into adding eBPF support to HID subsystem [1], in order to
> > > make adding quirks for specific devices easier, not requiring a "full"
> > > proper driver for devices that just need a tiny bit of special handling
> > > here and there but apart from that can be handled by the generic driver
> > > just fine.
> > 
> > I see your concern as subsystem maintainer not wanting HID to turn into 
> > a dumping ground for various vendor extensions. 
> 
> Just to clarify the point I was trying to make here -- I am not saying 
> that I do not like this particular case (i.e. the HID-BFP patchset that 
> Benjamin is developing).
> 
> My point was that unless we properly define what are the reasonable 
> usecases for eBPF and what is the borderline beyond which we shouldn't go 
> if we want to maintain sanity of the ecosystem (and people having to 
> support the kernels :) ), we will be getting this discussion popping up 
> over and over again.

Yeah. Related to this is the fact that this way eBPF hooks become de-facto
API of the kernel with all the implications for required stability. It is
one thing to use eBPF for kernel introspection / monitoring (there
occasional breakage is kind of expected by userspace) and another to enable
hardware with it where people just expect things to work...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
