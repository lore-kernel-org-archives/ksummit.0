From: Jiri Kosina <jikos@kernel.org>
Date: Thu, 16 Jun 2022 10:02:27 +0200 (CEST)
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <CAO-hwJJmW_STS=nT22n4pcaZf9gz953K4o2vhgmq-ig4OzxOLg@mail.gmail.com>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <CAO-hwJJmW_STS=nT22n4pcaZf9gz953K4o2vhgmq-ig4OzxOLg@mail.gmail.com>
Message-ID: <nycvar.YFH.7.76.2206160959080.14340@cbobk.fhfr.pm>

On Wed, 15 Jun 2022, Benjamin Tissoires wrote:

> One point that was also raised in the various HID-BPF patch series is 
> that for "hardware enablement" like support, the eBPF programs would be 
> in-tree, and automatically loaded by the kernel itself.
> 
> Alexei has some ideas on how to implement that, I had others, but the 
> hallway track discussions showed that everybody has a different idea on 
> the automatic mechanism, but it is a requirement and worth discussing :)
> 
> Which means that in that case, eBPF would be a more convenient way for 
> users to fix their device, without having to rely on a full or partial 
> kernel recompilation.

That definitely does solve one of the issues. It's basically following the 
model of perf, where the ABI must not be kept intact, because the user(s) 
of it are in-tree and released in lockstep with the ABI changes.

> While working on eBPF, I came to realize how hidraw is bad in terms of 
> development model for userspace "drivers". 

As the original author of hidraw, I have to agree :) I didn't expect such 
an explosion of userspace drivers being dependent on it, it was primarily 
meant for debugging and tweaking.

libusb is a similar example, I believe.

-- 
Jiri Kosina
SUSE Labs

