Return-Path: <viro@ftp.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 636CD8EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 01:02:40 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 98927184
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 01:02:39 +0000 (UTC)
Date: Sun, 25 Jun 2017 00:48:05 +0100
From: Al Viro <viro@ZenIV.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170624234805.GT10672@ZenIV.linux.org.uk>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<20170619122651.57ba27c4@gandalf.local.home>
	<20170624081411.58b4fb6a@vento.lan> <20170624140659.GM4875@lunn.ch>
	<20170624184216.2ffd4a96@gandalf.local.home>
	<20170624232140.GA27473@lunn.ch>
	<CA+55aFzQyfVnj2mhsZGsOVP7FEc4g7vguGCtkyGy1cMONPeitw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+55aFzQyfVnj2mhsZGsOVP7FEc4g7vguGCtkyGy1cMONPeitw@mail.gmail.com>
Sender: Al Viro <viro@ftp.linux.org.uk>
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

On Sat, Jun 24, 2017 at 04:26:42PM -0700, Linus Torvalds wrote:
> On Sat, Jun 24, 2017 at 4:21 PM, Andrew Lunn <andrew@lunn.ch> wrote:
> > This assumes timestamps are fine grained enough. I still prefer a
> > sequence number in addition.
> 
> Guyes, you're overdesigning.
> 
> The general old printk subsystem had "continuations". Nobody ever used
> them. Nobody. I know, because they were broken, and nobody even
> reported it.
> 
> Similarly, nobody is going to use sequence numbers and timestamps.
> What *is* going to get used is digital cameras to take pictures of a
> screen, and "dmesg" output (and no, dmesg will not use those sequence
> numbers either, see above).

I'd really hate to have to use pictures of screen...  I really hope that
printk to serial console keeps working - I don't care about timestamps
granularity, etc., but losing this would hurt.  Is it really that
uncommon use case?
