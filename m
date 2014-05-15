Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F3C8948E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 21:44:16 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2167E20111
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 21:44:16 +0000 (UTC)
Date: Thu, 15 May 2014 14:44:12 -0700
From: josh@joshtriplett.org
To: Jan Kara <jack@suse.cz>
Message-ID: <20140515214412.GA16166@cloud>
References: <20140515211455.GA9632@quack.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140515211455.GA9632@quack.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Printk softlockups
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 15, 2014 at 11:14:55PM +0200, Jan Kara wrote:
>   for about an year I'm trying to upstream patches which allow booting of
> large machines with serial console attached. The problem is that there are
> lots of messages printed during boot (e.g. during device discovery - think
> of tens or even hundreds or disks, ...). Currently, console_unlock() prints
> messages from kernel printk buffer to console while the buffer is
> non-empty. When serial console is attached, printing is slow and thus other
> CPUs in the system have plenty of time to append new messages to the buffer
> while one CPU is printing. Thus the CPU can spend theoretically unbounded
> amount of time (in practice tens of seconds) doing printing in
> console_unlock() leading to softlockups, RCU stalls, lost interrupts and
> effectively the system dies.
> 
> Now over the year I've tried several approaches and the scenario is always
> the same - I submit patches, then someone comes, complains he doesn't like
> it and possibly suggests another way to do it. So I do it another way,
> someone comes and doesn't like it *that* way... Now I've done 8 or so
> iterations of the patchset and I'm getting frustrated I have to say.

My sympathies; that sounds like exactly the right kind of discussion to
have at Kernel Summit.

> In the last iteration Alan Cox suggested [1] that I should implement a
> buffering console using tty layer and stick it on top of serial console. So
> printing would happen only to another buffer, would be fast and the problem
> won't appear. Frankly I don't see a big advantage of this approach to just
> simply stopping printing of kernel log buffer early and it seems to me
> modifying of serial drivers which work in putchar, poll-until-ready style
> to work with buffering would be rather complex.
> 
> So I would really like as much involved people as possible to sit down in
> one room and think over what guarantees do we want from printk, which
> complexity is acceptable, and hopefully we can agree on a way accepted by
> all parties to resolve the issue.
> 
> People involved in the discussion:
> Jan Kara <jack@suse.cz>
> Andrew Morton <akpm@linux-foundation.org>
> Steven Rosted <rostedt@goodmis.org>
> Alan Cox <gnomes@lxorguk.ukuu.org.uk>
> 
> [1] https://lkml.org/lkml/2014/4/22/251, https://lkml.org/lkml/2014/4/23/647

I'd be interested in this discussion, both for its own sake, and because
with of the overlap with tinification and embedded.

The kernel seems entirely too chatty by default.  Many of our current
messages need to move to a lower-priority loglevel.  The default output,
even *without* "quiet" or "loglevel", should only include "what went
wrong", not "what went right".  For the rest, you can buffer messages in
userspace; any situation critical enough to make a userspace logging
solution unusable should result in messages critical enough to end up
directly on the serial port.  (That's actually a good rule of thumb for
critical messages: "if this goes wrong, might it become impossible to
get at the message via the normal userspace-captured log"?)

So, I'd be interested in whether we can make the kernel usable for your
scenario *without* extensive fixes to printk.  We should also fix the
printk-to-serial path to not suck as much as it does, especially for
non-emergency messages.  ("softlockup detected" is the kind
of message that needs to be printed by a routine with a higher priority
than potential softlockups; "disk detected" isn't.)

- Josh Triplett
