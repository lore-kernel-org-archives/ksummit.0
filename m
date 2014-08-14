Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E2DCCAA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 07:40:23 +0000 (UTC)
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D1C331F8C2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 07:40:22 +0000 (UTC)
Received: by mail-lb0-f177.google.com with SMTP id s7so654687lbd.22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 00:40:20 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20140813224507.GA29606@roeck-us.net>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
	<20140813180743.GB16662@roeck-us.net>
	<CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>
	<20140813224507.GA29606@roeck-us.net>
Date: Thu, 14 Aug 2014 09:40:20 +0200
Message-ID: <CAMuHMdXZWhLtTzUnPymSt-P=viz7O7fq8nFaM-mHLT+XMnRJcA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] RFC: Kernel tinification - kernel config
	reduction
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi G=C3=BCnther,

On Thu, Aug 14, 2014 at 12:45 AM, Guenter Roeck <linux@roeck-us.net> wrote:
> On Wed, Aug 13, 2014 at 09:53:58PM +0200, Geert Uytterhoeven wrote:
>> On Wed, Aug 13, 2014 at 8:07 PM, Guenter Roeck <linux@roeck-us.net> wrot=
e:
>> > Major problem I see is that many architecture maintainers don't seem t=
o care
>> > about "make allmodconfig" and/or "make allyesconfig", meaning there is=
 no
>> > simple means to at least compile-test all code that _can_ be enabled f=
or
>> > a given architecture. And don't even mention "make randconfig".
>>
>> There are still architectures that don't support multi-platform kernels,=
 which
>> is a requirement for good coverage.
>>
> This is not about creating a working kernel, but for compile tests. I hav=
e
> separate configurations to test working kernels. But I would prefer to bu=
ild,

If you manage to fix the duplicate symbols due to combining multiple
single-platform configs into one kernel image, why not go to the next step
to make it actually work, if possible?

E.g. a m68k allmodconfig kernel is supposed to work (actually haven't tried
that since we fixed the 4 MiB kernel size limit to make multi_defconfig wor=
k
in the not-so-tiny new world order).

> say, no more than half a dozen arm configurations instead of the 40 in my
> current build list.

For ARM, this is (slowly) being fixed. Stay tuned for 2-3 more years ;-)

>> An alternative could be to have several allmodconfig builds, one for eac=
h
>> subset that can't be built-in together, like
>>
>> make CONFIG_SUBSET_FOO=3Dy allmodconfig
>> make CONFIG_SUBSET_BAR=3Dy allmodconfig
>> ...
>>
> Maybe something like
>
> make PCI=3Dn allmodconfig
> make GPIOLIB=3Dn allmodconfig
>
> which would let me disable key options selectively so I can improve compi=
le
> coverage without having to go through all configurations (or randconfig).

That's doable, using KCONFIG_ALLCONFIG.

>> You also only build some of the allmodconfigs?
>>
> Never "only". I always also build defconfig, plus at least sometimes a co=
uple
> of additional configurations (if available) to improve coverage of condit=
ional
> functionality.

Sorry, should have said "only some of the allmodconfigs".
I noticed for e.g. m68k you build defconfig and allmodconfig (and a nommu
config), but for some other architectures only defconfig.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds
