Return-Path: <pmladek@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A60DA7B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 08:49:44 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3B947134
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 08:49:44 +0000 (UTC)
Date: Fri, 23 Jun 2017 10:49:40 +0200
From: Petr Mladek <pmladek@suse.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20170623084940.GH23337@pathway.suse.cz>
References: <20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
	<20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
	<20170620155825.GC409@tigerII.localdomain>
	<3908561D78D1C84285E8C5FCA982C28F612DAC67@ORSMSX114.amr.corp.intel.com>
	<20170620171134.GA444@tigerII.localdomain>
	<20170620172738.zh4maxtfmlwhyrnt@sirena.org.uk>
	<20170620192858.142a43ff@gandalf.local.home>
	<20170621122304.GC1538@pathway.suse.cz>
	<20170621160951.GA20550@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170621160951.GA20550@lunn.ch>
Cc: Peter Zijlstra <peterz@infradead.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed 2017-06-21 18:09:51, Andrew Lunn wrote:
> > 7. Unreliable time stamps and sorting messages
> > 
> >    The current extra buffers (cont, printk_safe, printk_safe_nmi)
> >    makes this worse. The timestamp is added later.
> 
> All you need is a sequence number. Since you have the CPU number
> already, it could be a per CPU atomic. And you probably don't even
> need to sort the output, if the sequence number is part of the
> output.

Yup.

> How bad is the reordering? Would a sequence space of 256 be
> enough?

That is very good question and we need a feedback here. I am not sure
what fixes are worth the complexity.

Best Regards,
Petr
