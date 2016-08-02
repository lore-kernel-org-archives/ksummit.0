Return-Path: <mst@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF1B294D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 17:23:30 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4B7221D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 17:23:30 +0000 (UTC)
Received: from int-mx09.intmail.prod.int.phx2.redhat.com
	(int-mx09.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id DD0984E03D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 17:23:29 +0000 (UTC)
Date: Tue, 2 Aug 2016 20:23:26 +0300
From: "Michael S. Tsirkin" <mst@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20160802172326.GA25195@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: pbonzini@redhat.com
Subject: [Ksummit-discuss] late self-nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi folks!

Likely too late, but oh well.
I would like to self-nominate for kernel summit this year.

I am the maintainer of the virtio subsystem, and within KVM, of the PC
and PCI subsystems.  Intelnally within Red Hat I'm a tech lead for the
team handling the networking for VMs.

I would like to participate in self-hardening to see whether
hypervisor extensions (like e.g. kernel guard technology)
can benefit that project, in the memory model discussions
as virtio is a heavy user of memory barriers and could benefit
a lot e.g. from faster mb implementations. I would
also like to learn more about group maintainership
as we are seeing issues scaling co-maintainership with
our current structure with virtio.

Cheers,

-- 
MST
