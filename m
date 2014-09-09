Return-Path: <rupran@einserver.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EF2A0927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Sep 2014 19:02:47 +0000 (UTC)
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B83171FB58
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Sep 2014 19:02:46 +0000 (UTC)
Received: by mail-ob0-f172.google.com with SMTP id wp18so1313878obc.17
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 09 Sep 2014 12:02:45 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 9 Sep 2014 21:02:45 +0200
Message-ID: <CA+B2V-K_B0n9ZK_3CirdtU=v_z68KZAyYjp=mRLrPzjCF4nk3Q@mail.gmail.com>
From: Andreas Ruprecht <rupran@einserver.de>
To: josh@joshtriplett.org
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] Linux Kernel Tinification - Research project and
	Tools
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi guys,

I just discovered the thread (reaching back to May) on the
ksummit-discuss mailing list and your (Josh's) talk topic at LinuxCon
Europe on Linux Kernel Tinification, and might have something
interesting to share.

I'm a member of the VAMOS/CADOS[0] project at the University of
Erlangen-N=C3=BCrnberg, where we're working on different topics concerning
the analysis of Linux, particularily the kernel configuration system.

One of these projects is "Tailor"[1], where we developed a method of
generating an (almost) minimal kernel configuration, basically by
observing a "bigger" (might be distribution-provided) kernel and
solving a formula of feature constraints for a solution. Results for
this were published at various conferences (HotDep '12 [2], NDSS '13
[3]), and just next week, I will be at GPCE '14 in Vasteras, Sweden to
present our most recent work [4].

Probably the most important difference to note is that in earlier
versions, we used the ftrace function tracer to gain insights on the
control flow - so we did not need to patch the kernel -, whereas we
found that for embedded systems, we needed to patch tiny instructions
into conditional blocks to create usable results (ftrace was just too
much overhead).

Unfortunately, the code for patching the kernel has not yet been
integrated into our tool box, as the student developing it is just
about to finish his master's thesis, but if you are interested, we
could also make this available to you.

If you would like to try it out, please go ahead (instructions at
[1])! If there are problems, don't hesitate to contact me. I will also
be at Linux Plumbers Conference in D=C3=BCsseldorf in October, if you'd
like to discuss this further in person.

Best regards,
  Andreas Ruprecht

[0]: https://www4.cs.fau.de/Research/CADOS/
[1]: http://vamos.informatik.uni-erlangen.de/trac/undertaker/wiki/Undertake=
rTailor
[2]: https://www4.cs.fau.de/Publications/2012/tartler_12_hotdep.pdf
[3]: https://www4.cs.fau.de/Publications/2013/kurmus_13_ndss.pdf
[4]: https://www4.cs.fau.de/Publications/2014/ruprecht_14_gpce.pdf
