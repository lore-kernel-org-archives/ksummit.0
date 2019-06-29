Return-Path: <andrea.parri@amarulasolutions.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A4A9C90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Jun 2019 13:43:40 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6235A3D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Jun 2019 13:43:38 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id s15so11509002wmj.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Jun 2019 06:43:38 -0700 (PDT)
Date: Sat, 29 Jun 2019 15:43:29 +0200
From: Andrea Parri <andrea.parri@amarulasolutions.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190629134329.GA4620@andrea>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
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

> What's really useful is when the commit has a Link tag:
> 
>        https://lore.kernel.org/lkml/$MESSAGE-ID
> 
> and if the submitters provide the same kind of link in their V(N)
> submission pointing to the V(N-1) in the cover letter:
> 
>        https://lore.kernel.org/lkml/$MESSAGE-ID-V(N-1)
> 
> If it's a single patch the link can be in the patch itself after the ---
> separator. That allows a quick lookup of the history.
> 
> I also really want the change history to be at that place. i.e.
> 
>  Subject ....
> 
>  changelog text
> 
>  Tags...
>  Signed-off-by: Joe Hacker
> 
>  ---
> 
>  V3: Fixed typo
> 
>  V2: Made it work
>      https://lore.kernel.org/.... (if single patch)
> 
>  ---
> 
>  diffstat
> 
>  ---
> 
>  patch
> 
> That way tools just strip the changes section away and the maintainer does
> not have to handle it manually.
> 
> Can we pretty please agree on that format and make it mandatory?

Makes all sense to me.  One question/remark:

Documentation/process/submitting-patches.rst says:

 "If the patch follows from a mailing list discussion, give a URL to the
  mailing list archive; use the https://lkml.kernel.org/ redirector with
  a ``Message-Id``, to ensure that the links cannot become stale."

and it does not mention "lore.kernel.org": does this doc want an update?

FWIW, I've been trying to conform to "lkml.kernel.org"  (which currently
seems just a redirection to "lore.kernel.org")  since [1], and I do know
of at least a few subsystems out there recommending such URLs.

Thanks,
  Andrea

[1] https://lkml.kernel.org/r/20180412115022.GL4043@hirez.programming.kicks-ass.net
