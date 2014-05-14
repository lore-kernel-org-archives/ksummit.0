Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 901BB3C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:04:11 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 94800201A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:04:09 +0000 (UTC)
Date: Wed, 14 May 2014 09:04:02 +0800 (SGT)
From: Julia Lawall <julia.lawall@lip6.fr>
To: "Bird, Tim" <Tim.Bird@sonymobile.com>
In-Reply-To: <F5184659D418E34EA12B1903EE5EF5FDEE1B9D011B@seldmbx02.corpusers.net>
Message-ID: <alpine.DEB.2.10.1405140814370.2996@hadrien>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<F5184659D418E34EA12B1903EE5EF5FDEE1B9D011B@seldmbx02.corpusers.net>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"Alan@signal11.us" <Alan@signal11.us>, Darren Hart <darren@dvhart.com>,
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

> One prime example of this would be the "static-ification" of DT, e.g.
> replacing calls to lookup DT info with constants (via macros or some other
> source replacement trick), so that we can leverage the compiler's
> optimizations for constant propagation and dead code removal.

Could Coccinelle help with this somehow?  The requirement would be that
there is some pattern that can be recognized, and the desired change is
static, ie a modification in the source code.

julia
