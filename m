Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B44267
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 04:43:53 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 755E279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 04:43:52 +0000 (UTC)
Date: Mon, 26 Oct 2015 05:43:50 +0100
From: Joerg Roedel <joro@8bytes.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20151026044350.GE27420@8bytes.org>
References: <CALCETrWJveWdcHy7N0gE_KeZb3TUbSGSQUVy4YjKGpb5p94yXQ@mail.gmail.com>
	<1445833878.3405.24.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445833878.3405.24.camel@infradead.org>
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

On Mon, Oct 26, 2015 at 01:31:18PM +0900, David Woodhouse wrote:
> On Sun, 2015-10-25 at 19:55 -0700, Andy Lutomirski wrote:
> > but in a way that would actually work on all supported platforms
> > without breaking backward compatibility or killing performance.
> 
> FWIW it should be fine with VT-d; we already cope with the concept that
> *some* devices don't have translation, while others do. If we don't
> have DMA translation for the virtio devices, that works out fine.

Yes, that should work with the x86 IOMMUs and also with the DT-based
configuration of most ARM IOMMUs.

But it would actually be neat to have at least the option to translate
virtio DMA through an emulated IOMMU to be able to pass a virtio-device
to a nested guest.


	Joerg
