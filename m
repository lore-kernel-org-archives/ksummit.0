From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 15 Jun 2022 10:05:14 +0200
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
Message-ID: <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>

On Wed, Jun 15, 2022 at 8:55 AM Jiri Kosina <jkosina@suse.cz> wrote:

> As everyone is pretty much aware, eBPF adoption is quickly expanding for
> various usecases in the kernel. For example, there has recently been
> effort invested into adding eBPF support to HID subsystem [1], in order to
> make adding quirks for specific devices easier, not requiring a "full"
> proper driver for devices that just need a tiny bit of special handling
> here and there but apart from that can be handled by the generic driver
> just fine.

I see your concern as subsystem maintainer not wanting HID to turn
into a dumping ground for various vendor extensions. I submitted
a Razer keyboard bling driver that was nixed with "put it in userspace",
i.e. using hidraw, and I was directed to the project called "razertest"
https://github.com/z3ntu/razer_test
https://patchwork.kernel.org/project/linux-input/patch/20181128222443.13062-1-linus.walleij@linaro.org/

One of the concerns raised was (Luca) "I wouldn't put too much functionality
into the kernel driver as new devices are being released all the time and it
would probably take very long for those patches to arrive at users of
non-rolling distros."

The problem with this is that while the kernel has a highway into *all*
distros and how many distros even carry "razer_test"? Not Fedora
for example. That surely has not reached users of any distro AFAICT.

So what we have here is three prominent HID contributors: Benjamin,
Luca and Jiri. One of you work for RedHat and one of you work for SuSE.
And yet none of your distributions have packaged Luca's userspace project?
Can't you see that this isn't working?

I feel HID is maybe missing the point that creating new userspace
projects is really hard and resource-craving, involving a lot of social
problem, process and lobbying compared to maintaining
a few more driver files in the kernel.

Referring people to misc half-adopted userspace projects for full support
of the hardware on their desk isn't really sustainable, no matter if
they use eBPF or not. (Asking them to go and create their own userspace
driver extension libraries is even less helpful.)

I once created libmtp for MTP communication with storage devices
such as all Android phones. In a way it is a success since it is
deployed in all distros and even used on Mac by Google for
accessing Android devices. Would I implement it today I would
seriously discuss with Greg to make this a kernel driver instead.
Simply because the kernel has more momentum, community
and attention. More bugs get fixed there, maintenance actually
happens. I'm really suspicious of other microkernel-like projects
such as libsane and cups as well, but they can talk for
themselves.

To me the big question is rather: does HID have a working userspace
project community outside of the kernel, which is adopted by all major
distributions? I know it is a chicken and egg problem, and that you
need to create something to get accepted but is there some
momentum in these projects?

At a minimum, do what Bartosz did for the libgpiod library that we
(reluctantly) developed for userspace GPIO access, and put the git
for the userspace on git.kernel.org so people know where to find it
and get the cuddly feeling that it has something to do with the official
Linux kernel.

> While there are many proponents of "eBPF is good for everything and your
> grandma" aproach, this opinion is not universally shared. One big risk is
> that this will eventually lead to possibility of having whole drivers /
> core code written in eBPF, which could potentially lead to decreased
> maintainability and supportability, also due to big fragmentation of the
> code (eBPF programs might not necessarily be shipped together with the
> kernel codebase).
(...)
> I feel like we are currently lacking a clear borderline, defining what is
> still acceptable by the community to be implemented in terms of eBPF, and
> what is over the line as it'd be causing big supportability and
> maintainability concerns (see e.g. Christoph's concern to the HID eBPF
> implementation implications [2]).

I must say from my own experience I side with Christoph here.

I just want to add some code to the kernel so my hardware works
(better) out of the box, is that really so voluminous for the HID maintainers
to maintain that it need to be referred to userspace?

I kind of feel like rebasing and resubmitting my razer driver from 2018
to raise a discussion here. Will I be asked to rewrite it in eBPF
if I do?

Yours,
Linus Walleij
