Return-Path: <andrea.parri@amarulasolutions.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 77A487258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 09:48:34 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B540D70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 09:48:33 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id p11so13050375wre.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Jul 2019 02:48:33 -0700 (PDT)
Date: Mon, 1 Jul 2019 11:48:26 +0200
From: Andrea Parri <andrea.parri@amarulasolutions.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Peter Zijlstra <peterz@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190701094826.GA5144@andrea>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
	<20190630163120.GA13925@chatter.i7.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190630163120.GA13925@chatter.i7.local>
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

On Sun, Jun 30, 2019 at 12:31:20PM -0400, Konstantin Ryabitsev wrote:
> On Sat, Jun 29, 2019 at 05:16:18PM +0200, Thomas Gleixner wrote:
> >>Makes all sense to me.  One question/remark:
> >>
> >>Documentation/process/submitting-patches.rst says:
> >>
> >> "If the patch follows from a mailing list discussion, give a URL to the
> >>  mailing list archive; use the https://lkml.kernel.org/ redirector with
> >>  a ``Message-Id``, to ensure that the links cannot become stale."
> >>
> >>and it does not mention "lore.kernel.org": does this doc want an update?
> >
> >Yes. lkml.kernel.org/r was the initial redirector, but lore is the new
> >thing.
> 
> FYI, lkml.kernel.org == lore.kernel.org in all respects. Using
> lore.kernel.org/r/<messageid> will match *any* mailing list archived at
> lore.kernel.org (for the full list, see https://lore.kernel.org/lists.html).
> I prefer people use lore.kernel.org because that name doesn't imply that the
> search will only match LKML.

Thanks for this information, Konstantin.

I'm still a bit confused...  Consider, e.g., the following discussion:
it apparently forgot to include LKML, but the link  "works".

  https://lkml.kernel.org/r/20190131234012.3712779-1-ast@kernel.org

A last minute change?  What am I missing?

Thanks,
  Andrea
