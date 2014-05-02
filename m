Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 31C5D4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:39:00 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D7DD71FB23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:38:59 +0000 (UTC)
Message-ID: <53641066.8050300@zytor.com>
Date: Fri, 02 May 2014 14:38:46 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: "Luck, Tony" <tony.luck@intel.com>, Dave Jones <davej@redhat.com>,
	Mark Brown <broonie@kernel.org>
References: <20140502173309.GB725@redhat.com>	<20140502190301.GW3245@sirena.org.uk>	<3908561D78D1C84285E8C5FCA982C28F327F5D80@ORSMSX114.amr.corp.intel.com>	<20140502210340.GZ3245@sirena.org.uk>	<20140502210851.GC13536@redhat.com>
	<3908561D78D1C84285E8C5FCA982C28F327F60C8@ORSMSX114.amr.corp.intel.com>
In-Reply-To: <3908561D78D1C84285E8C5FCA982C28F327F60C8@ORSMSX114.amr.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On 05/02/2014 02:21 PM, Luck, Tony wrote:
>> Sounds like something you could use tracepoints for maybe ?
>> Failing that, kprobes ?
>>
>> I'm pretty sure I've seen systemtap examples of this very thing years
>> ago, but who knows if they even work any more.
> 
> If we do head to a world where systems are configured with
> a subset of system calls - it would be useful for application
> packages to come with a list of syscall dependencies. So you
> could avoid much sadness from installing a package that won't
> actually work.
> 

This would also be useful for using seccomp to sandbox processes... to
simply not let them do things they don't have a legitimate need to do.

For super-low-end embedded systems, it makes a lot of sense to be able
to build a kernel with only the functionality needed by a small set of
fixed applications (sometimes only one process which runs both as init
and the application.)

	-hpa
