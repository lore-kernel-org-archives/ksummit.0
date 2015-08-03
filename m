Return-Path: <j.glisse@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B6A4C97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 21:34:48 +0000 (UTC)
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4EAFE147
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 21:34:48 +0000 (UTC)
Received: by qgii95 with SMTP id i95so98490697qgi.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Aug 2015 14:34:47 -0700 (PDT)
Date: Mon, 3 Aug 2015 17:34:44 -0400
From: Jerome Glisse <j.glisse@gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150803213443.GE2981@gmail.com>
References: <20150731163453.GB2039@redhat.com>
	<1438627862.26511.366.camel@infradead.org>
	<20150803190145.GC2981@gmail.com>
	<20150803211050.GM14980@8bytes.org>
	<1438636374.26511.440.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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
> > On Mon, Aug 03, 2015 at 03:01:45PM -0400, Jerome Glisse wrote:
> > > This is not the case with current AMD hw which IIRC only support 8bits or
> > > 9bits for PASID. Dunno if there next hardware will have more bits or not.
> > > So i need to check PCIE spec but i do not think the 20bits is a mandatory
> > > limit.
> > 
> > AMD hardware currently implements PASIDs with 16 bits. Given that only
> > mm_structs which are used by offload devices get one, this should be
> > enough to put them into a global pool and have one PASID per mm_struct.
> 
> I think there are many ARM systems which need this model because of the
> way TLB shootdowns are handled in hardware, and shared with the IOMMU?
> So we have to use the same ASID for both MMU and IOMMU there, AIUI.
> 
> Not that I claim to be an expert on the ARM IOMMUs.
> 

I see that on some platform the ASID <-> page table must be a 1 to 1
relationship. My experience so far on AMD is that it does not and that
while the IOMMU have 16bits their GPU have 9 or 8 bits. Also given that
PASID spec says that device can support different number of bits, it
seems that this gonna end up being a mess with all of specific arch/device
quirks.

Note that i really would like the ASID <-> mm struct 1 to 1 match but
i am just fearing this is not something that can be common to all
platform.

Cheers,
Jérôme
