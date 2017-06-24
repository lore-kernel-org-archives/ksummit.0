Return-Path: <SRS0=Gzkb=55=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C16BF902
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 22:42:19 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 30AD51E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 22:42:19 +0000 (UTC)
Date: Sat, 24 Jun 2017 18:42:16 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20170624184216.2ffd4a96@gandalf.local.home>
In-Reply-To: <20170624140659.GM4875@lunn.ch>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<20170619122651.57ba27c4@gandalf.local.home>
	<20170624081411.58b4fb6a@vento.lan> <20170624140659.GM4875@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Sat, 24 Jun 2017 16:06:59 +0200
Andrew Lunn <andrew@lunn.ch> wrote:

> > If someone reports me a bug that the Kernel crashed because of some
> > driver, I would ask him to enable debug messages and send the crash
> > logs with it enabled.   
> 
> We also need a clear indication that ordering is broken and should not
> be trusted when we get a crash log from some random user.

When ordering is not ensured, then we can force timestamps. And I like
the idea of the time stamp happening when the printk is called, not
when it actually goes to the buffer. That way, we could see the
timestamps out of order, and sequence them during postmortem.

-- Steve
