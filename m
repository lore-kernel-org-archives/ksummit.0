Return-Path: <arndbergmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 962658D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 May 2017 14:17:09 +0000 (UTC)
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 11F5714B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 May 2017 14:17:08 +0000 (UTC)
Received: by mail-oi0-f65.google.com with SMTP id w10so28018304oif.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 May 2017 07:17:08 -0700 (PDT)
MIME-Version: 1.0
Sender: arndbergmann@gmail.com
In-Reply-To: <CAMuHMdUivf9cw+LTn7UMueH=MMKi6i3wcOdgM6zbZBoxmkTZGQ@mail.gmail.com>
References: <20170519193455.GA24206@localhost>
	<CACRpkdaRdZTB39-=sAojO+OyHtP02KaFChqGcxy+fWA8qaB2bw@mail.gmail.com>
	<CAOesGMhfrWSvLtDtGRWBTJiAoeSwzGgsdUTm26j1mpoVu0ghDg@mail.gmail.com>
	<CAMuHMdUivf9cw+LTn7UMueH=MMKi6i3wcOdgM6zbZBoxmkTZGQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 23 May 2017 16:17:07 +0200
Message-ID: <CAK8P3a2E1LtCNoGkAuzwJJdQdUTB_+8d=FM2asEGkXJprvm8oQ@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
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

On Tue, May 23, 2017 at 11:49 AM, Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> On Mon, May 22, 2017 at 5:11 PM, Olof Johansson <olof@lixom.net> wrote:
>> On Mon, May 22, 2017 at 4:44 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
>>> On Fri, May 19, 2017 at 9:34 PM, Olof Johansson <olof@lixom.net> wrote:
>>
>> Yeah, asking people to spread out across releases would remove
>> dependencies a lot, but it would also slow down progress and frustrate
>> a lot of contributors so we don't do that.
>
> The above works fine for new support, or for new platforms.
>
> There's still support being migrated from platform code to DT, which
> requires three steps:
>   1. New DT-aware driver support,
>   2. DT update to use the new driver support,
>   3. Clean up platform code after optional DTB backwards compatibility
>      grace period,
> To make matters worse, 1 may conflict with the existing platform code,
> and 2 must sometimes not be done before 1. Hence you may need three kernel
> releases.
> So we're already planning now what to clean up for v4.15 ;-)
>
> Would it be acceptable to do step 2 in the same release, after the driver
> support has entered in -rc1? I know this is more than just replacing
> numbers by symbolic values.

I'd say it really depends on the individual case. Do you have a particular
platform in mind? E.g. For some of the more obsolete platforms that
Linus Walleij has worked on over time, we have sometimes relaxed the
rules about clean bisection and just merged everything in parallel, knowing
that nobody else was likely to run that code on a vanilla kernel anyway.

       Arnd
