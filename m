Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5389DAFF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 08:50:09 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id BDB321F8B2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 08:50:08 +0000 (UTC)
Message-ID: <53EC7839.3010704@roeck-us.net>
Date: Thu, 14 Aug 2014 01:50:01 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>	<20140813180743.GB16662@roeck-us.net>	<CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>	<20140813224507.GA29606@roeck-us.net>
	<CAMuHMdXZWhLtTzUnPymSt-P=viz7O7fq8nFaM-mHLT+XMnRJcA@mail.gmail.com>
In-Reply-To: <CAMuHMdXZWhLtTzUnPymSt-P=viz7O7fq8nFaM-mHLT+XMnRJcA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Hi Geert,

On 08/14/2014 12:40 AM, Geert Uytterhoeven wrote:

>>>
>> Maybe something like
>>
>> make PCI=n allmodconfig
>> make GPIOLIB=n allmodconfig
>>
>> which would let me disable key options selectively so I can improve compile
>> coverage without having to go through all configurations (or randconfig).
>
> That's doable, using KCONFIG_ALLCONFIG.
>
I'll play with it some more, but a quick glance (and test) suggests that I can
only use it to force a configuration option to be true, not to force it to
be false. Also, there seems to be an odd side effect.

With
	kconfig.gpio:	"CONFIG_GPIOLIB=y"
and
	kconfig.nogpio:	"# CONFIG_GPIOLIB is not set"

KCONFIG_ALLCONFIG=kconfig.gpio make allnoconfig
	causes CONFIG_GPIOLIB to be set.

KCONFIG_ALLCONFIG=kconfig.gpio make allmodconfig
KCONFIG_ALLCONFIG=kconfig.nogpio make allmodconfig
	both have the odd and at least for me unexpected effect of disabling
	CONFIG_MODULES, but do not affect CONFIG_GPIOLIB.

>>> You also only build some of the allmodconfigs?
>>>
>> Never "only". I always also build defconfig, plus at least sometimes a couple
>> of additional configurations (if available) to improve coverage of conditional
>> functionality.
>
> Sorry, should have said "only some of the allmodconfigs".
> I noticed for e.g. m68k you build defconfig and allmodconfig (and a nommu
> config), but for some other architectures only defconfig.
>
I only use 'allmodconfig' and/or 'allyesconfig' if I can be reasonably sure
that the architecture maintainers care about it. That goes back to 3.10ish
when I started the -stable-queue builds; I only added allmodconfig/allyesconfig
to the list of builds if it built when I added the architecture. I didn't check
recently if I can add some more, so I may miss a couple of architectures
which do now build.

Guenter
