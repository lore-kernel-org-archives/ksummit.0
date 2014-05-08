Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 97C1B99D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 16:32:49 +0000 (UTC)
Received: from qmta09.emeryville.ca.mail.comcast.net
	(qmta09.emeryville.ca.mail.comcast.net [76.96.30.96])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2818A2034C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 16:32:49 +0000 (UTC)
Date: Thu, 8 May 2014 11:24:39 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2 May 2014, Josh Triplett wrote:

> - An overview of why the kernel's size still matters today ("but don't
>   we all have tons of memory and storage?")

Kernel size matters quite a bit for performance. Processor caches are key
to performance and therefore the cache footprint of a function determines
the the possible performance. The smaller the functions and the less data
they access the faster they will run.

Therefore it needs to be possible to reduce the size of the kernel by
disabling unwanted functionality (f.e. cgroups). In order for that to
happen features need to be as independent as possible and also the user
space tools (like systemd) need to be able to handle a kernel with reduced
functionality.
