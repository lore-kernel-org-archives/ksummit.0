Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 93A6E3C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 20:51:57 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E8E8B8F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 20:51:56 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 01 Aug 2015 22:46:49 +0200
Message-ID: <19442497.AqUzQeifsl@wuerfel>
In-Reply-To: <20150730130027.GA14980@8bytes.org>
References: <20150730130027.GA14980@8bytes.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Core Kernel support for
	Compute-Offload Devices
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thursday 30 July 2015 15:00:27 Joerg Roedel wrote:
> [
>  The topic is highly technical and could be a tech topic. But it also=

>  touches multiple subsystems, so I decided to submit it as a core
>  topic.
> ]
>=20
> Across architectures and vendors there are new devices coming up for
> offloading tasks from the CPUs. Most of these devices are capable to
> operate on user address spaces.
>=20
> Besides the commonalities there are important differences in the memo=
ry
> model these devices offer. Some work only on system RAM, others come
> with their own memory which may or may not be accessible by the CPU.
>=20
> I'd like to discuss what support we need in the core kernel for these=

> devices. A probably incomplete list of open questions:
>=20
> =09(1) Do we need the concept of an off-CPU task in the kernel
> =09    together with a common interface to create and manage them
> =09    and probably a (collection of) batch scheduler(s) for these
> =09    tasks?

I think we did this part right with the Cell SPUs 10 years ago: A
task is a task, and you just switch between running in user mode and
running on the offload engine through some syscall or ioctl.

The part that got us into endless trouble though was trying to
satisfy two opposite requirements:=20

a) having the kernel schedule tasks automatically onto the offload
   engines and take care of context switches and placement, so you
   can do multi-user and multi-tasking processing on them.

b) getting most performance out of the of offload engines, by giving
   a single user total control over the placement and no do any
   scheduling in the kernel at all.

I would strongly recommend now that any new interface tries to do
only one of the two models, but does it right.

> I am particularily interested in this topic because on PCIe newer IOM=
MUs
> are often an integral part in supporting these devices (ARM-SMMUv3,
> Intel VT-d with SVM, AMD IOMMUv2). so that core work here will also
> touch the IOMMU code.
>=20
> Probably (uncomplete list of) interested people:
>=20
> =09David Woodhouse
> =09Jesse Barnes
> =09Will Deacon
> =09Paul E. McKenney
> =09Rik van Riel
> =09Mel Gorman
> =09Andrea Arcangeli
> =09Christoph Lameter
> =09J=E9r=F4me Glisse

Add me in as well,

=09Arnd
