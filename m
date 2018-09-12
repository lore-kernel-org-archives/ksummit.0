Return-Path: <arndbergmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2D6B7F42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 10:23:26 +0000 (UTC)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
	[209.85.222.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 99664784
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 10:23:25 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id f17-v6so748876qkh.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 03:23:25 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<20180911113725.5d91b945@jawa> <20180911193308.GA4429@kroah.com>
	<2400444.QbA1LOmrIy@avalon>
	<alpine.DEB.2.21.1809112347320.1427@nanos.tec.linutronix.de>
	<CAMuHMdXRtMjE3dXDmagVQrPC-UDy6Po0BckWH=CBj-WOsdL38Q@mail.gmail.com>
In-Reply-To: <CAMuHMdXRtMjE3dXDmagVQrPC-UDy6Po0BckWH=CBj-WOsdL38Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 12 Sep 2018 12:23:06 +0200
Message-ID: <CAK8P3a1YfSLzQmK_879KgWT7w-0+=X-iC4ue6YxPF-tjPSk=0w@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	gregkh <gregkh@linuxfoundation.org>, Lukasz Majewski <lukma@denx.de>,
	Jonas Jensen <jonas.jensen@gmail.com>,
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

On Wed, Sep 12, 2018 at 8:41 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Tue, Sep 11, 2018 at 11:50 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > On Wed, 12 Sep 2018, Laurent Pinchart wrote:
> > > On Tuesday, 11 September 2018 22:33:08 EEST Greg KH wrote:
> > But that does not mean, that we have to support ancient compilers
> > forever. If that stuff needs to be treated as first class citizens then
> > someone who has vested interest in this needs to fix that. That's none of
> > our business, really.
>
> The issue here is that gcc dropped armv4 (not v4t AFAIK) support.

Let me clarify here: we are talking to the gcc developers all the time,
and we can still change the plans here if we decide that we want it
to be dropped later.

There is currently no plan to deprecate ARMv4T support in gcc.

ARMv2/3/4 have been marked "deprecated" since gcc-6 two years
ago. This is the official way for gcc to figure out whether anyone still
needs it. If someone steps up and says they need to keep it for future
releases (and ideally ensure that it keeps getting tested properly),
ARMv4 can stay.

gcc-8 (released this spring) still contains (deprecated) support for
ARMv2 and up. gcc-9 (the development branch) has removed
support for ARMv2 and ARMv3, but not ARMv4. As a result, the
ARM610 and ARM710 processors cannot be supported any more
with gcc-9. This may be a problem for the RiscOS folks, but Linux
has dropped support for both of these years ago.

We do see one regression with the removal of ARMv3 support:
The arch/arm/mach-rpc/ target (using the SA110 CPU) will not
be buildable with gcc-9 (or clang, for that matter), but require a
gcc-8 at most (some other versions were broken in the past as
well, but 6/7/8 should all work). If the next compiler deprecation
waves are similar to the current one (dropping support for 12
year old compilers, while still allowing 7 year old one, i.e. gcc-4.6
from 2011 instead of gcc-4.1 from 2006), that puts the final end
of life of mach-rpc between 2026 and 2031, which I feel is an
acceptable trade-off (apparently keeping it working did cause
significant work in gcc), especially considering this is hardware
introduced in 1994!

Regarding ARMv4 (i.e. FA526 and StrongARM) vs ARMv4T
(all ARM7 and the early ARM9 we support), the kernel build isn't
actually different at all, as long as we turn off
CONFIG_ARM_THUMB. The main difference in the code produced
by gcc is the 'bx' instruction for branches, and the linker will turn
those into ARMv4-compatible branches with the '-Wl,--fix-v4bx'
option. This means that even after gcc removes the deprecated
ARMv4 target, and we stop supporting older compilers that still
had it, we can keep building new kernels for fa526 as long as
gcc supports ARMv4T and the linker supports --fix-v4bx.
Alternatively we can ask the compiler folks to un-deprecate
ARMv4.

      Arnd
