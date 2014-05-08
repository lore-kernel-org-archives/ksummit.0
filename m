Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B7781AB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 15:52:13 +0000 (UTC)
Received: from qmta03.emeryville.ca.mail.comcast.net
	(qmta03.emeryville.ca.mail.comcast.net [76.96.30.32])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B75EE2036D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 15:52:12 +0000 (UTC)
Date: Thu, 8 May 2014 10:52:09 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Josh Triplett <josh@joshtriplett.org>
In-Reply-To: <20140502164438.GA1423@jtriplet-mobl1>
Message-ID: <alpine.DEB.2.10.1405081047280.23816@gentwo.org>
References: <20140502164438.GA1423@jtriplet-mobl1>
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
