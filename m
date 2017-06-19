Return-Path: <andrew@lunn.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5DFE7B76
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 16:17:58 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [178.209.37.122])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0798D13A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 16:17:57 +0000 (UTC)
Date: Mon, 19 Jun 2017 18:17:53 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20170619161753.GO3786@lunn.ch>
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

> I was under the impression that we do this anyway; even ATM every line
> in the printk buffer is prefixed with a timestamp.

What is the granularity of the timestamp? I'm talking about where
every second or third line is a printk of some sort. It could be some
of them are existing _err(), some are added _dbg() etc. Is the
timestamp sufficient to put such output back into order?

	  Andrew
