Return-Path: <fweisbec@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F097987A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 14:20:52 +0000 (UTC)
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8FC7719E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 14:20:51 +0000 (UTC)
Received: by wicja10 with SMTP id ja10so29662028wic.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 07:20:50 -0700 (PDT)
Date: Wed, 12 Aug 2015 16:20:43 +0200
From: Frederic Weisbecker <fweisbec@gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20150812142041.GC21542@lerouge>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Ingo Molnar <mingo@kernel.org>, Chris Metcalf <cmetcalf@ezchip.com>,
	Christoph Lameter <cl@linux.com>
Subject: Re: [Ksummit-discuss] [BELATED CORE TOPIC] context tracking / nohz
	/ RCU state
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 11, 2015 at 10:49:36AM -0700, Andy Lutomirski wrote:
> This is a bit late, but here goes anyway.
> 
> Having played with the x86 context tracking hooks for awhile, I think
> it would be nice if core code that needs to be aware of CPU context
> (kernel, user, idle, guest, etc) could come up with single,
> comprehensible, easily validated set of hooks that arch code is
> supposed to call.
> 
> Currently we have:
> 
>  - RCU hooks, which come in a wide variety to notify about IRQs, NMIs, etc.

Given how special is RCU, I wonder if it's a good idea to make it use some general
purpose state tracking such as preempt_count. Such general purpose states are meant
to be per CPU and only used locally whereas RCU needs remote access with ordering.

Besides, RCU doesn't use them in all configs.

I'm sure we can do it but I'm not sure we'll be proud of the result.

> 
>  - Context tracking hooks.  Only used by some arches.  Calling these
> calls the RCU hooks for you in most cases.  They have weird
> interactions with interrupts and they're slow.

Well, considering their interaction with irqs, I don't think it's so
bad. The irqs hooks simply are in generic code.

>  - vtime.  Beats the heck out of me.

We are currently rethinking it. Not sure where we'll go.

> 
>  - Whatever deferred things Christoph keeps reminding us about.
> 
> Honestly, I don't fully understand what all these hooks are supposed
> to do, nor do I care all that much.  From my perspective, the code
> code should be able to do whatever it wants and rely on appropriate
> notifications from arch code.  It would be great if we could come up
> with something straightforward that covers everything.  For example:
> 
> user_mode_to_kernel_mode()
> kernel_mode_to_user_mode()
> kernel_mode_to_guest_mode()
> in_a_periodic_tick()
> starting_nmi()
> ending_nmi()
> may_i_turn_off_ticks_right_now()

We have all these things already. But many of them are handled by the core code
already: NMIs, IRQS, guests, ticks. Archs shouldn't care about these.

Now probably all the preempt count stuff should belong to some global context tracking
subsystem. But since most of these calls are inlines...

> or, better yet:
> i_am_turning_off_ticks_right_now_and_register_your_own_darned_hrtimer_if_thats_a_problem()
> 
> Some arches may need:
> 
> i_am_lame_and_forgot_my_previous_context()

I'm still not sure it's a good idea to mix up hard and soft tracking.

> x86 will soon (4.3 or 4.4, depending on how my syscall cleanup goes)
> no longer need that.

Syscalls should be fine with if we have only one call to user_exit() and
user_enter(). Assuming signals and rescheduling are handled in between.
