Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3AED7C77
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 19:41:53 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5839766
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 19:41:52 +0000 (UTC)
Date: Sun, 9 Sep 2018 21:41:49 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
In-Reply-To: <CA+55aFwHH7cN0GXcV7trRs1zgdak+_e8-TyXEsXu62G5V_248A@mail.gmail.com>
Message-ID: <nycvar.YFH.7.76.1809092137170.15880@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
	<alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan>
	<20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
	<20180908153235.GB11120@kroah.com>
	<1536422066.22308.3.camel@HansenPartnership.com>
	<20180909125130.GA16474@kroah.com>
	<CA+55aFwHH7cN0GXcV7trRs1zgdak+_e8-TyXEsXu62G5V_248A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	mchehab+samsung@kernel.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 9 Sep 2018, Linus Torvalds wrote:

> > But remember, this is only needed for the "crazy" issues, like Meltdown.
> > What we put together add-hoc for L1TF worked well, and what we do every
> > week in handling security issues sent to security@k.org works very well
> > also.  So well that no one really realizes what we do there :)
> 
> Note that at some point, we should just say "f*ck it".

I absolutely agree (even more for stable tree backports).

One thing that is absolutely necessary then though (especially if this is 
just about not doing crazy backport to -stable), to make it absolutely 
clear to the stable downstreams/consumers, that this is the case.

Rationale: turns out it might be even illegal in some countries to release 
software with known security issue for which the fix exists (yeah, well, 
whatever that means). So the downstreams really should be made aware, so 
that we don't put them into an uncomfortable situation and they could 
adapt somehow.

(on a first sight, this might be like buying into what grsecurity folk(s) 
have been asking for for ages -- that is annotating ideally each and every 
commit with its security implications -- but that's not the case here; 
it's quite the opposite: explicitly stating that certain security 
fix/backport is *not* happening).

Thanks,

-- 
Jiri Kosina
SUSE Labs
