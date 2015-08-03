Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E127982D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 21:10:53 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E985155
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 21:10:53 +0000 (UTC)
Date: Mon, 3 Aug 2015 23:10:50 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Jerome Glisse <j.glisse@gmail.com>
Message-ID: <20150803211050.GM14980@8bytes.org>
References: <20150731163453.GB2039@redhat.com>
	<1438627862.26511.366.camel@infradead.org>
	<20150803190145.GC2981@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150803190145.GC2981@gmail.com>
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

On Mon, Aug 03, 2015 at 03:01:45PM -0400, Jerome Glisse wrote:
> This is not the case with current AMD hw which IIRC only support 8bits or
> 9bits for PASID. Dunno if there next hardware will have more bits or not.
> So i need to check PCIE spec but i do not think the 20bits is a mandatory
> limit.

AMD hardware currently implements PASIDs with 16 bits. Given that only
mm_structs which are used by offload devices get one, this should be
enough to put them into a global pool and have one PASID per mm_struct.


	Joerg
