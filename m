Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9831267
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 04:38:27 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E1D0479
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 04:38:26 +0000 (UTC)
Date: Mon, 26 Oct 2015 05:38:24 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20151026043823.GD27420@8bytes.org>
References: <CALCETrWJveWdcHy7N0gE_KeZb3TUbSGSQUVy4YjKGpb5p94yXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrWJveWdcHy7N0gE_KeZb3TUbSGSQUVy4YjKGpb5p94yXQ@mail.gmail.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, m.smarduch@samsung.com
Subject: Re: [Ksummit-discuss] Short topic: virtio vs IOMMU
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Oct 25, 2015 at 07:55:31PM -0700, Andy Lutomirski wrote:
> It would be nice to nail down how virtio should interact with IOMMUs
> on the emulated busses.  A bunch of the relevant maintainers are
> around, and a short slot for this topic might make sense.
> 
> The goal would be to figure out how to accomplish something like this series:
> 
> https://git.kernel.org/cgit/linux/kernel/git/luto/linux.git/log/?h=virtio_ring_xen
> 
> but in a way that would actually work on all supported platforms
> without breaking backward compatibility or killing performance.

I am interested in that as well.


	Joerg
