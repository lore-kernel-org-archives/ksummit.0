From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Jun 2022 13:37:56 +0200
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <nycvar.YFH.7.76.2206160959080.14340@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <CAO-hwJJmW_STS=nT22n4pcaZf9gz953K4o2vhgmq-ig4OzxOLg@mail.gmail.com>
 <nycvar.YFH.7.76.2206160959080.14340@cbobk.fhfr.pm>
Message-ID: <CACRpkdY24aHp+iJschxZzTC4wyX51qH028YY++LZOMu94COeZQ@mail.gmail.com>

On Thu, Jun 16, 2022 at 10:02 AM Jiri Kosina <jikos@kernel.org> wrote:
> On Wed, 15 Jun 2022, Benjamin Tissoires wrote:
>
> > One point that was also raised in the various HID-BPF patch series is
> > that for "hardware enablement" like support, the eBPF programs would be
> > in-tree, and automatically loaded by the kernel itself.
> >
> > Alexei has some ideas on how to implement that, I had others, but the
> > hallway track discussions showed that everybody has a different idea on
> > the automatic mechanism, but it is a requirement and worth discussing :)
> >
> > Which means that in that case, eBPF would be a more convenient way for
> > users to fix their device, without having to rely on a full or partial
> > kernel recompilation.

Convenient for some definition of convenient. I might be biased in asking
how much harder it is to set up a kernel compile, rebuild a module
and run a few insmod/rmmod to find a quirk compared to setting up
the eBPF compiler and figure out how to compile and push in such
programs.

I guess I could be convinced.

> That definitely does solve one of the issues. It's basically following the
> model of perf, where the ABI must not be kept intact, because the user(s)
> of it are in-tree and released in lockstep with the ABI changes.

I agree, I would actually go so far as to taint the kernel if programs that are
not in-tree are used. That is fine for the goal here: users can create new
eBPF snippets and debug them, but they can't ship them because then
the kernel gets tainted, so they MUST be submitted upstream.

Do you think we could do this? Pushing taint in the face of people who
don't follow our established contribution process is essentially the big
hammer we have to stop fragmentation.

Yours,
Linus Walleij
