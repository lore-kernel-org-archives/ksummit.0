Return-Path: <sergey.senozhatsky@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 796F4BDF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 16:10:24 +0000 (UTC)
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 306BF1A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 16:10:24 +0000 (UTC)
Received: by mail-pg0-f67.google.com with SMTP id f127so22353471pgc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 09:10:24 -0700 (PDT)
Date: Wed, 21 Jun 2017 01:09:08 +0900
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20170620160908.GD409@tigerII.localdomain>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

On (06/19/17 17:54), Hannes Reinecke wrote:
[..]
> > Developers machine probably have different requirements to production
> > machines. When debugging during code development, i want the debug
> > output to be in the correct order, independent of the level. If you
> > are going to cause reordering, you might want to add a sequence number
> > to each output, so it is possible to put it back into the correct
> > order. And it needs to be clear when output is out of order.
> > 
> I was under the impression that we do this anyway; even ATM every line
> in the printk buffer is prefixed with a timestamp.
> And we should continue with that.
> 
> Obviously, this requires that any printk buffer entry which is _not_
> time-critical (ie everything not in 1) or 2) _cannot_ be broken up, but
> will always end up as one record in the printk buffer.
> If we could achieve that all the logging infrastructure in scsi could go
> away and I could use 'normal' printk.
> Now _that_ would be really cool.

are we talking about dev_printk() and friends here? if so, then yes - would
be lovely to remove those.

there is some demand for a 'buffered printk' - multiple lines that would
appear in logbuf in sequential records. people (Tetsuo) want OOM backtraces
from different CPUs to be less broken up, etc.

we already have per-CPU buffers for printk_safe and we can reuse them.
there are some limitations, tho. if "buffered printk must be done with
local IRQs disabled" trade-off is acceptable (and I kinda think it is,
buffered printk from a scheduleable context is somewhat strange), then
we can add it _more or less_ easily.

very schematically

	buffered_printk_begin();  //local IRQ disable
		printk();
		printk();
		...
		printk();

	buffered_printk_end()   // local IRQ enable
		{
			spin_lock_irqsave(logbuf_lock)

				copy messages from this-CPU buffer to logbuf

			spin_unlock_irqrestore(logbuf_lock)
		}

	-ss
