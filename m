Return-Path: <wanpeng.li@hotmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3378C18
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 00:39:29 +0000 (UTC)
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-oln040092253067.outbound.protection.outlook.com [40.92.253.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC61F2C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 00:39:28 +0000 (UTC)
From: Wanpeng Li <wanpeng.li@hotmail.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Wed, 12 Sep 2018 00:39:26 +0000
Message-ID: <SG2PR02MB1312314C35B7B82C5EF34A50801B0@SG2PR02MB1312.apcprd02.prod.outlook.com>
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [Ksummit-discuss] [TECH TOPIC] Torwards a more scalable KVM
	hypervisor
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The kvm hypervisor is at the core of cloud computing, Virtual Machine based=
 approaches to workload consolidation, as seen in IaaS cloud as well as dat=
a center platforms, have long had to contend with performance degradation c=
aused by synchronization primitives inside the guest environments. These pr=
imitives can be affected by virtual CPU preemptions by the host scheduler t=
hat can introduce delays that are orders of magnitude longer than those pri=
mitives were designed for. In this presentation, Wanpeng Li will introduce =
current progress to mitigate TLB Shootdown Preemption. In addition, Wanpeng=
 Li will also introduce Exitless IPIs to scale large VMs.

Regards,
Wanpeng Li
