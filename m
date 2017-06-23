Return-Path: <pmladek@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 86620A7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 08:46:22 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0D1D9171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 08:46:21 +0000 (UTC)
Date: Fri, 23 Jun 2017 10:46:19 +0200
From: Petr Mladek <pmladek@suse.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20170623084619.GG23337@pathway.suse.cz>
References: <20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
	<20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
	<20170620155825.GC409@tigerII.localdomain>
	<3908561D78D1C84285E8C5FCA982C28F612DAC67@ORSMSX114.amr.corp.intel.com>
	<20170620171134.GA444@tigerII.localdomain>
	<20170620172738.zh4maxtfmlwhyrnt@sirena.org.uk>
	<20170620192858.142a43ff@gandalf.local.home>
	<20170621122304.GC1538@pathway.suse.cz>
	<20170621141808.GE27585@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170621141808.GE27585@lunn.ch>
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

On Wed 2017-06-21 16:18:08, Andrew Lunn wrote:
> On Wed, Jun 21, 2017 at 02:23:04PM +0200, Petr Mladek wrote:
> > On Tue 2017-06-20 19:28:58, Steven Rostedt wrote:
> > > I've thought about this a little too.
> > > 
> > > I would like printk to have per-cpu buffers. Then we don't even need to
> > > store the CPU number, that would be explicit by which buffer the data
> > > is stored in.
> > > 
> > > The one thing that is needed, is the consumer. In ftrace, it's whatever
> > > reads the buffer, which is usually user space, but can be the kernel
> > > (see sysctl-z). But there's only one consumer at a time.
> > > 
> > > I was thinking about a new design for printk. Similar to ftrace, but
> > > different.
> > > 
> > > 1) have per cpu buffers, that are lockless. Writes happen immediately,
> > > but the output happens later.
> > 
> > My problems with per-CPU buffers is that:
> > 
> >     + I am not sure how big per-CPU buffers we could afford.
> >       Any non-balanced usage increases the chance of loosing
> >       messages.
> > 
> >     + The information is scattered and extra tools are needed
> >       to locate the messages and sort them.
> 
> Considering this from the Embedded world, during board bring up, you
> might be poking around in memory using a JTAG interface because your
> serial driver is not working yet, or the kernel is crashing before the
> serial port is up and running. The in-memory format needs to be quite
> simple to read. I don't know how early_printk() factors into
> this. Maybe that solves this problem?

Early printk just directly writes the messages on an early console.
They are not stored anywhere.

Best Regards,
Petr
