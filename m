Return-Path: <mchehab@s-opensource.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6E66249B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 11:14:19 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C02A4AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 11:14:18 +0000 (UTC)
Date: Sat, 24 Jun 2017 08:14:11 -0300
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170624081411.58b4fb6a@vento.lan>
In-Reply-To: <20170619122651.57ba27c4@gandalf.local.home>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<20170619122651.57ba27c4@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

Em Mon, 19 Jun 2017 12:26:51 -0400
Steven Rostedt <rostedt@goodmis.org> escreveu:

> On Mon, 19 Jun 2017 17:20:55 +0200
> Andrew Lunn <andrew@lunn.ch> wrote:
> 
> 
> > > 4) All other kernel information that's not critical at all, and perhaps
> > > doesn't even need to be serialized. At least, not against the above.
> > > This could be cached, and outputted at a later time than when the
> > > printk() was called.    
> > 
> > Developers machine probably have different requirements to production
> > machines. When debugging during code development, i want the debug
> > output to be in the correct order, independent of the level. If you
> > are going to cause reordering, you might want to add a sequence number
> > to each output, so it is possible to put it back into the correct
> > order. And it needs to be clear when output is out of order.  

Even for developers, ensuring the correct order is a must.

If someone reports me a bug that the Kernel crashed because of some
driver, I would ask him to enable debug messages and send the crash
logs with it enabled. 

> Perhaps a kernel command line option could force this.

I'd say that a Kconfig option can also be used for that. In
the case of media, we have a config option that enables extra
debugging features (CONFIG_VIDEO_ADV_DEBUG). It seems that other
subsystems have similar things:

	$ grep ADV .config|grep DEB
	CONFIG_PM_ADVANCED_DEBUG=y
	CONFIG_BATMAN_ADV_DEBUGFS=y
	CONFIG_BATMAN_ADV_DEBUG=y
	CONFIG_VIDEO_ADV_DEBUG=y

Well, if any of such options are selected, I'd say that ordering
the logs should be the default.

Thanks,
Mauro
