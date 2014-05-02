Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6B3BD21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:21:11 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5DE711FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:21:10 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Dave Jones <davej@redhat.com>, Mark Brown <broonie@kernel.org>
Date: Fri, 2 May 2014 21:21:07 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F327F60C8@ORSMSX114.amr.corp.intel.com>
References: <20140502173309.GB725@redhat.com>
	<20140502190301.GW3245@sirena.org.uk>
	<3908561D78D1C84285E8C5FCA982C28F327F5D80@ORSMSX114.amr.corp.intel.com>
	<20140502210340.GZ3245@sirena.org.uk>
	<20140502210851.GC13536@redhat.com>
In-Reply-To: <20140502210851.GC13536@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>, Darren
	Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
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

> Sounds like something you could use tracepoints for maybe ?
> Failing that, kprobes ?
>
> I'm pretty sure I've seen systemtap examples of this very thing years
> ago, but who knows if they even work any more.

If we do head to a world where systems are configured with
a subset of system calls - it would be useful for application
packages to come with a list of syscall dependencies. So you
could avoid much sadness from installing a package that won't
actually work.

But to get this right you'd need to do more than just strace/
kprobe/systemtap scan to see what they *typically* do. The
system calls used will depend on the arguments given and the
input data.  E.g. a trivial test might conclude that bash(1) doesn't
use the pipe(2) system call ... which it doesn't until some user
types:
  $ dmesg | grep ixgbe

-Tony
