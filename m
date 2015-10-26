Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8219C268
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 05:20:31 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0A206A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 05:20:30 +0000 (UTC)
Date: Mon, 26 Oct 2015 06:20:29 +0100
From: Joerg Roedel <joro@8bytes.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20151026052028.GG27420@8bytes.org>
References: <CALCETrWJveWdcHy7N0gE_KeZb3TUbSGSQUVy4YjKGpb5p94yXQ@mail.gmail.com>
	<1445833878.3405.24.camel@infradead.org>
	<20151026044350.GE27420@8bytes.org>
	<1445834882.3405.30.camel@infradead.org>
	<20151026050450.GF27420@8bytes.org>
	<1445836422.3405.43.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445836422.3405.43.camel@infradead.org>
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

On Mon, Oct 26, 2015 at 02:13:42PM +0900, David Woodhouse wrote:
> Oh, wow. I didn't realise we already had an IOMMU implemented in Qemu.
> 
> At first glance it looks like it doesn't support assigned devices...
> has anyone looked at doing so?

Not sure, maybe Paolo knows. When it is implemented in qemu too using
vfio, we should get the reduced pinning for free.


	Joerg
