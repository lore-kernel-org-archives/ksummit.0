Return-Path: <catalin.marinas@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 132E97C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 18:11:46 +0000 (UTC)
Received: from eu-smtp-delivery-143.mimecast.com
	(eu-smtp-delivery-143.mimecast.com [146.101.78.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5631A1E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 18:11:45 +0000 (UTC)
Date: Tue, 4 Aug 2015 19:11:41 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150804181141.GD19114@e104818-lin.cambridge.arm.com>
References: <20150731163453.GB2039@redhat.com>
	<1438627862.26511.366.camel@infradead.org>
	<20150803190145.GC2981@gmail.com>
	<20150803211050.GM14980@8bytes.org>
	<1438636374.26511.440.camel@infradead.org>
MIME-Version: 1.0
In-Reply-To: <1438636374.26511.440.camel@infradead.org>
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Cc: Jerome Glisse <jglisse@redhat.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Mon, Aug 03, 2015 at 10:12:54PM +0100, David Woodhouse wrote:
> On Mon, 2015-08-03 at 23:10 +0200, Joerg Roedel wrote:
> > On Mon, Aug 03, 2015 at 03:01:45PM -0400, Jerome Glisse wrote:
> > > This is not the case with current AMD hw which IIRC only support 8bit=
s or
> > > 9bits for PASID. Dunno if there next hardware will have more bits or =
not.
> > > So i need to check PCIE spec but i do not think the 20bits is a manda=
tory
> > > limit.
> >=20
> > AMD hardware currently implements PASIDs with 16 bits. Given that only
> > mm_structs which are used by offload devices get one, this should be
> > enough to put them into a global pool and have one PASID per mm_struct.
>=20
> I think there are many ARM systems which need this model because of the
> way TLB shootdowns are handled in hardware, and shared with the IOMMU?
> So we have to use the same ASID for both MMU and IOMMU there, AIUI.
>=20
> Not that I claim to be an expert on the ARM IOMMUs.

Neither am I, cc'ing Will.

As it's the case with the ARM architecture (whether CPU or SMMU/IOMMU),
many features are optional. So an implementation may or may not support
handling of TLB invalidation broadcasting from the CPU. Even when it
does, this is configurable, so it is not forced to share the same ASID
space as the CPU.

AFAICT, the ARM SMMU uses StreamID/SubstreamID to map (1:1?) PCIe
Request-ID and PASID (when stage 1 translation is supported). The
StreamID/SubstreamID can then be mapped onto an ASID via stream tables.
Currently the arm-smmu drivers use their own ASID space but, if we are
going to support compute-offload devices, they could be made to share
the same ASID as the corresponding user processes (with an additional
API).

For a more generic compute-offload API, I guess we would need callbacks
into the (IOMMU) drivers for page table management, including TLB
invalidation and CPU ASID management events (like renewing the CPU ASID
for an existing task). An implementation supporting sharing of IOMMU/CPU
page tables would just have a minimal implementation of such API. We
probably need a (void *)iommu_context pointer in mm_struct that drivers
can point to their own context information.

--=20
Catalin
