Return-Path: <j.glisse@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CB54088B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 19:01:48 +0000 (UTC)
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7B44C1DF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 19:01:48 +0000 (UTC)
Received: by qkfc129 with SMTP id c129so54387577qkf.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Aug 2015 12:01:47 -0700 (PDT)
Date: Mon, 3 Aug 2015 15:01:45 -0400
From: Jerome Glisse <j.glisse@gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150803190145.GC2981@gmail.com>
References: <20150731163453.GB2039@redhat.com>
	<1438627862.26511.366.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1438627862.26511.366.camel@infradead.org>
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

On Mon, Aug 03, 2015 at 07:51:02PM +0100, David Woodhouse wrote:
> On Fri, 2015-07-31 at 12:34 -0400, Jerome Glisse wrote:
> > No the ASID should not be associated with mm_struct. There is to
> > few ASID to have enough of them. I think currently there is only
> > 8bits worth of ASID. So what happen is that the GPU device driver
> > schedule process and recycle ASID as it does.
> 
> In PCIe we have 20 bits of PASID. And we are going to expect hardware
> to implement them all, even if it can only do caching for fewer PASIDs
> than that.
> 

This is not the case with current AMD hw which IIRC only support 8bits or
9bits for PASID. Dunno if there next hardware will have more bits or not.
So i need to check PCIE spec but i do not think the 20bits is a mandatory
limit.

> There is also an expectation that a given MM will have the *same* PASID
> across all devices.

I understand that this would be prefered. But in case of hw that have only
limited number of bit for PASID you surely do not want to starve it ie it
would be better to have the device recycle PASID to maximize its usage.

Cheers,
Jérôme
