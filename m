Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 805B8899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 12:31:13 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED875211
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 12:31:12 +0000 (UTC)
Date: Thu, 21 Jul 2016 14:31:09 +0200
From: Jan Kara <jack@suse.cz>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160721123109.GD7901@quack2.suse.cz>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<20160719073346.GB24189@swordfish>
	<9794ced1-3c45-c548-9520-15d1b66aef31@suse.com>
	<20160719074631.GC24189@swordfish>
	<a38a0bc9-12c9-6234-9645-5d3ad4f83023@suse.com>
	<1469097402.120686.129.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1469097402.120686.129.camel@infradead.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu 21-07-16 11:36:42, David Woodhouse wrote:
> On Tue, 2016-07-19 at 10:02 +0200, Hannes Reinecke wrote:
> > > so why would the system die before we console_unlock()?
> > > 
> > Errm.
> > Because it doesn't have any other chance?
> > Like, hard lockup?
> > Power down?
> > Hardware dead?
> > 
> > Slightly puzzled,
> 
> Right. This was exactly the kind of hang I was chasing shortly before
> last year's KS — an interrupt storm killing the box (because of a
> tendency in network drivers to return IRQ_HANDLED and not really care
> if we *had* done so, which ISTR arguing with DaveM about separately).
> 
> Sometimes you don't get a nice clean panic. Sometimes you just get a
> lockup or a hard reset.
> 
> Which is also why it doesn't help much to try to use the level of an
> individual printk to determine whether it should be synchronous or not.
> In this case it was all KERN_DEBUG messages from the network driver,
> which I was logging to the serial port so I could see what was
> happening... but which weren't making it out the port before the
> lockup.
> 
> A viable solution to fix this might be a 'synchronous' flag on the
> console itself — so I could boot with 'console=ttyS0,synchronous' and
> get a debuggable system again, Or maybe it would be simpler to have a
> system-wide control which makes all consoles synchronous, if that's
> easier. Either way, we do need the option, and we need it to apply to
> *all* output, not just KERN_EMERG messages.

Yes, and something like this is already implemented in the patchset - you
have /sys/kernel/printk/synchronous tunable and you can switch its value
anytime between 0 and 1 (or specify its value as a kernel parameter) and
the printk behavior changes. So for debugging the patchset already supports
all the necessary tuning.

Of course there are cases where you run a fleet of production machines and
you don't know in advance which and when fails. Then async printk may
somewhat reduce debuggability of this. But the above tunable still gives
reasonable handle to userspace to cater for cases like that - e.g. you can
switch to synchronous printk after the booting is finished and the printk
load is lower or based on whatever other heuristic that you are able to
invent in userspace...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
