Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3F7F87A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 21:31:22 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 34656147
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 21:31:22 +0000 (UTC)
Date: Mon, 3 Aug 2015 23:31:20 +0200
From: Joerg Roedel <joro@8bytes.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150803213120.GN14980@8bytes.org>
References: <20150731163453.GB2039@redhat.com>
	<1438627862.26511.366.camel@infradead.org>
	<20150803190145.GC2981@gmail.com>
	<20150803211050.GM14980@8bytes.org>
	<1438636374.26511.440.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1438636374.26511.440.camel@infradead.org>
Cc: Jerome Glisse <jglisse@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
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
> > AMD hardware currently implements PASIDs with 16 bits. Given that only
> > mm_structs which are used by offload devices get one, this should be
> > enough to put them into a global pool and have one PASID per mm_struct.
> 
> I think there are many ARM systems which need this model because of the
> way TLB shootdowns are handled in hardware, and shared with the IOMMU?
> So we have to use the same ASID for both MMU and IOMMU there, AIUI.

Yes, I heard the same, this hardware clearly forces the one-PASID per
mm_struct model.

On x86 we probably have to look what offload devices will appear, the
ones currently available support 16 bits, which this allows the same model.



	Joerg
