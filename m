Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4811DCF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 03:12:17 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BBDC82C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 03:12:16 +0000 (UTC)
Date: Tue, 11 Sep 2018 23:12:13 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Wanpeng Li <wanpeng.li@hotmail.com>
Message-ID: <20180912031213.GB8476@thunk.org>
References: <SG2PR02MB1312314C35B7B82C5EF34A50801B0@SG2PR02MB1312.apcprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SG2PR02MB1312314C35B7B82C5EF34A50801B0@SG2PR02MB1312.apcprd02.prod.outlook.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Torwards a more scalable KVM
 hypervisor
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 12, 2018 at 12:39:26AM +0000, Wanpeng Li wrote:
> The kvm hypervisor is at the core of cloud computing, Virtual
> Machine based approaches to workload consolidation, as seen in IaaS
> cloud as well as data center platforms, have long had to contend
> with performance degradation caused by synchronization primitives
> inside the guest environments. These primitives can be affected by
> virtual CPU preemptions by the host scheduler that can introduce
> delays that are orders of magnitude longer than those primitives
> were designed for. In this presentation, Wanpeng Li will introduce
> current progress to mitigate TLB Shootdown Preemption. In addition,
> Wanpeng Li will also introduce Exitless IPIs to scale large VMs.

It looks like you are proposing an English language version of this
talk from LinuxCon China:

https://lc32018.sched.com/event/ER9W/torwards-a-more-scalable-kvm-hypervisor-wanpeng-li-tencent-cloud

Is that correct?  I wasn't able to find slides from the LinuxCon China
presentations.  Are they available?

Thanks,

					- Ted
