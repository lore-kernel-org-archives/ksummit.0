Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C77B8970
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:16:00 +0000 (UTC)
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1F2463CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:16:00 +0000 (UTC)
Received: by mail-pg0-f65.google.com with SMTP id u62so14843788pgb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 04:16:00 -0700 (PDT)
Date: Mon, 26 Jun 2017 20:16:07 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170626111607.GA588@jagdpanzerIV.localdomain>
References: <ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<20170619122651.57ba27c4@gandalf.local.home>
	<20170624081411.58b4fb6a@vento.lan> <20170624140659.GM4875@lunn.ch>
	<20170624184216.2ffd4a96@gandalf.local.home>
	<20170624232140.GA27473@lunn.ch>
	<CA+55aFzQyfVnj2mhsZGsOVP7FEc4g7vguGCtkyGy1cMONPeitw@mail.gmail.com>
	<20170624194041.5591b3ad@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170624194041.5591b3ad@gandalf.local.home>
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

Hello,

On (06/24/17 19:40), Steven Rostedt wrote:
[..]
> > On Sat, Jun 24, 2017 at 4:21 PM, Andrew Lunn <andrew@lunn.ch> wrote:
> > > This assumes timestamps are fine grained enough. I still prefer a
> > > sequence number in addition.  
> > 
> > Guyes, you're overdesigning.
> > 
> > The general old printk subsystem had "continuations". Nobody ever used
> > them. Nobody. I know, because they were broken, and nobody even
> > reported it.
> > 
> > Similarly, nobody is going to use sequence numbers and timestamps.
> > What *is* going to get used is digital cameras to take pictures of a
> > screen, and "dmesg" output (and no, dmesg will not use those sequence
> > numbers either, see above).
> > 
> > If those two things aren't the absolutely primary goals, the whole
> > thing is pointless to even discuss. No amount of cool features,
> > performance, or theoretical deadlock avoidance matters ONE WHIT
> > compared to the two things above.
> >
> 
> That was in my original email about the #1 priority. Critical prints.
> Which will always be done in sequence and at the time they are printed.
> A digital camera will only be able to grab the backtrace. Most all the
> other crud that people use printk for will be off screen.
> 
> In fact, it would be great to have it so that the first bug stops the
> kernel. I hate it when I get pictures of backtraces only to find out
> it's the fifth backtrace that happened, and whatever caused the bug
> had its backtrace lost by the 4 other bugs that were simply side
> effects of the first real bug.
>
> IMHO, printk is used too freely. Perhaps what comes out of this is to
> create an "info only" printk that is out of band with critical printks.
> Or perhaps even simpler, start auditing printks and remove those that
> are really not needed.

here is my crazy idea (we are still brainstorming, right?)

we can "mark" the first panic logbuf entry in the logbuf and never drop it.
if we are out of space in logbuf then we drop new messages/logbuf entries
rather than the old ones. and we can replay the logbuf starting from that
"first panic logbuf entry" every once in a while, so your camera will have
better chances to capture the backtrace. we've got `panic_timeout' in panic(),
can introduce `panic_reflush_console_timeout' branch, which can either simply
flush logbuf starting from "panic logbuf entry" to the serial console, or to
the early console, or a brand new `struct console' callback
->emergency_write(...) which will basically do uart_console_write(), or
whatever it usually does, but without locking the port->lock (well if
anyone suffers from it). the last part is optional, but replaying logbuf
is *probably* not entirely mad; we flush kernel logbuf entries anyway,
replaying it shouldn't harm (tm). especially when the only available tool
is a digital camera.

> Now the reports I've heard about, these are not theoretical deadlocks,
> they can really happen on large scale machines.
> 
> Then there's the "debug" printks. Perhaps they should be converted to
> trace points. If a printk requires a config option, a lot of users may
> not be able to enable it.

	-ss
