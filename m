Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EE172AA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 09:02:25 +0000 (UTC)
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 32F081F986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 09:02:24 +0000 (UTC)
Received: by mail-lb0-f182.google.com with SMTP id z11so713386lbi.41
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 02:02:21 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <53EC7839.3010704@roeck-us.net>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
	<20140813180743.GB16662@roeck-us.net>
	<CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>
	<20140813224507.GA29606@roeck-us.net>
	<CAMuHMdXZWhLtTzUnPymSt-P=viz7O7fq8nFaM-mHLT+XMnRJcA@mail.gmail.com>
	<53EC7839.3010704@roeck-us.net>
Date: Thu, 14 Aug 2014 11:02:21 +0200
Message-ID: <CAMuHMdVQkqiE_S3ZAFziYXT4qESeofvC-6MsXfo_pYJxez2udQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>
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

CC kbuild

On Thu, Aug 14, 2014 at 10:50 AM, Guenter Roeck <linux@roeck-us.net> wrote:
> On 08/14/2014 12:40 AM, Geert Uytterhoeven wrote:
>>> Maybe something like
>>>
>>> make PCI=3Dn allmodconfig
>>> make GPIOLIB=3Dn allmodconfig
>>>
>>> which would let me disable key options selectively so I can improve
>>> compile
>>> coverage without having to go through all configurations (or randconfig=
).
>>
>>
>> That's doable, using KCONFIG_ALLCONFIG.
>>
> I'll play with it some more, but a quick glance (and test) suggests that =
I
> can
> only use it to force a configuration option to be true, not to force it t=
o
> be false. Also, there seems to be an odd side effect.
>
> With
>         kconfig.gpio:   "CONFIG_GPIOLIB=3Dy"
> and
>         kconfig.nogpio: "# CONFIG_GPIOLIB is not set"
>
> KCONFIG_ALLCONFIG=3Dkconfig.gpio make allnoconfig
>         causes CONFIG_GPIOLIB to be set.
>
> KCONFIG_ALLCONFIG=3Dkconfig.gpio make allmodconfig
> KCONFIG_ALLCONFIG=3Dkconfig.nogpio make allmodconfig
>         both have the odd and at least for me unexpected effect of disabl=
ing
>         CONFIG_MODULES, but do not affect CONFIG_GPIOLIB.

Strange...

I also saw strange things with randconfig, needing config input during the
subsequent build, or "make oldconfig" asking new questions, just after
having done a randconfig.

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
