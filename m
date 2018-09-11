Return-Path: <linus.walleij@linaro.org>
MIME-Version: 1.0
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<CACRpkdYk1JKEQ=bumrxRk1eJ97xkQti8E1MRJ_xxen+dZ1a1Xw@mail.gmail.com>
	<CAK8P3a0a=eAwAg5i6z-5Hs56BXKP3CSsv2383zuMh6TrrDPwug@mail.gmail.com>
In-Reply-To: <CAK8P3a0a=eAwAg5i6z-5Hs56BXKP3CSsv2383zuMh6TrrDPwug@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 11 Sep 2018 10:37:36 +0200
Message-ID: <CACRpkdYi66Lgq7OAGchQyfqEUUGVKV9m3YzL6t_nS+Hm0G2rRg@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Lukasz Majewski <lukma@denx.de>, Jonas Jensen <jonas.jensen@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Ksummit-discuss@lists.linuxfoundation.org
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

Including Alexander Sverdlin, Lukasz Majewski  and Jonas
Jensen here, they may or may not be able to share some of
their industrial IoT experience. (Contract terms with vendors
may make it necessary to stay silent sometimes.)

On Mon, Sep 10, 2018 at 11:41 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Mon, Sep 10, 2018 at 5:35 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> > My ARMv4 is another example, but I can point at new devices
> > beging deployed as we speak, using that ISA, even though it is
> > from 1999. So it has many active users (and maintainers).
>
> Note that even though gcc is dropping ARMv4 support from new
> compilers, you can still use old toolchains, and there are tricks to
> make ARMv4T binary code work on ARMv4. However, if gcc
> ever stops supporting ARMv4T, this becomes a problem. My guess
> is that will take another 10 years though, and we might have
> removed some or all of the individual ARMv4 platforms by then.

ARMv4 is becoming a trouble, not that it is hard to maintain,
actually we're on top of things there. The problem is that among
the FA526 systems from Faraday and the ARMv4T in EP93xx
there are very serious IoT deployments that have been going
on for soon 15 years and continuing.

New MOXA ART ARMv4 FA526 systems are being deployed
in buildings across the planet as we speak. They just replaced
one in the office block where I sit, that is how I got to know.

These are mostly for ventilation and
similar systems but also heavy duty from Liebherr controlling
unspecified hydraulic systems. The ventilation systems are
definately Internet-connected, I don't know about the others.

These pose an increasing security threat, and for that reason
I personally feel it is irresponsible to remove the option to
create new kernels and upgrade these devices.

I think for depreciation one has to be aware that some archs
used in IoT deployments have life cycles of 20-30 or more years,
whereas some tablet or handset SoCs may be something like
5 years maximum before maintainers get annoyed that you
even use them.

Sometimes I get the feeling that people focused on desktops
or servers suffer from velocitate (speed blindness) and think
everybody is like them. (Well don't we all.)

With all the hoopla about IoT in the business right now since
a year or two back, the question of their extremely long life
cycle and effect on development has not really been
considered AFAICT those are some of the most important
systems to keep maintained.

Yours,
Linus Walleij
