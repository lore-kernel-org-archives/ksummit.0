From: Jiri Kosina <jikos@kernel.org>
Date: Wed, 15 Jun 2022 10:36:41 +0200 (CEST)
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
Message-ID: <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>

On Wed, 15 Jun 2022, Linus Walleij wrote:

> > As everyone is pretty much aware, eBPF adoption is quickly expanding for
> > various usecases in the kernel. For example, there has recently been
> > effort invested into adding eBPF support to HID subsystem [1], in order to
> > make adding quirks for specific devices easier, not requiring a "full"
> > proper driver for devices that just need a tiny bit of special handling
> > here and there but apart from that can be handled by the generic driver
> > just fine.
> 
> I see your concern as subsystem maintainer not wanting HID to turn into 
> a dumping ground for various vendor extensions. 

Just to clarify the point I was trying to make here -- I am not saying 
that I do not like this particular case (i.e. the HID-BFP patchset that 
Benjamin is developing).

My point was that unless we properly define what are the reasonable 
usecases for eBPF and what is the borderline beyond which we shouldn't go 
if we want to maintain sanity of the ecosystem (and people having to 
support the kernels :) ), we will be getting this discussion popping up 
over and over again.

> I submitted a Razer keyboard bling driver that was nixed with "put it in 
> userspace", i.e. using hidraw, and I was directed to the project called 
> "razertest" https://github.com/z3ntu/razer_test 
> https://patchwork.kernel.org/project/linux-input/patch/20181128222443.13062-1-linus.walleij@linaro.org/
> 
> One of the concerns raised was (Luca) "I wouldn't put too much functionality
> into the kernel driver as new devices are being released all the time and it
> would probably take very long for those patches to arrive at users of
> non-rolling distros."

I actually don't buy that as an argument. Distros are quite happily 
backporting to their kernels whatever the users / customers request from 
them, so I don't see why this would be an exception.

If there is a good use for it in a particular distro, it's up to that 
distro (or embedded vendor kernel) to have it ported.

> The problem with this is that while the kernel has a highway into *all*
> distros and how many distros even carry "razer_test"? Not Fedora
> for example. That surely has not reached users of any distro AFAICT.
> 
> So what we have here is three prominent HID contributors: Benjamin,
> Luca and Jiri. One of you work for RedHat and one of you work for SuSE.
> And yet none of your distributions have packaged Luca's userspace project?
> Can't you see that this isn't working?

I am probably much more inclined into taking the drivers into kernel than 
some of the others. I have always had issues with drivers in userspace (no 
matter whether it's libusb, UIO, hidraw, or whatever else there is), 
exactly because of the issues it brings when it comes to distributing it.

With perhaps an exception of things that can be made to work with an udev 
rule / script.

> To me the big question is rather: does HID have a working userspace 
> project community outside of the kernel, which is adopted by all major 
> distributions? I know it is a chicken and egg problem, and that you need 
> to create something to get accepted but is there some momentum in these 
> projects?

Even though I brought HID as an example on which I wanted to just 
demonstrate the point, I'd actually like to propose this discussion to 
stay completely abstracted away from any particular subsystem.

I didn't bring it up because of HID specifically, but as a general issue 
that spans across subsystems.

> > While there are many proponents of "eBPF is good for everything and your
> > grandma" aproach, this opinion is not universally shared. One big risk is
> > that this will eventually lead to possibility of having whole drivers /
> > core code written in eBPF, which could potentially lead to decreased
> > maintainability and supportability, also due to big fragmentation of the
> > code (eBPF programs might not necessarily be shipped together with the
> > kernel codebase).
> (...)
> > I feel like we are currently lacking a clear borderline, defining what is
> > still acceptable by the community to be implemented in terms of eBPF, and
> > what is over the line as it'd be causing big supportability and
> > maintainability concerns (see e.g. Christoph's concern to the HID eBPF
> > implementation implications [2]).
> 
> I must say from my own experience I side with Christoph here.
> 
> I just want to add some code to the kernel so my hardware works (better) 
> out of the box, is that really so voluminous for the HID maintainers to 
> maintain that it need to be referred to userspace?
> 
> I kind of feel like rebasing and resubmitting my razer driver from 2018 
> to raise a discussion here. 

I actually don't remember that submission from back 2018, sorry, but I 
personally wouldn't see a big problem accepting the driver as-is. But 
that's a discussion to have on a regular thread after you (re)submit it, 
but is probably not so relevant for the point I wanted to make here.

> Will I be asked to rewrite it in eBPF if I do?

Definitely not by me :)

Thanks,

-- 
Jiri Kosina
SUSE Labs

