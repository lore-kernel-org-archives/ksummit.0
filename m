Return-Path: <sergey.senozhatsky@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04B24B4C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 15:57:38 +0000 (UTC)
Received: from mail-pg0-f42.google.com (mail-pg0-f42.google.com [74.125.83.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 498BFEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 15:57:37 +0000 (UTC)
Received: by mail-pg0-f42.google.com with SMTP id e187so12047392pgc.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 08:57:37 -0700 (PDT)
Date: Wed, 21 Jun 2017 00:56:18 +0900
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170620155618.GB409@tigerII.localdomain>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170619103912.2edbf88a@gandalf.local.home>
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

Hello,

On (06/19/17 10:39), Steven Rostedt wrote:
> > > 	There are many other questions, so it'd be great to have a
> > > brainstorming session.
> > >   
> > I'm all for it.
> > Personally, I'd love to see the printk mechanism split into something
> > which can be used primarily for logging/debugging (ie slow,
> > non-critical, large messages) and emergency messaging (ie fast, direct
> > messages like kernel oops and KERN_EMERG thingies).
> > Plus I'd love to decouple the message generation (ie writing into the
> > message log) from message output (ie printing out the message log).
> > That currently is a major performance drag when using slow output
> > devices like serial console.
> 
> I'd like to find out all the requirements for printk(). And some of
> these requirements contradict each other. If we can sort out exactly
> what people want from a printk() mechanism, perhaps we can group
> together like requirements and then create multiple facilities that can
> handle each group of requirements.
> 
> Here's a couple of requirements that I expect from printk:
> 
> 1) First and for most, is the critical output. Those of warnings, and
> above. Basically all critical messages that can be used to debug a
> system crash. This requires the ability to be executed from any
> context, including NMI.
> 
>  This group includes WARN() and BUG() output, and anything in an oops.
> 
> 2) Activity information. This too can be used to debug a system crash,
> and requires serializations. When a device comes on line. A spurious
> interrupt. A system state change (CPU going on or off line).
> 
> 3) Status information. Now, I'm sure people will argue about what goes
> in this or the above #2. Here, this would be all pr_info. Useful
> information that should be logged, but perhaps not something that is
> critical knowledge if a crash happens. In other words, something that
> isn't critical to get out immediately.

yeah, the 'get out immediately' part is pretty complex

a) some people like it and want to keep it (it has never killed
   their systems)

b) some people don't like it and want to change it (it has
   killed their systems)

the existing 'the winner prints it all' design is problematic sometimes.


> 4) All other kernel information that's not critical at all, and perhaps
> doesn't even need to be serialized. At least, not against the above.
> This could be cached, and outputted at a later time than when the
> printk() was called.

messages are not created equal :)

> 5) Finally, the data from userspace (/dev/kmsg). I believe that this
> really should be in an buffer by itself, and at most interleaved via
> timestamps with the above in dmesg.

yes, could do.

	-ss
