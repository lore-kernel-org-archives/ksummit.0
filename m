Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5814697A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 08:46:42 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D837EEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 08:46:41 +0000 (UTC)
Date: Mon, 26 Jun 2017 10:46:39 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
In-Reply-To: <CA+55aFzisqGwwG7nNabu_X7=CR45HBrrV4XhgSEw9RkED-A9yg@mail.gmail.com>
Message-ID: <alpine.LSU.2.20.1706261040560.30709@cbobk.fhfr.pm>
References: <ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<20170619122651.57ba27c4@gandalf.local.home>
	<20170624081411.58b4fb6a@vento.lan> <20170624140659.GM4875@lunn.ch>
	<20170624184216.2ffd4a96@gandalf.local.home>
	<20170624232140.GA27473@lunn.ch>
	<CA+55aFzQyfVnj2mhsZGsOVP7FEc4g7vguGCtkyGy1cMONPeitw@mail.gmail.com>
	<20170624234805.GT10672@ZenIV.linux.org.uk>
	<20170625012913.GC27473@lunn.ch>
	<CA+55aFzisqGwwG7nNabu_X7=CR45HBrrV4XhgSEw9RkED-A9yg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Sat, 24 Jun 2017, Linus Torvalds wrote:

> > It is how the embedded world operates, RS232, or now more often, RS232 
> > with a built in USB-RS232 converter, so you use USB on the host.
> 
> I'm not saying that serial lines shouldn't be an option.
> 
> But for a *large* user base, they simply aren't.
> 
> On regular PC's, it's often not an option any more. Even in the data
> center, it's often not an option any more.

I don't really agree here. Yes, the mid-to-hig-end servers don't probably 
contain the actual UART chip any more, but the vast majority of those have 
somehting that's emulated in firmware, and actually do have a serial 
console line connector (not the 9-pin one, but rather RJ-45 with either 
Cisco or Yost pinout), which is then connected into serial-over-TCP 
concentrator box, exposing the serial console over telnet (or some 
proprietary client application). This is seen in DCs quite frequently.

Even machines that have very good IPMI support still ship with this.

-- 
Jiri Kosina
SUSE Labs
