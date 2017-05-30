Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2820B6E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 May 2017 09:13:32 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 444921A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 May 2017 09:13:32 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id l145so9066945ita.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 May 2017 02:13:32 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CAK8P3a2E1LtCNoGkAuzwJJdQdUTB_+8d=FM2asEGkXJprvm8oQ@mail.gmail.com>
References: <20170519193455.GA24206@localhost>
	<CACRpkdaRdZTB39-=sAojO+OyHtP02KaFChqGcxy+fWA8qaB2bw@mail.gmail.com>
	<CAOesGMhfrWSvLtDtGRWBTJiAoeSwzGgsdUTm26j1mpoVu0ghDg@mail.gmail.com>
	<CAMuHMdUivf9cw+LTn7UMueH=MMKi6i3wcOdgM6zbZBoxmkTZGQ@mail.gmail.com>
	<CAK8P3a2E1LtCNoGkAuzwJJdQdUTB_+8d=FM2asEGkXJprvm8oQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 May 2017 11:13:30 +0200
Message-ID: <CAMuHMdWxNFUnWJjLj7ynWJFEFMAL=TPsdVSzDtohDprC=EXnaQ@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
	"arm@kernel.org" <arm@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject: Re: [Ksummit-discuss] [GIT PULL] ARM: SoC fixes (and a cross-arch
	dt-include fix)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Arnd,

On Tue, May 23, 2017 at 4:17 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Tue, May 23, 2017 at 11:49 AM, Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
>> On Mon, May 22, 2017 at 5:11 PM, Olof Johansson <olof@lixom.net> wrote:
>>> On Mon, May 22, 2017 at 4:44 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
>>>> On Fri, May 19, 2017 at 9:34 PM, Olof Johansson <olof@lixom.net> wrote:
>>>
>>> Yeah, asking people to spread out across releases would remove
>>> dependencies a lot, but it would also slow down progress and frustrate
>>> a lot of contributors so we don't do that.
>>
>> The above works fine for new support, or for new platforms.
>>
>> There's still support being migrated from platform code to DT, which
>> requires three steps:
>>   1. New DT-aware driver support,
>>   2. DT update to use the new driver support,
>>   3. Clean up platform code after optional DTB backwards compatibility
>>      grace period,
>> To make matters worse, 1 may conflict with the existing platform code,
>> and 2 must sometimes not be done before 1. Hence you may need three kernel
>> releases.
>> So we're already planning now what to clean up for v4.15 ;-)
>>
>> Would it be acceptable to do step 2 in the same release, after the driver
>> support has entered in -rc1? I know this is more than just replacing
>> numbers by symbolic values.
>
> I'd say it really depends on the individual case. Do you have a particular
> platform in mind? E.g. For some of the more obsolete platforms that
> Linus Walleij has worked on over time, we have sometimes relaxed the
> rules about clean bisection and just merged everything in parallel, knowing
> that nobody else was likely to run that code on a vanilla kernel anyway.

This is for Renesas R-Car Gen2 SoCs, so we do care about DT backward
compatibility (for a while), and about bisection.

Last headache was "[PATCH v4 00/23] soc: renesas: Add R-Car RST driver for
obtaining mode pin state" (https://lkml.org/lkml/2016/10/21/500). This used
a shared immutable branch, but that caused several merge conflicts.

Next one will be smaller, as it's not really moving functionality from
platform code to DT, but switching to a new and better clock driver framework,
so there's only the dependency of DT on the new driver
"[PATCH v2 00/10] clk: renesas: rcar-gen2: Add new CPG/MSSR drivers"
(https://lkml.org/lkml/2017/5/19/212)

I'll go create an inventory of stuff in platform code for Renesas SoCs that
still needs to be converted to DT...

Thanks!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
