Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D0BFBBE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Jun 2019 15:16:24 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5D76B82F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Jun 2019 15:16:24 +0000 (UTC)
Date: Sat, 29 Jun 2019 17:16:18 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Andrea Parri <andrea.parri@amarulasolutions.com>
In-Reply-To: <20190629134329.GA4620@andrea>
Message-ID: <alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Peter Zijlstra <peterz@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 29 Jun 2019, Andrea Parri wrote:
> > Can we pretty please agree on that format and make it mandatory?
> 
> Makes all sense to me.  One question/remark:
> 
> Documentation/process/submitting-patches.rst says:
> 
>  "If the patch follows from a mailing list discussion, give a URL to the
>   mailing list archive; use the https://lkml.kernel.org/ redirector with
>   a ``Message-Id``, to ensure that the links cannot become stale."
> 
> and it does not mention "lore.kernel.org": does this doc want an update?

Yes. lkml.kernel.org/r was the initial redirector, but lore is the new
thing. 

> FWIW, I've been trying to conform to "lkml.kernel.org"  (which currently
> seems just a redirection to "lore.kernel.org")  since [1], and I do know

Yes, its switched from marc.info to lore.

> of at least a few subsystems out there recommending such URLs.

I find them pretty useful.

Thanks,

	tglx
