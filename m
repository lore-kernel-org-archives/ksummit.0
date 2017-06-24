Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3A402C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 23:26:44 +0000 (UTC)
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 630FE87
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 23:26:43 +0000 (UTC)
Received: by mail-io0-f196.google.com with SMTP id m19so10200217ioe.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 16:26:43 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170624232140.GA27473@lunn.ch>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<20170619122651.57ba27c4@gandalf.local.home>
	<20170624081411.58b4fb6a@vento.lan> <20170624140659.GM4875@lunn.ch>
	<20170624184216.2ffd4a96@gandalf.local.home>
	<20170624232140.GA27473@lunn.ch>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 24 Jun 2017 16:26:42 -0700
Message-ID: <CA+55aFzQyfVnj2mhsZGsOVP7FEc4g7vguGCtkyGy1cMONPeitw@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
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

On Sat, Jun 24, 2017 at 4:21 PM, Andrew Lunn <andrew@lunn.ch> wrote:
> This assumes timestamps are fine grained enough. I still prefer a
> sequence number in addition.

Guyes, you're overdesigning.

The general old printk subsystem had "continuations". Nobody ever used
them. Nobody. I know, because they were broken, and nobody even
reported it.

Similarly, nobody is going to use sequence numbers and timestamps.
What *is* going to get used is digital cameras to take pictures of a
screen, and "dmesg" output (and no, dmesg will not use those sequence
numbers either, see above).

If those two things aren't the absolutely primary goals, the whole
thing is pointless to even discuss. No amount of cool features,
performance, or theoretical deadlock avoidance matters ONE WHIT
compared to the two things above.

                      Linus
