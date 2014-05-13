Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 50DE399D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 16:36:44 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[212.209.106.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A78AA1FDEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 16:36:43 +0000 (UTC)
From: "Bird, Tim" <Tim.Bird@sonymobile.com>
To: Josh Triplett <josh@joshtriplett.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Tue, 13 May 2014 18:36:40 +0200
Message-ID: <F5184659D418E34EA12B1903EE5EF5FDEE1B9D011B@seldmbx02.corpusers.net>
References: <20140502164438.GA1423@jtriplet-mobl1>
In-Reply-To: <20140502164438.GA1423@jtriplet-mobl1>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Sarah Sharp <sarah@minilop.net>, Greg KH <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>,
	Dan Carpenter <dan.carpenter@oracle.com>, Darren Hart <darren@dvhart.com>,
	"Alan@signal11.us" <Alan@signal11.us>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, May 02, 2014 9:44 AM, Josh Triplett wrote:
>=20
> Over time, the Linux kernel has grown far more featureful, but it has
> also grown significantly larger, even with all the optional features
> turned off.  For the last several years, I've been working to make the
> kernel smaller, and mentoring/coordinating projects to do the same, to
> enable ridiculously small embedded applications and other fun uses.  I'd
> like to discuss that work at Kernel Summit, get size regressions on the
> radar of kernel developers and subsystem maintainers, and solicit
> discussion on future possibilities to shrink the kernel further.
>=20
> Topics:
> - An overview of why the kernel's size still matters today ("but don't
>   we all have tons of memory and storage?")
> - Tiny in RAM versus tiny on storage.
> - How much the kernel has grown over time.
> - How size regressions happen and how to avoid them
> - Size measurement, bloat-o-meter, allnoconfig, and other tools
> - Compression and the decompression stub
> - Kconfig, and avoiding excessive configurability in the pursuit of tiny
> - Optimizing a kernel for its exact target userspace.
> - Examples of shrinking the kernel
> - Discussion on proposed ways to make the kernel tiny, how much they
>   might save, how much work they'd require, and how to implement them
>   with minimal impact to the un-shrunken common case.
>=20

I'd really like to see a discussion of mechanisms to improve automated
reduction of the kernel.  This will really help, IMHO, to avoid excessive
configurability, and hopefully ameliorate complaints about the long-term
maintenance cost of keeping small configurations available in-tree.

One prime example of this would be the "static-ification" of DT, e.g.
replacing calls to lookup DT info with constants (via macros or some other
source replacement trick), so that we can leverage the compiler's
optimizations for constant propagation and dead code removal.

> After the session, I'll prepare and maintain a detailed summary of the
> proposed ideas, ordered by how much space they'd save versus how much
> work they'd be.  I plan to maintain that list on an ongoing basis, to
> coordinate tinification projects for ongoing work by people working on
> embedded applications, and for the benefit of mentorship projects such
> as OPW and SoC.

Thanks for taking the lead on this!

Can I recommend we use the linux-embedded mailing list for discussions?
It's underutilized and this topic seems like a good fit.  Also, the elinux =
wiki
is available if you're looking for a place to maintain information on this.
The Linux-tiny material there is stale, but I have been thinking about upda=
ting
it since the last ELC.


  -- Tim
