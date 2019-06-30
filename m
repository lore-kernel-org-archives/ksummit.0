Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6C5E3AA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Jun 2019 16:02:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 48790A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Jun 2019 16:02:01 +0000 (UTC)
Date: Sun, 30 Jun 2019 13:01:54 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20190630130154.1b5cf991@coco.lan>
In-Reply-To: <20190629112055.GB2793@sirena.org.uk>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<s5hwoh4q2pn.wl-tiwai@suse.de>
	<20190629112055.GB2793@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
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

Em Sat, 29 Jun 2019 12:20:55 +0100
Mark Brown <broonie@kernel.org> escreveu:

> On Sat, Jun 29, 2019 at 09:18:28AM +0200, Takashi Iwai wrote:
> 
> > BTW, can the URL be reached from patchwork?  That'd be really handy.  
> 
> Even better, could patchwork add it to the mboxes you download from it
> like acks and so on?  Currently you can get the message ID so it's easy
> to construct the link for things that are on LKML.

I'm all for it, but the problem with patchwork is that the tool may be used 
on non-kernel development and/or the ML may not be in lore.

Also, there are more than one patchwork instance. We use our own for
Linux media (https://patchwork.linuxtv.org)[1].

On media, patchwork is used for both Kernel development and VDR
development (an userspace tool) - with is a completely unrelated
project (with different people behind it - and even a different mailing
list).

So, whatever change at patchwork should be done in a way that the
ML URL could be customized, and the new field would be added only
if the URL is not blank.

[1] long story short: back on the initial installs at kernel.org, patchwork 
didn't preserve IDs, due to some issue between master and mirrors - So, 
after using it for a while, we were forced to use our own instance that is
not replicated.


Thanks,
Mauro
