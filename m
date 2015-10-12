Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D3255721
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Oct 2015 20:40:00 +0000 (UTC)
Received: from e32.co.us.ibm.com (e32.co.us.ibm.com [32.97.110.150])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 221D2117
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Oct 2015 20:40:00 +0000 (UTC)
Received: from localhost
	by e32.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Mon, 12 Oct 2015 14:39:59 -0600
Received: from b03cxnp08028.gho.boulder.ibm.com
	(b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id 1E3C51FF004C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Oct 2015 14:28:10 -0600 (MDT)
Received: from d03av05.boulder.ibm.com (d03av05.boulder.ibm.com [9.17.195.85])
	by b03cxnp08028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id t9CKcfF612321258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Oct 2015 13:38:41 -0700
Received: from d03av05.boulder.ibm.com (localhost [127.0.0.1])
	by d03av05.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id t9CKduv9016038 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Oct 2015 14:39:57 -0600
Date: Mon, 12 Oct 2015 13:40:05 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: "Theodore Ts'o" <tytso@mit.edu>, Andy Lutomirski <luto@amacapital.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Christoph Lameter <cl@linux.com>,
	=?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec@gmail.com>,
	Ingo Molnar <mingo@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	"H. Peter Anvin" <hpa@zytor.com>, Peter Zijlstra <peterz@infradead.org>,
	Chris Metcalf <cmetcalf@ezchip.com>, Rik van Riel <riel@redhat.com>
Message-ID: <20151012204005.GI3910@linux.vnet.ibm.com>
Reply-To: paulmck@linux.vnet.ibm.com
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20151012184051.GB29127@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151012184051.GB29127@thunk.org>
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

On Mon, Oct 12, 2015 at 02:40:51PM -0400, Theodore Ts'o wrote:
> This thread had fairly intense discussion for two days, but then went dead.
> 
> Do folks think this is worth discussing at the kernel summit?

I am very interested in discussing this.  Of course, part of that
interest is due to the direct involvement of RCU code.

							Thanx, Paul

> thanks,
> 
> 						- Ted
> 
> 
> 
> On Tue, Aug 11, 2015 at 10:49:36AM -0700, Andy Lutomirski wrote:
> > This is a bit late, but here goes anyway.
> > 
> > Having played with the x86 context tracking hooks for awhile, I think
> > it would be nice if core code that needs to be aware of CPU context
> > (kernel, user, idle, guest, etc) could come up with single,
> > comprehensible, easily validated set of hooks that arch code is
> > supposed to call.
> > 
> > Currently we have:
> > 
> >  - RCU hooks, which come in a wide variety to notify about IRQs, NMIs, etc.
> > 
> >  - Context tracking hooks.  Only used by some arches.  Calling these
> > calls the RCU hooks for you in most cases.  They have weird
> > interactions with interrupts and they're slow.
> > 
> >  - vtime.  Beats the heck out of me.
> > 
> >  - Whatever deferred things Christoph keeps reminding us about.
> > 
> > Honestly, I don't fully understand what all these hooks are supposed
> > to do, nor do I care all that much.  From my perspective, the code
> > code should be able to do whatever it wants and rely on appropriate
> > notifications from arch code.  It would be great if we could come up
> > with something straightforward that covers everything.  For example:
> > 
> > user_mode_to_kernel_mode()
> > kernel_mode_to_user_mode()
> > kernel_mode_to_guest_mode()
> > in_a_periodic_tick()
> > starting_nmi()
> > ending_nmi()
> > may_i_turn_off_ticks_right_now()
> > or, better yet:
> > i_am_turning_off_ticks_right_now_and_register_your_own_darned_hrtimer_if_thats_a_problem()
> > 
> > Some arches may need:
> > 
> > i_am_lame_and_forgot_my_previous_context()
> > 
> > x86 will soon (4.3 or 4.4, depending on how my syscall cleanup goes)
> > no longer need that.
> > 
> > Paul says that some arches need something that goes straight from IRQ
> > to user mode (?) -- sigh.
> > 
> > etc.
> > 
> > It might make sense to get enough people who understand what's going
> > on behind the scenes together to hash out the requirements.
> > 
> > --Andy
> > _______________________________________________
> > Ksummit-discuss mailing list
> > Ksummit-discuss@lists.linuxfoundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
