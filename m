Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A1DFDB22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 04:36:40 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0C14D1FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 04:36:39 +0000 (UTC)
To: Ben Hutchings <ben@decadent.org.uk>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
	<yq1zji2hif7.fsf@sermon.lab.mkp.net>
	<1401323745.14007.51.camel@deadeye.wl.decadent.org.uk>
Date: Thu, 29 May 2014 00:36:20 -0400
In-Reply-To: <1401323745.14007.51.camel@deadeye.wl.decadent.org.uk> (Ben
	Hutchings's message of "Thu, 29 May 2014 01:35:45 +0100")
Message-ID: <yq1ha49dwvv.fsf@sermon.lab.mkp.net>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

>>>>> "Ben" == Ben Hutchings <ben@decadent.org.uk> writes:

Ben> I seem to recall one OEM formally requiring in-tree drivers for all
Ben> components aside from graphics.  But they usually wanted
Ben> out-of-tree driver packages *as well*, since 'enterprise' customers
Ben> do like to run old kernel versions.

Cc: stable :)

Ben> Driver development for a new generation of hardware may begin long
Ben> before it is publicly announced, and may contain many false starts
Ben> or temporary hacks to work around pre-release hardware or
Ben> simulations.  Somehow, that messy development branch needs to be
Ben> turned into some semblance of coherent refactoring when sending
Ben> upstream.  Either that or you fork and rename the driver for the
Ben> new generation, and send it upstream with no history at all.

I agree that the history situation is different for completely new
drivers. However, the problem at hand is code we've had in the kernel
for a long time. It is still widely used but has bitrotted or is in a
shape that would never get accepted into the kernel by today's
standards.

Vendors use arguments like "we developed and tested this outbox driver
version x.y.z thoroughly in a 2.6.15 environment on i386. Didn't see any
problems, therefore it works with every kernel a customer might
run". Such a statement may carry some weight in a stable kernel
interface world but it is completely meaningless in our case.

-- 
Martin K. Petersen	Oracle Linux Engineering
