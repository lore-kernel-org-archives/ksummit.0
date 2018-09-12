Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E065CAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 06:41:06 +0000 (UTC)
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
	[209.85.222.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A21F913A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 06:41:05 +0000 (UTC)
Received: by mail-ua1-f66.google.com with SMTP id g18-v6so785163uam.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 23:41:05 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<20180911113725.5d91b945@jawa> <20180911193308.GA4429@kroah.com>
	<2400444.QbA1LOmrIy@avalon>
	<alpine.DEB.2.21.1809112347320.1427@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1809112347320.1427@nanos.tec.linutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Sep 2018 08:40:52 +0200
Message-ID: <CAMuHMdXRtMjE3dXDmagVQrPC-UDy6Po0BckWH=CBj-WOsdL38Q@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, lukma@denx.de,
	Jonas Jensen <jonas.jensen@gmail.com>,
	Alex S <alexander.sverdlin@gmail.com>
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

Hi Thomas,

On Tue, Sep 11, 2018 at 11:50 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> On Wed, 12 Sep 2018, Laurent Pinchart wrote:
> > On Tuesday, 11 September 2018 22:33:08 EEST Greg KH wrote:
> > > On Tue, Sep 11, 2018 at 11:37:25AM +0200, Lukasz Majewski wrote:
> > > > In the kernel community we pose a lot of attention to security (for
> > > > example the prompt reaction on meltdown/spectre), but in the same time
> > > > we tend to forget about the "long lived" devices and force their
> > > > maintainers to use 2.6.x kernels..... (or even 2.4.x).
> > >
> > > We care, but really, how much can we do here?
> > >
> > > I've been working a lot with the Adroid ecosystem to try to help fix
> > > their bad habits of "grab a random kernel and ship it and never update
> > > it" by providing longer lived kernels that they can constantly update
> > > their devices to.
> > >
> > > But their lifetimes is much shorter compared to yours, and I have no
> > > insight into what kernels are being used, what configurations you all
> > > care about, and how long you need/want them updated.
> > >
> > > Working with really old kernels like you have, without hardware
> > > available to test is a hard task.  If your hardware is in a system like
> > > kernelci, then you can be sure that any new kernel will work properly
> > > with your system and then you might not want to have to stay with really
> > > old kernels that no one can maintain :)
> > >
> > > There's a Linux Foundation project, "CIP" that wants to maintain kernels
> > > for devices like what you are making for 20+ years.  They are having the
> > > problems of not knowing exactly what platforms they wish to support, but
> > > their goal is good, hopefully they eventually nail something down and we
> > > can work together.  Perhaps you should contact them to try to help solve
> > > this issue for everyone?
> >
> > I may be wrong, but I understand Lukasz's comment as the exact opposite: we
> > forget about long-lived devices and drop their support while they're still in
> > active use, forcing vendors to start using old and unsupported kernels. If a
> > large number of ARMv4(T) devices are still being actively deployed and
> > maintain, we should treat them as first-class citizens.
>
> But that does not mean, that we have to support ancient compilers
> forever. If that stuff needs to be treated as first class citizens then
> someone who has vested interest in this needs to fix that. That's none of
> our business, really.

The issue here is that gcc dropped armv4 (not v4t AFAIK) support.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
