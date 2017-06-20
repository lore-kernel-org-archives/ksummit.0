Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B1BCF96F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 18:45:29 +0000 (UTC)
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A5CB8E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 18:45:28 +0000 (UTC)
Received: by mail-io0-f193.google.com with SMTP id j200so15785282ioe.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 11:45:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170619103912.2edbf88a@gandalf.local.home>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 20 Jun 2017 20:45:27 +0200
Message-ID: <CAKMK7uEnsezRz=0-A2oAtSOTxNDR9LOCd8XOaG=tkC8+Xf_puQ@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 19, 2017 at 4:39 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Mon, 19 Jun 2017 08:22:13 +0200
> Hannes Reinecke <hare@suse.com> wrote:
>
>> >     There are many other questions, so it'd be great to have a
>> > brainstorming session.
>> >
>> I'm all for it.
>> Personally, I'd love to see the printk mechanism split into something
>> which can be used primarily for logging/debugging (ie slow,
>> non-critical, large messages) and emergency messaging (ie fast, direct
>> messages like kernel oops and KERN_EMERG thingies).
>> Plus I'd love to decouple the message generation (ie writing into the
>> message log) from message output (ie printing out the message log).
>> That currently is a major performance drag when using slow output
>> devices like serial console.
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
>
> 4) All other kernel information that's not critical at all, and perhaps
> doesn't even need to be serialized. At least, not against the above.
> This could be cached, and outputted at a later time than when the
> printk() was called.
>
> 5) Finally, the data from userspace (/dev/kmsg). I believe that this
> really should be in an buffer by itself, and at most interleaved via
> timestamps with the above in dmesg.
>
> That's my idea. If others have more to add, please do so.

My own pet peeve with printk from the drm side:

Untangling printk form the console_lock horror show, if at all
possible. One problem is that heavy printk usage makes the
console_lock massively contended (we delay restoring the the kernel
console on resume in kms drivers to a worker because of that). The
worse problem is that console_lock locking is horribly monolithic and
defacto requires that large chunks of your gfx driver init code needs
to run while holding it. Which means no printk output, neither for
your gfx driver nor anything else while your cpu goes through
something like a few 100k lines of code (for big drivers).

We have a few pages of kerneldoc explaining how to debug this and what
happens, and gross debug hacks to just not take console_lock on driver
(and pray it won't race), but it's a constant trap for new gfx
hackers.

Fixing console_lock is much less likely to happen, I (and better
hackers like Alan Cox) tried, and ran away in tears.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
