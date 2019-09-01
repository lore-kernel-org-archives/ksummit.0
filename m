Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4D8171394
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  1 Sep 2019 08:09:44 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 81ED15D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  1 Sep 2019 08:09:43 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id a127so8439877oii.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 01 Sep 2019 01:09:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190826212548.GA15967@mit.edu>
	<CAPM=9txgVSybLWobvGfTiLLMcNgrqOg5nMpaVm41eT6Bkp+b0A@mail.gmail.com>
	<20190830034906.GA5670@mit.edu>
In-Reply-To: <20190830034906.GA5670@mit.edu>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun, 1 Sep 2019 10:09:30 +0200
Message-ID: <CAKMK7uEuqMMeZn-bSHoih3FKEspiGmibN=5KAgZtAiAj2Tw-Tw@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] DRAFT Kernel Summit Track schedule
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 30, 2019 at 5:49 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> On Thu, Aug 29, 2019 at 06:13:57AM +1000, Dave Airlie wrote:
> >
> > Not sure who is giving the Monday graphics talk at 12:00 could I ask
> > you to push this a bit later. I'm unfortunately arriving in Lisbon on
> > Monday morning and I should be at the venue by 12:00 but it would be
> > good to guarantee I can attend.
>
> It's Daniel Vetter.  The full kernel summit agenda on-line can be
> found at:
>
>         https://linuxplumbersconf.org/event/4/sessions/40/#all
>
> Hmm... one possibility might be to swap it with the Maple Tree talk at
> 15:00.  Let's see if Daniel and Liam are OK with this.

Fine with me, actually a bit better since then it doesn't clash with
the distro kernel MC.
-Daniel

>
>                                     - Ted
>
>
>
> > >
> > > Monday September 9, 2019
> > >
> > > AM MC's: Dist Kernels, Tracing MC, RISC-V
> > > PM MC's PM: IoT, Scheduler, IOMMU
> > >
> > > 10:00  Reworking of KVA allocator in Linux kernel
> > > 10:45  Touch but don=E2=80=99t look: Running the kernel in execute on=
ly memory
> > > 11:30  Break
> > > 12:00  Upstream Graphics: Too little, too late
> > > 12:45  The list is our process: An analysis of the kernel's email-bas=
ed development process
> > > 13:30  Lunch
> > > 15:00  Maple Tree
> > > 15:45  <Open slot>
> > > 16:30  Break
> > > 17:00  Inline Encryption Support
> > > 17:45  <Open Slot>
> > > 18:30  TAB Elections
> > > 19:45  LPC Evening Event
> > >
> > >
> > > Tuesday September 10, 2019
> > >
> > > AM MC's: Open Printing, Toolchains, Testing and Fuzzing
> > > PM MC's: Containers, Android, Power managemnt
> > >
> > > 10:00  Memory management bits in arch/*
> > > 10:45  replacing mmap_sem with finer grained locks
> > > 11:30  Break
> > > 12:00  Killing the mmap_sem's contention
> > > 12:45  <Open Slot>
> > > 13:30  Lunch
> > > 15:00  Tracing Data Access Pattern with Bounded Overhead and Best-eff=
ort Accuracy
> > > 15:45  Interrupt Message Store: A scalable interrupt mechanism for th=
e cloud
> > > 16:30  Break
> > > 17:00  Kernel Documentation
> > > 17:45  <Open Slot>
> > >
> > > Wednesday, September 11, 2019
> > >
> > > AM MC's: RDMA, Real Time, Databases
> > > PM MC's: Live patching, BPF, System boot/security
> > >
> > > 10:00  Moving the Linux ABI to userspace
> > > 10:45  KUnit - Unit Testing for the Linux Kernel
> > > 11:30  Break
> > > 12:00  Reflections on kernel quality, development process and testing
> > > 12:45  <Open Slot>
> > > 13:30  Lunch
> > > 15:00  Decoupling ZRAM from a specific backend
> > > 15:45  <Open Slot>
> > > 16:30  <Break>
> > > 17:00  <Open Slot>
> > > 17:45  <Room not available -- reconfiguration for Plenary>
> > > 18:30  Closing Plenary
> > > 20:00  LPC Closing Party
> > > _______________________________________________
> > > Ksummit-discuss mailing list
> > > Ksummit-discuss@lists.linuxfoundation.org
> > > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



--=20
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
