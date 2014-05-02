Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C90682B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:46:07 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 774B01FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:46:07 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Mark Brown <broonie@kernel.org>, Dave Jones <davej@redhat.com>
Date: Fri, 2 May 2014 19:45:44 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F327F5D80@ORSMSX114.amr.corp.intel.com>
References: <20140502173309.GB725@redhat.com>
	<20140502190301.GW3245@sirena.org.uk>
In-Reply-To: <20140502190301.GW3245@sirena.org.uk>
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

> It would be useful for the smaller build case to have a way of auditing
> which syscalls are actually in use on a system so you can then go
> through and construct a minimal config.

"strace -c" ?

-Tony
