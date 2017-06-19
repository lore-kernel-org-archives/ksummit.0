Return-Path: <SRS0=e9z0=5Y=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1317BB88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 16:26:55 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5FEA713A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 16:26:54 +0000 (UTC)
Date: Mon, 19 Jun 2017 12:26:51 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20170619122651.57ba27c4@gandalf.local.home>
In-Reply-To: <20170619152055.GM3786@lunn.ch>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
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

On Mon, 19 Jun 2017 17:20:55 +0200
Andrew Lunn <andrew@lunn.ch> wrote:


> > 4) All other kernel information that's not critical at all, and perhaps
> > doesn't even need to be serialized. At least, not against the above.
> > This could be cached, and outputted at a later time than when the
> > printk() was called.  
> 
> Developers machine probably have different requirements to production
> machines. When debugging during code development, i want the debug
> output to be in the correct order, independent of the level. If you
> are going to cause reordering, you might want to add a sequence number
> to each output, so it is possible to put it back into the correct
> order. And it needs to be clear when output is out of order.

Perhaps a kernel command line option could force this.

-- Steve
