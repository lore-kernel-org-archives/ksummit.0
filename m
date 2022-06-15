From: Jiri Kosina <jkosina@suse.cz>
Date: Wed, 15 Jun 2022 08:55:47 +0200 (CEST)
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
Message-ID: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>

As everyone is pretty much aware, eBPF adoption is quickly expanding for 
various usecases in the kernel. For example, there has recently been 
effort invested into adding eBPF support to HID subsystem [1], in order to 
make adding quirks for specific devices easier, not requiring a "full" 
proper driver for devices that just need a tiny bit of special handling 
here and there but apart from that can be handled by the generic driver 
just fine.

While there are many proponents of "eBPF is good for everything and your 
grandma" aproach, this opinion is not universally shared. One big risk is 
that this will eventually lead to possibility of having whole drivers / 
core code written in eBPF, which could potentially lead to decreased 
maintainability and supportability, also due to big fragmentation of the 
code (eBPF programs might not necessarily be shipped together with the 
kernel codebase).

This could potentially be a big risk for distros as well, as we (as a 
distro vendor) might be very quickly losing control over what is actually 
running in the context of the kernel they are bound to be supporting.

In the specific case of drivers, there also is also some similarity in 
principle with UDI, which is a concept that hasn't proved viable quite 
some time ago already :)

I feel like we are currently lacking a clear borderline, defining what is 
still acceptable by the community to be implemented in terms of eBPF, and 
what is over the line as it'd be causing big supportability and 
maintainability concerns (see e.g. Christoph's concern to the HID eBPF 
implementation implications [2]).

So I'd like to propose a session where we'd ideally converge closer to 
defining a borderline between acceptable and non-acceptable usecases for 
eBPF in the kernel.

[1] https://lore.kernel.org/all/20220518205924.399291-1-benjamin.tissoires@redhat.com/
[2] https://lore.kernel.org/all/YoX7iHddAd4FkQRQ@infradead.org/

Thanks,

-- 
Jiri Kosina
SUSE Labs
