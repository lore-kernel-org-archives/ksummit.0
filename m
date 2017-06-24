Return-Path: <andrew@lunn.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A8F52C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 23:21:46 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [178.209.37.122])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 62A7AE9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 23:21:45 +0000 (UTC)
Date: Sun, 25 Jun 2017 01:21:40 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170624232140.GA27473@lunn.ch>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<20170619122651.57ba27c4@gandalf.local.home>
	<20170624081411.58b4fb6a@vento.lan> <20170624140659.GM4875@lunn.ch>
	<20170624184216.2ffd4a96@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170624184216.2ffd4a96@gandalf.local.home>
Cc: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jun 24, 2017 at 06:42:16PM -0400, Steven Rostedt wrote:
> On Sat, 24 Jun 2017 16:06:59 +0200
> Andrew Lunn <andrew@lunn.ch> wrote:
> 
> > > If someone reports me a bug that the Kernel crashed because of some
> > > driver, I would ask him to enable debug messages and send the crash
> > > logs with it enabled.   
> > 
> > We also need a clear indication that ordering is broken and should not
> > be trusted when we get a crash log from some random user.
> 
> When ordering is not ensured, then we can force timestamps. And I like
> the idea of the time stamp happening when the printk is called, not
> when it actually goes to the buffer. That way, we could see the
> timestamps out of order, and sequence them during postmortem.

Hi Steven

This assumes timestamps are fine grained enough. I still prefer a
sequence number in addition.

	 Andrew
