Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7B3FD98F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 02:15:05 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 446AB1FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 02:15:05 +0000 (UTC)
Message-ID: <53684592.1020704@zytor.com>
Date: Mon, 05 May 2014 19:14:42 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: "Bird, Tim" <Tim.Bird@sonymobile.com>, Dave Jones <davej@redhat.com>,
	Josh Triplett <josh@joshtriplett.org>
References: <20140502164438.GA1423@jtriplet-mobl1>,
	<20140502171103.GA725@redhat.com>
	<F5184659D418E34EA12B1903EE5EF5FDEE1B9D0108@seldmbx02.corpusers.net>
In-Reply-To: <F5184659D418E34EA12B1903EE5EF5FDEE1B9D0108@seldmbx02.corpusers.net>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"al.stone@linaro.org" <al.stone@linaro.org>,
	Julia Lawall <julia.lawall@lip6.fr>, Darren Hart <darren@dvhart.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On 05/05/2014 04:45 PM, Bird, Tim wrote:
>  - adding a kernel mechanism to eliminate any unused syscalls, at compile time
>    (using LTO, all I had to do was make the syscall unreachable, and the compiler
>    eliminated the calls automatically.  Some of the work was removing parts of Andy Kleen's LTO
>    patches which prevented unreferenced code from being optimized out.)

There is some irony here.

	-hpa
