Return-Path: <andrew@lunn.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0479D88A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 14:07:04 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [178.209.37.122])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39C4C1B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 14:07:03 +0000 (UTC)
Date: Sat, 24 Jun 2017 16:06:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Message-ID: <20170624140659.GM4875@lunn.ch>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<20170619122651.57ba27c4@gandalf.local.home>
	<20170624081411.58b4fb6a@vento.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170624081411.58b4fb6a@vento.lan>
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

On Sat, Jun 24, 2017 at 08:14:11AM -0300, Mauro Carvalho Chehab wrote:
> Em Mon, 19 Jun 2017 12:26:51 -0400
> Steven Rostedt <rostedt@goodmis.org> escreveu:
> 
> > On Mon, 19 Jun 2017 17:20:55 +0200
> > Andrew Lunn <andrew@lunn.ch> wrote:
> > 
> > 
> > > > 4) All other kernel information that's not critical at all, and perhaps
> > > > doesn't even need to be serialized. At least, not against the above.
> > > > This could be cached, and outputted at a later time than when the
> > > > printk() was called.    
> > > 
> > > Developers machine probably have different requirements to production
> > > machines. When debugging during code development, i want the debug
> > > output to be in the correct order, independent of the level. If you
> > > are going to cause reordering, you might want to add a sequence number
> > > to each output, so it is possible to put it back into the correct
> > > order. And it needs to be clear when output is out of order.  
> 
> Even for developers, ensuring the correct order is a must.
> 
> If someone reports me a bug that the Kernel crashed because of some
> driver, I would ask him to enable debug messages and send the crash
> logs with it enabled. 

We also need a clear indication that ordering is broken and should not
be trusted when we get a crash log from some random user.

   Andrew
