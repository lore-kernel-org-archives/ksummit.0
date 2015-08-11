Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3E79E26C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 18:33:20 +0000 (UTC)
Received: from e37.co.us.ibm.com (e37.co.us.ibm.com [32.97.110.158])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D0F49106
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 18:33:19 +0000 (UTC)
Received: from /spool/local
	by e37.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Tue, 11 Aug 2015 12:33:19 -0600
Received: from b03cxnp07028.gho.boulder.ibm.com
	(b03cxnp07028.gho.boulder.ibm.com [9.17.130.15])
	by d03dlp02.boulder.ibm.com (Postfix) with ESMTP id 947A43E40041
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 12:33:16 -0600 (MDT)
Received: from d03av04.boulder.ibm.com (d03av04.boulder.ibm.com [9.17.195.170])
	by b03cxnp07028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id t7BIUWtG38600808
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 11:30:32 -0700
Received: from d03av04.boulder.ibm.com (loopback [127.0.0.1])
	by d03av04.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id t7BIXDd6015385 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 12:33:16 -0600
Date: Tue, 11 Aug 2015 11:33:12 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20150811183312.GE3895@linux.vnet.ibm.com>
Reply-To: paulmck@linux.vnet.ibm.com
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

Something about people yelling at me for waking up idle CPUs, thus
degrading their battery lifetimes.  ;-)

>  - Context tracking hooks.  Only used by some arches.  Calling these
> calls the RCU hooks for you in most cases.  They have weird
> interactions with interrupts and they're slow.

Combining these would be good, but there are subtleties.  For example,
some arches don't have context tracking, but RCU still needs to correctly
identify idle CPUs without in any way interrupting or awakening that CPU.
It would be good to make this faster, but it does have to work.

>  - vtime.  Beats the heck out of me.
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

kernel_mode_nonidle_to_idle()
kernel_mode_idle_to_nonidle()

> may_i_turn_off_ticks_right_now()

This is RCU if CONFIG_RCU_FAST_NO_HZ=n.

> or, better yet:
> i_am_turning_off_ticks_right_now_and_register_your_own_darned_hrtimer_if_thats_a_problem()

This is RCU if CONFIG_RCU_FAST_NO_HZ=y.  It would not be difficult to
make RCU do this if CONFIG_RCU_FAST_NO_HZ=n as well, but doing so would
increase to/from idle overhead.

> Some arches may need:
> 
> i_am_lame_and_forgot_my_previous_context()
> 
> x86 will soon (4.3 or 4.4, depending on how my syscall cleanup goes)
> no longer need that.
> 
> Paul says that some arches need something that goes straight from IRQ
> to user mode (?) -- sigh.

Straight from IRQ to process-level kernel mode.  I ran into this in
late 2011, and clearly should have documented exactly what code was
doing this.  Something about invoking system calls from within the
kernel on some architectures.

Hey, if no architectures do this anymore, I could simplify RCU a bit!  ;-)

> etc.
> 
> It might make sense to get enough people who understand what's going
> on behind the scenes together to hash out the requirements.

Please count me in!

							Thanx, Paul
