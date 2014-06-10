Return-Path: <konrad.wilk@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A4C7BAC5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Jun 2014 20:12:42 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2AA8020321
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Jun 2014 20:12:42 +0000 (UTC)
Date: Tue, 10 Jun 2014 16:12:36 -0400
From: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20140610201236.GA21729@laptop.dumpdata.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: boris.ostrovsky@oracle.com, david.vrabel@citrix.com
Subject: [Ksummit-discuss] Topic: Removal of code that is still in use by
 users but there is a better code.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hey,

I would want to propose a topic on removing code in Linux that
users are using - but they are doing it less and less and it
mostly is tied in with older hardware. Specifically how to do
this transition properly - and if we want to define some checklist
/policy to do it via.

Specifically in the Xen virtualization world there is in pipeline code
that is going to obsolete some of the existing pvops code - and also
make lguest obsolete. It makes the Linux kernel run faster, less code to
deal with, makes x86 folks happy, and requires newer hardware.
This is known as PVH (ParaVirtualization Hardware).

So, from one hand - with newer hardware - we can remove some of the
code. On the other hand - with older hardware (pre EPT/NPT capable) or
low-powered ones  - we would making their life difficult and slower (as now
the hypervisor has to do the emulation, probably has some bugs, code
bitrotten, etc).

In essence it boils down to removing code in X years that users do use.

There is a nice migration path, but I am sure the moment we rip out the
code folks will come out of the woodwork, chase us down, and hit us with clubs.
I do enjoy hiking and don't want to have to look behind my back as I am
hiking.

What I want to propose is a topic to discuss what is the right way to do
this? I presume other platforms have had similar issues in the past (or
will be) and what is the best way of doing this. Are there any policies
in place?

P.S.
I say in pipeline because it is still experimental, the ABI hasn't been
bolted down, and we have tons of outstanding bugs before we let
enterprise customers take a stab at it, etc.

P.S.S.
Peter (hpa) is going to hate that I put 'X' instead of the '5' number. We
figured that in 5 years since we get this stable we can start the
count-down timer - but the 'getting' stable seems to take longer than I
am happy with (#@)@#$ bugs). Hence, X =  stable + 5. If there are any
