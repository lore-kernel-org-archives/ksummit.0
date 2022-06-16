From: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date: Thu, 16 Jun 2022 14:09:20 +0200
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <CACRpkdY24aHp+iJschxZzTC4wyX51qH028YY++LZOMu94COeZQ@mail.gmail.com>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <CAO-hwJJmW_STS=nT22n4pcaZf9gz953K4o2vhgmq-ig4OzxOLg@mail.gmail.com>
 <nycvar.YFH.7.76.2206160959080.14340@cbobk.fhfr.pm>
 <CACRpkdY24aHp+iJschxZzTC4wyX51qH028YY++LZOMu94COeZQ@mail.gmail.com>
Message-ID: <CAO-hwJJzwbzB4=h4EUN3MaGnu7xRRm-5_yn0Bg5v3zYmz1D0fQ@mail.gmail.com>

On Thu, Jun 16, 2022 at 1:38 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Thu, Jun 16, 2022 at 10:02 AM Jiri Kosina <jikos@kernel.org> wrote:
> > On Wed, 15 Jun 2022, Benjamin Tissoires wrote:
> >
> > > One point that was also raised in the various HID-BPF patch series is
> > > that for "hardware enablement" like support, the eBPF programs would be
> > > in-tree, and automatically loaded by the kernel itself.
> > >
> > > Alexei has some ideas on how to implement that, I had others, but the
> > > hallway track discussions showed that everybody has a different idea on
> > > the automatic mechanism, but it is a requirement and worth discussing :)
> > >
> > > Which means that in that case, eBPF would be a more convenient way for
> > > users to fix their device, without having to rely on a full or partial
> > > kernel recompilation.
>
> Convenient for some definition of convenient. I might be biased in asking
> how much harder it is to set up a kernel compile, rebuild a module
> and run a few insmod/rmmod to find a quirk compared to setting up
> the eBPF compiler and figure out how to compile and push in such
> programs.
>
> I guess I could be convinced.

The plan is to forward to the end user the sources, of course, but
also the binary blob. The binary can be checked that it is doing the
correct thing because it's not so much of a black box and we can
easily check that it is the one built from the source. For extra check
the maintainer can also sign the binary.

And for the end user, it is thus: 1. trust your kernel maintainer (see
above if you don't), and 2. drop the binary in the file system and
forget. So no compilation involved :)

>
> > That definitely does solve one of the issues. It's basically following the
> > model of perf, where the ABI must not be kept intact, because the user(s)
> > of it are in-tree and released in lockstep with the ABI changes.
>
> I agree, I would actually go so far as to taint the kernel if programs that are
> not in-tree are used. That is fine for the goal here: users can create new
> eBPF snippets and debug them, but they can't ship them because then
> the kernel gets tainted, so they MUST be submitted upstream.
>
> Do you think we could do this? Pushing taint in the face of people who
> don't follow our established contribution process is essentially the big
> hammer we have to stop fragmentation.

I would like to have that too. The in-kernel eBPF binaries are using a
different path to be loaded so I would assume this is OK to
differentiate, but I'll leave it to Alexei to give a more definitive
answer.

Cheers,
Benjamin

