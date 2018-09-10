Return-Path: <arndbergmann@gmail.com>
MIME-Version: 1.0
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<CACRpkdYk1JKEQ=bumrxRk1eJ97xkQti8E1MRJ_xxen+dZ1a1Xw@mail.gmail.com>
In-Reply-To: <CACRpkdYk1JKEQ=bumrxRk1eJ97xkQti8E1MRJ_xxen+dZ1a1Xw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 10 Sep 2018 23:40:59 +0200
Message-ID: <CAK8P3a0a=eAwAg5i6z-5Hs56BXKP3CSsv2383zuMh6TrrDPwug@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <Ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Deprecation / Removal of
 old hardware support
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 5:35 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Mon, Sep 10, 2018 at 4:04 PM Peter Huewe <PeterHuewe@gmx.de> wrote:
>
> > one topic I would like to discuss is: when is it time to remove support for old hardware?
> > Should we support as much hardware as possible forever, or does it make sense to cut down the support?
> > If so, when would be appropriate?
>
> I've been thinking a lot about it. I just recently prepared a talk on the
> subject.
>
> My thinking has been something along the lines: if it has active
> users we don't delete it, by the same token that we don't destroy
> kernel interfaces that have active users.
>
> Of course the definition of "users" is a bit complex there. In our
> opinion the "users" are those who regularly compile new kernels
> and test them, finds regressions, bisects problems and generally
> do a good job in the community. Not ranting bloggers.
>
> By this reasoning it is absolutely forbidden to propose something
> like to delete arch/m68k (the last CPU M68060 produced in
> 1994 IIUC) as long as these maintainers put in an honest effort to
> keep running that kernel on increasingly aging and hard to obtain
> hardware like Apollo/Domain or Amiga 4000.
>
> One day the last m68k users stops responding to regressions and
> then it can be deleted.

When I prepared the series to remove eight unmaintained architectures,
that is roughly what I did. I also managed to contact at least one
core developer for each of those architectures (or at least one
person representing the company owning that IP), and it was all
done in agreement with them.

One architecture (unicore32) got saved in the last minute by
the maintainer saying that he'd rather keep it in tree, despite not
even having a publicly available toolchain with sources.

For architecture support, I don't think we are removing anything
in the next few years now, but there are two notable categories
of platform ports that are definitely obsolete, and we may want
to consider how to manage their remaining lives:

- Server architectures without a future: alpha, parisc, (mostly)
  ia64, (arguably) sparc are in a similar category as m68k;
  they are kept alive by enthusiasts that still have the hardware,
  but nobody in their right minds is putting new workloads on
  them.

- In some architectures (arm, mips, ppc, sh, m68k), we support
   many different machines, but only a small number of those
   machines are actively being used by anyone. We did a big
   cleanup on ARM a few years ago, and ppc dropped some
   machines during the conversion to DT, but in some of the
   others that never happened, and some have died in the
   meantime (or in some cases died just after they got merged,
   such as arm/mach-axxia).

Making the correct call on which platforms exactly are dead
takes a lot of knowledge and work to get right, e.g. you want
to also remove all hacks in device drivers that were added for
a platform when that gets removed.

One big problem with removing code in general is that code that
becomes unmaintained often also has nobody left that knows
about it being unmaintained.

> My ARMv4 is another example, but I can point at new devices
> beging deployed as we speak, using that ISA, even though it is
> from 1999. So it has many active users (and maintainers).

Note that even though gcc is dropping ARMv4 support from new
compilers, you can still use old toolchains, and there are tricks to
make ARMv4T binary code work on ARMv4. However, if gcc
ever stops supporting ARMv4T, this becomes a problem. My guess
is that will take another 10 years though, and we might have
removed some or all of the individual ARMv4 platforms by then.

      Arnd
