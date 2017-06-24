Return-Path: <SRS0=Gzkb=55=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 870F28DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 23:40:44 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ECFA718F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Jun 2017 23:40:43 +0000 (UTC)
Date: Sat, 24 Jun 2017 19:40:41 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170624194041.5591b3ad@gandalf.local.home>
In-Reply-To: <CA+55aFzQyfVnj2mhsZGsOVP7FEc4g7vguGCtkyGy1cMONPeitw@mail.gmail.com>
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
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Sat, 24 Jun 2017 16:26:42 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

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
> 
> If those two things aren't the absolutely primary goals, the whole
> thing is pointless to even discuss. No amount of cool features,
> performance, or theoretical deadlock avoidance matters ONE WHIT
> compared to the two things above.
>

That was in my original email about the #1 priority. Critical prints.
Which will always be done in sequence and at the time they are printed.
A digital camera will only be able to grab the backtrace. Most all the
other crud that people use printk for will be off screen.

In fact, it would be great to have it so that the first bug stops the
kernel. I hate it when I get pictures of backtraces only to find out
it's the fifth backtrace that happened, and whatever caused the bug
had its backtrace lost by the 4 other bugs that were simply side
effects of the first real bug.

IMHO, printk is used too freely. Perhaps what comes out of this is to
create an "info only" printk that is out of band with critical printks.
Or perhaps even simpler, start auditing printks and remove those that
are really not needed.

Now the reports I've heard about, these are not theoretical deadlocks,
they can really happen on large scale machines.

Then there's the "debug" printks. Perhaps they should be converted to
trace points. If a printk requires a config option, a lot of users may
not be able to enable it.

-- Steve
