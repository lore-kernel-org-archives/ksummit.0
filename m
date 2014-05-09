Return-Path: <roland.dreier@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 170ED9A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:49:17 +0000 (UTC)
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 77416203AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:49:16 +0000 (UTC)
Received: by mail-qc0-f170.google.com with SMTP id i8so5009040qcq.15
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 10:49:15 -0700 (PDT)
MIME-Version: 1.0
Sender: roland.dreier@gmail.com
In-Reply-To: <1399552623.17118.22.camel@i7.infradead.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
From: Roland Dreier <roland@kernel.org>
Date: Fri, 9 May 2014 10:48:55 -0700
Message-ID: <CAG4TOxNJxWLWSZYW313XATtCpV+SM9WrYFJ-V+0Pf-yryLh67g@mail.gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
 reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 8, 2014 at 5:37 AM, David Woodhouse <dwmw2@infradead.org> wrote=
:
> I'd like to have a discussion about handling device errors.
>
> IOMMUs are becoming more common, and we've seen some failure modes where
> we just end up with an endless stream of fault reports from a given
> device, and the kernel can do nothing else.
>
> We may have various options for shutting it up =E2=80=94 a PCI function l=
evel
> reset, power cycling the offending device, or maybe just configuring the
> IOMMU to *ignore* further errors from it, which would at least let the
> system get on with doing something useful (and if we do, when do we
> re-enable reporting?).

I think there's a more general problem that's worth talking about
here.  In addition to IOMMU faults, there are lots of other PCI errors
that can happen, and we have some small number of drivers that have
been "hardened" to try and recover from these errors.  However even
for these "hardened" drivers it seems pretty easy to hit deadlocks
when the driver tries to tear down and reinitialize things.

So I wonder if we can do better without proliferating error handling
tentacles into all sorts of low-level drivers ("did we just read
0xffffffff here?  how about here?  are we in the middle of error
recovery?  how about now?").

One context where this is becoming a real concern is with NVMe drives.
 These are SSDs that (may) look like normal 2.5" drives, but use PCIe
rather than SATA or SAS to connect to the host.  Since they look like
normal drives, it's natural to put them into hot-pluggable JBODs, but
it turns out we react much worse to PCIe surprise removal than, say,
SAS hotplug.

 - R.
