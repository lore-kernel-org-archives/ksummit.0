Return-Path: <arndbergmann@gmail.com>
MIME-Version: 1.0
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<CACRpkdYk1JKEQ=bumrxRk1eJ97xkQti8E1MRJ_xxen+dZ1a1Xw@mail.gmail.com>
	<CAK8P3a0a=eAwAg5i6z-5Hs56BXKP3CSsv2383zuMh6TrrDPwug@mail.gmail.com>
	<CACRpkdYi66Lgq7OAGchQyfqEUUGVKV9m3YzL6t_nS+Hm0G2rRg@mail.gmail.com>
In-Reply-To: <CACRpkdYi66Lgq7OAGchQyfqEUUGVKV9m3YzL6t_nS+Hm0G2rRg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 11 Sep 2018 13:53:40 +0200
Message-ID: <CAK8P3a3Eq0URSpniC8F5h+V_1mcY2XYsC7zx4_Ux0w+JgyCj6g@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <Ksummit-discuss@lists.linuxfoundation.org>,
	Lukasz Majewski <lukma@denx.de>, Jonas Jensen <jonas.jensen@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>
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

On Tue, Sep 11, 2018 at 10:37 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Including Alexander Sverdlin, Lukasz Majewski  and Jonas
> Jensen here, they may or may not be able to share some of
> their industrial IoT experience. (Contract terms with vendors
> may make it necessary to stay silent sometimes.)

Thanks

> On Mon, Sep 10, 2018 at 11:41 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Mon, Sep 10, 2018 at 5:35 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> > > My ARMv4 is another example, but I can point at new devices
> > > beging deployed as we speak, using that ISA, even though it is
> > > from 1999. So it has many active users (and maintainers).
> >
> > Note that even though gcc is dropping ARMv4 support from new
> > compilers, you can still use old toolchains, and there are tricks to
> > make ARMv4T binary code work on ARMv4. However, if gcc
> > ever stops supporting ARMv4T, this becomes a problem. My guess
> > is that will take another 10 years though, and we might have
> > removed some or all of the individual ARMv4 platforms by then.
>
> ARMv4 is becoming a trouble, not that it is hard to maintain,
> actually we're on top of things there. The problem is that among
> the FA526 systems from Faraday and the ARMv4T in EP93xx
> there are very serious IoT deployments that have been going
> on for soon 15 years and continuing.
>
> New MOXA ART ARMv4 FA526 systems are being deployed
> in buildings across the planet as we speak. They just replaced
> one in the office block where I sit, that is how I got to know.
>
> These are mostly for ventilation and
> similar systems but also heavy duty from Liebherr controlling
> unspecified hydraulic systems. The ventilation systems are
> definately Internet-connected, I don't know about the others.
>
> These pose an increasing security threat, and for that reason
> I personally feel it is irresponsible to remove the option to
> create new kernels and upgrade these devices.

I think it's likely that each of those platforms will get removed
eventually, but we probably need to get better about documenting
the constraints when we add a platform so we have a chance
to find out if there are remaining users when it gets in the way
10 or 15 years later. One common trick is to find something
that is known to have been broken for years as a proof that
nobody cares about it in mainline (we try not to break
things intentionally but after years of untested cleanup patches,
something is likely to break eventually). This of course prevents
you from upgrading kernels only every few years to the latest
LTS version.

Generally speaking, you always have a mix of two models
in (good) products: you provide upgrades based on the
latest kernels as long as it makes sense, but eventually
you settle on some stable/lts/slts version that hopefully
gives you security updates to the end of the expected life
of the hardware, with otherwise minimal changes.

Ideally we'd coordinate between kernel developers and
downstream users here, so we can do our best to keep
a platform alive up to a particular release that then becomes
the base for the SLTS release to last the remaining hardware
life after users are no longer planning to upgrade kernel versions.
This again breaks down when you have the next Spectre
or y2038 type event that forces everyone to upgrade.

I wonder if we can assume that there is a natural limit of
18-20 years between such events that prevents people
from running really old software in a safe way ;-)

> I think for depreciation one has to be aware that some archs
> used in IoT deployments have life cycles of 20-30 or more years,
> whereas some tablet or handset SoCs may be something like
> 5 years maximum before maintainers get annoyed that you
> even use them.

If you have specific examples for the 20-30 year deployment
that you know is running Linux on ARM9, please point me to
pictures that I can include them in my y2038 presentation.

        Arnd
