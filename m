Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8AE9360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 02:08:27 +0000 (UTC)
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2D496173
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 02:08:27 +0000 (UTC)
Received: by mail-pf0-f196.google.com with SMTP id g202so2426360pfb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 19:08:27 -0700 (PDT)
Date: Wed, 20 Jul 2016 11:08:27 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160720020827.GA660@swordfish>
References: <20160719034717.GA24189@swordfish>
	<1468939510.2383.5.camel@HansenPartnership.com>
	<20160719145509.GA563@swordfish>
	<1468951082.2383.29.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1468951082.2383.29.camel@HansenPartnership.com>
Cc: Jiri Kosina <jkosina@suse.com>, ksummit-discuss@lists.linuxfoundation.org,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Viresh Kumar <viresh.kumar@linaro.org>, Tejun Heo <tj@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

On (07/19/16 10:58), James Bottomley wrote:
[..]
> > yes, there are reports. for instance,
> > http://marc.info/?l=linux-kernel&m=146823278316663
> 
> That's about backporting a fix from upstream to 3.12 to fix the
> particular issue, so it seems to be solved for the reporter as far as
> it goes.

but there is no upstream fix. if the one you are talking about is
'5874af2003b1 ("printk: enable interrupts before callin console_trylock_for_printk()")'

then it can't and won't solve every single problem with printk.
we still have cases like:

spin_lock()
 printk() -> console_unlock()
spin_unlock()

spin_lock_irqsafe()
 printk() -> console_unlock()
spin_unlock_irqrestore()

rcu_read_lock()
 printk() -> cosnole_unlock()
rcu_read_unlock()

preempt_disable()
 printk() -> console_unlock()
preempt_enable()

local_irq_save()
 printk() -> console_unlock()
local_irq_restore()

in IRQ
printk() -> console_unlock()

in IRQ (again)
printk_deferred() -> irq_work -> IRQ -> wake_up_klogd_work_func -> console_unlock()

and so on.

console_unlock() does
{
 for (;;) {
   text = get_message_from_log_buf();
   call_console_drivers(text) -> UART_write(text);     // for instance
 }
}

while other CPUs on the system do

printk(text)
{
   append_message_to_log_buf(text);
   return;
}


so aync printk attempts to address those problems. what it does
not address, though, are direct console_lock() calls. a driver
or an IRQ handler still can do

	if (console_trylock())
		console_unlock();     -> loop

that is scheduled to be addressed in the future.


> > I do have same problems with pintk (lockups, stalls, etc.)
> > and even more.
> 
> OK, but given that the bugs are fixed as they're reported, the only
> issue seems to be that some people think the fix is incomplete and
> Andrew is sitting on it because he's unsure if the patches actually
> solve the problem (or even if we have a problem).
> 
> The only comments from him I can find are in Jan's series:
> 
> http://thread.gmane.org/gmane.linux.kernel/1619692
> 
> The concern seems to be "prink is fragile you look to be making it
> differently fragile, how is that of benefit".
>
> So the problem is there's no overriding need driving this and it's
> blocked by "vague concerns" about fragility.  Is there a process
> problem that there's no effective way to move these patches forward
> without finding an overriding need or addressing the concerns?

later comments:
http://marc.info/?l=linux-kernel&m=145981032029352

> The concern seems to be "prink is fragile you look to be making it
> differently fragile, how is that of benefit".

well, yes, more or less, that seems to be the concern. probably,
there is no agreement that the patch set is moving in the right
direction (from implementation POV) in the first place.

> > well, I agree that it doesn't make it impossible to read the logs.
> > how often does it happen... on my laptop sometimes KERN_CONT lines
> > are not always really continuous. so I observe it, in some sense.
> 
> OK, so it's unsightly but not necessarily a problem for reading the
> logs.  Again, this means we have no overriding need to fix it.

well, both agree and disagree. once you have cont lines from, say, 3
CPUs mixed in peculiar ways reading the logs is not so simple any longer.
what may be would help here (if `fixing' cont lines is not an option)
is CPU number attached to every line.

for example, this

[12.2324] 0xffff8888
[12.2324] 0xc3234898
[12.2324] 0x00000002
[12.2324] 0xffff1233
[12.2325] 0x00000113
[12.2325] 0xc3248764

becomes this

[0][12.2324] 0xffff8888
[0][12.2324] 0xc3234898
[1][12.2324] 0x00000002
[2][12.2324] 0xffff1233
[2][12.2325] 0x00000113
[0][12.2325] 0xc3248764

just an idea.

	-ss
