Return-Path: <andrew@lunn.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DA697901
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 01:29:28 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [178.209.37.122])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 676E816B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 01:29:28 +0000 (UTC)
Date: Sun, 25 Jun 2017 03:29:13 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Al Viro <viro@ZenIV.linux.org.uk>
Message-ID: <20170625012913.GC27473@lunn.ch>
References: <ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<20170619122651.57ba27c4@gandalf.local.home>
	<20170624081411.58b4fb6a@vento.lan> <20170624140659.GM4875@lunn.ch>
	<20170624184216.2ffd4a96@gandalf.local.home>
	<20170624232140.GA27473@lunn.ch>
	<CA+55aFzQyfVnj2mhsZGsOVP7FEc4g7vguGCtkyGy1cMONPeitw@mail.gmail.com>
	<20170624234805.GT10672@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170624234805.GT10672@ZenIV.linux.org.uk>
Cc: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> I'd really hate to have to use pictures of screen...  I really hope that
> printk to serial console keeps working - I don't care about timestamps
> granularity, etc., but losing this would hurt.  Is it really that
> uncommon use case?

It is how the embedded world operates, RS232, or now more often, RS232
with a built in USB-RS232 converter, so you use USB on the host.

     Andrew
