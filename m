Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16FDC90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 05:04:53 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5FE1B90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 05:04:52 +0000 (UTC)
Date: Mon, 26 Oct 2015 06:04:50 +0100
From: Joerg Roedel <joro@8bytes.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20151026050450.GF27420@8bytes.org>
References: <CALCETrWJveWdcHy7N0gE_KeZb3TUbSGSQUVy4YjKGpb5p94yXQ@mail.gmail.com>
	<1445833878.3405.24.camel@infradead.org>
	<20151026044350.GE27420@8bytes.org>
	<1445834882.3405.30.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445834882.3405.30.camel@infradead.org>
Cc: Paolo Bonzini <pbonzini@redhat.com>, m.smarduch@samsung.com,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Short topic: virtio vs IOMMU
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Oct 26, 2015 at 01:48:02PM +0900, David Woodhouse wrote:
> It would be useful to have an emulated IOMMU, full stop. And yeah, it
> might actually make sense to *start* by using it for purely virtual
> devices, [...]

Sure, I think this is what qemu provides already, except for the virtio
devices (which are also emulated). I think it would be cool to have
virtio translated by the emulated iommu too (at least optional).

> [...] and then graduate to doing it for passthrough (which will
> finally mean we can stop having to pin *all* guest memory the moment we
> assign a device, and we only have to pin those pages which are
> referenced from the IOMMU page tables).

Good point, havn't thought of that yet. But getting rid of the excessive
pinning this way would be really great.



	Joerg
