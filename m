Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7A4993EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Oct 2015 18:41:09 +0000 (UTC)
Date: Mon, 12 Oct 2015 14:40:51 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20151012184051.GB29127@thunk.org>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Chris Metcalf <cmetcalf@ezchip.com>,
	Christoph Lameter <cl@linux.com>, Ingo Molnar <mingo@kernel.org>
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

This thread had fairly intense discussion for two days, but then went dead.

Do folks think this is worth discussing at the kernel summit?

thanks,

						- Ted



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
> 
>  - Context tracking hooks.  Only used by some arches.  Calling these
> calls the RCU hooks for you in most cases.  They have weird
> interactions with interrupts and they're slow.
> 
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
> may_i_turn_off_ticks_right_now()
> or, better yet:
> i_am_turning_off_ticks_right_now_and_register_your_own_darned_hrtimer_if_thats_a_problem()
> 
> Some arches may need:
> 
> i_am_lame_and_forgot_my_previous_context()
> 
> x86 will soon (4.3 or 4.4, depending on how my syscall cleanup goes)
> no longer need that.
> 
> Paul says that some arches need something that goes straight from IRQ
> to user mode (?) -- sigh.
> 
> etc.
> 
> It might make sense to get enough people who understand what's going
> on behind the scenes together to hash out the requirements.
> 
> --Andy
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
