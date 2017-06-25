Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2577F982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 02:41:56 +0000 (UTC)
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ACC621E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 02:41:55 +0000 (UTC)
Received: by mail-io0-f171.google.com with SMTP id z62so19659778ioi.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 19:41:55 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170625012913.GC27473@lunn.ch>
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
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 24 Jun 2017 19:41:54 -0700
Message-ID: <CA+55aFzisqGwwG7nNabu_X7=CR45HBrrV4XhgSEw9RkED-A9yg@mail.gmail.com>
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

On Sat, Jun 24, 2017 at 6:29 PM, Andrew Lunn <andrew@lunn.ch> wrote:
>> I'd really hate to have to use pictures of screen...  I really hope that
>> printk to serial console keeps working - I don't care about timestamps
>> granularity, etc., but losing this would hurt.  Is it really that
>> uncommon use case?
>
> It is how the embedded world operates, RS232, or now more often, RS232
> with a built in USB-RS232 converter, so you use USB on the host.

I'm not saying that serial lines shouldn't be an option.

But for a *large* user base, they simply aren't.

On regular PC's, it's often not an option any more. Even in the data
center, it's often not an option any more.

Yes, yes, 99% of the time for the simpler bugs, the machine survives,
and you get a nice oops message.

But that still leaves a reasonably big chunk of cases where you end up
getting an oops in an interrupt (or just in the disk layer itself),
and the machine is just dead, and the oops never makes it to disk.

Maybe people have netconsole or something - with known problems, but
compared to not getting anything those problems are often better than
the alternative. It should never be the default due to the kinds of
issues it has, but it might be a "no other option - I have an ethernet
port on a maintenance network, that's it".

And yes, *maybe* people have a serial line, but those traditional
UARTs close to the CPU are getting pretty rare, even in the embedded
world I think.

USB is no good for "the machine is dead", unless you are one of the
_very_ few people who use USB with the debug port dongle (which
basically bypasses "real" USB and just uses the cable and connector as
a magic serial line).

And yes, things like netconsole absolutely *will* have lockdep issues
and will have situations where it fails.

And yes, even the regular console will have situations where it
deadlocks and fails. Tough. It's probably not even worth it to try to
fix them (ie "oops while taking an interrupt while the CPU was inside
the vgacon driver itself from a previous printk" is just not worth
worrying about). Aim to minimize them in practice to code that has
been made really robust thanks to testing and not being actively
developed.

Put another way: there will always be situations where the console
just does not work. But that is *not* an excuse for looking at
relatively irrelevant stuff (ie sequence numbers etc). We still want
to make sure that when dmesg won't be saved, the console works most of
the time (where "most of the time" is >> 99%).

Out of order messages are survivable. In fact, they are hardly even an
annoyance most of the time.

But not having any messages at all, because we were trying so hard to
abstract things out and put them in buffers so that we couldn't
deadlock with the IO routines, and the timer or workqueue that was
supposed to do it is never going to happen any more because of the bug
that is trying to be printed out?

THAT is bad.

                Linus
