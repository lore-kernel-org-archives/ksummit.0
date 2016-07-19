Return-Path: <viresh.kumar@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E10384D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 03:56:27 +0000 (UTC)
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 36139151
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 03:56:27 +0000 (UTC)
Received: by mail-pa0-f42.google.com with SMTP id pp5so2575659pac.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Jul 2016 20:56:27 -0700 (PDT)
Date: Mon, 18 Jul 2016 20:56:25 -0700
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20160719035625.GA13704@ubuntu>
References: <20160719034717.GA24189@swordfish>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20160719034717.GA24189@swordfish>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	gregkh@linuxfoundation.org, Tejun Heo <tj@kernel.org>,
	Jiri Kosina <jkosina@suse.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

+Greg.

On 19-07-16, 12:47, Sergey Senozhatsky wrote:
> Hello,
> 
> Wondering if anyone will be interested in printk-related topics
> (or we can handle it in the mailing list).
> 
> What I have on my list is:
> 
> 
> - synchronous printk()
> 
> printk() prints messages from kernel printk buffer until the buffer
> is empty. When serial console is attached, printing is slow and thus
> other CPUs in the system have plenty of time to append new messages to
> the buffer while one CPU is printing. Thus the CPU can spend unbounded
> amount of time doing printing in console_unlock().  This is especially
> serious problem if the printk() calling console_unlock() was called with
> interrupts disabled, or from IRQ, or from spin_lock protected section
> (if the spinlock is contended), etc. etc. IOW, printk() is quite dangerous
> function to call in some cases, it can cause different types of lockups
> (soft, hard, spinlock), stalls and so on.
> 
> we have some progress on this side. printk() can offload printing from
> sensitive and unsafe contexts to a schedulable printk_kthread context (a
> special purpose printing kthread).
> but "The whole idea remains worrisome", per Andrew :)
> 
> 
> - synchronous console_unlock()
> 
> there are many places that need to lock and unlock console semaphore
> for purposes other than flushing the log_buf. apart from 'in-kernel'
> users (e.g. video, etc.) some of those console_lock/console_unlock
> are done by user-space apps in system calls. examples:
> 
> = open /dev/ttyX
> 
>   console_unlock()
>   ...
>   console_lock()
>   tty_open()
>   console_device()
>   chrdev_open()
>   SyS_open()
> 
> = cat /proc/consoles
> 
>    console_unlock()
>    c_stop()
>   ...
>    console_lock()
>    c_start()
>   seq_read()
>   proc_reg_read()
>   vfs_read()
>   SyS_read()
> 
> = and so on.
> 
> 
> so user-space apps can print kernel messages. which is not really nice,
> I think. I have a patch that makes console_unlock() async as well; but
> we still have console_lock() that is sync.
> 
> thus
> 
> 
> - console semaphore
> 
> not every console_lock() caller has an intention to modify console driver
> state, or console drivers list. so we probably can start distinguish READ
> console drivers list access and WRITE access.
> 
> 
> - KERN_CONT handling
> 
> the comment for KERN_CONT in include/linux/kern_levels.h suggests that
> 
>  /*
>   * Annotation for a "continued" line of log printout (only done after a
>   * line that had no enclosing \n). Only to be used by core/arch code
>   * during early bootup (a continued line is not SMP-safe otherwise).
>   */
>  #define KERN_CONT→      ""
> 
> the thing is that people want cont lines in SMP-mode, and people do
> use KERN_CONT in SMP mode. e.g. cgroups, ACPI, etc.
> 
> internally printk maintains a single cont buffer and, thus, there are
> numerous if-s and else-s to cope with the fact that it can be used in
> SMP-mode. so the question is -- is it the right time to make KERN_CONT
> SMP-safe?
> 
> may be we can move cont buffers into per-CPU and add a new API for
> cont printing -- pr_cont_begin()/pr_cont_end(). so the usage will be
> something like this:
> 
> +	pr_cont_begin();  /* preempt disable */
> 
> 	for (...)
> 		pr_cont("foo .... " .....);
> 
> +	pr_cont_end();    /* preempt enable */
> 
> 
> Petr Mladek has another idea:
> http://marc.info/?l=linux-kernel&m=146860197621876
> 
> 
> 
> 
> The list of potential attendees
> (not in any particular order, most likely incomplete)
> 
> Jan Kara
> Petr Mladek
> Andrew Morton
> Jiri Kosina
> Tejun Heo
> Hannes Reinecke
> Viresh Kumar
> Steven Rostedt
> Sergey Senozhatsky
> Greg KH
> 
> 	-ss

-- 
viresh
