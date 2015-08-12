Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 433408D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 16:03:50 +0000 (UTC)
Received: from e38.co.us.ibm.com (e38.co.us.ibm.com [32.97.110.159])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CC15F1E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 16:03:49 +0000 (UTC)
Received: from /spool/local
	by e38.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Wed, 12 Aug 2015 10:03:48 -0600
Received: from b03cxnp08025.gho.boulder.ibm.com
	(b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
	by d03dlp03.boulder.ibm.com (Postfix) with ESMTP id B89F719D8042
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 09:54:44 -0600 (MDT)
Received: from d03av04.boulder.ibm.com (d03av04.boulder.ibm.com [9.17.195.170])
	by b03cxnp08025.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id t7CG2pNC56623126
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 09:02:51 -0700
Received: from d03av04.boulder.ibm.com (loopback [127.0.0.1])
	by d03av04.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id t7CG3iDJ015543 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 10:03:46 -0600
Date: Wed, 12 Aug 2015 09:03:42 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Frederic Weisbecker <fweisbec@gmail.com>
Message-ID: <20150812160342.GV3895@linux.vnet.ibm.com>
Reply-To: paulmck@linux.vnet.ibm.com
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20150811184258.GB30479@wotan.suse.de>
	<20150812142732.GD21542@lerouge>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150812142732.GD21542@lerouge>
Cc: Juergen Gross <jgross@suse.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
	Peter Zijlstra <peterz@infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Chris Metcalf <cmetcalf@ezchip.com>, Jan Beulich <JBeulich@suse.com>,
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

On Wed, Aug 12, 2015 at 04:27:34PM +0200, Frederic Weisbecker wrote:
> On Tue, Aug 11, 2015 at 08:42:58PM +0200, Luis R. Rodriguez wrote:
> > On Tue, Aug 11, 2015 at 10:49:36AM -0700, Andy Lutomirski wrote:
> > > This is a bit late, but here goes anyway.
> > > 
> > > Having played with the x86 context tracking hooks for awhile, I think
> > > it would be nice if core code that needs to be aware of CPU context
> > > (kernel, user, idle, guest, etc) could come up with single,
> > > comprehensible, easily validated set of hooks that arch code is
> > > supposed to call.
> > > 
> > > Currently we have:
> > > 
> > >  - RCU hooks, which come in a wide variety to notify about IRQs, NMIs, etc.
> > > 
> > >  - Context tracking hooks.  Only used by some arches.  Calling these
> > > calls the RCU hooks for you in most cases.  They have weird
> > > interactions with interrupts and they're slow.
> > > 
> > >  - vtime.  Beats the heck out of me.
> > > 
> > >  - Whatever deferred things Christoph keeps reminding us about.
> > > 
> > > Honestly, I don't fully understand what all these hooks are supposed
> > > to do, nor do I care all that much.  From my perspective, the code
> > > code should be able to do whatever it wants and rely on appropriate
> > > notifications from arch code.  It would be great if we could come up
> > > with something straightforward that covers everything.  For example:
> > > 
> > > user_mode_to_kernel_mode()
> > > kernel_mode_to_user_mode()
> > > kernel_mode_to_guest_mode()
> > > in_a_periodic_tick()
> > > starting_nmi()
> > > ending_nmi()
> > > may_i_turn_off_ticks_right_now()
> > > or, better yet:
> > > i_am_turning_off_ticks_right_now_and_register_your_own_darned_hrtimer_if_thats_a_problem()
> > >
> > > Some arches may need:
> > > 
> > > i_am_lame_and_forgot_my_previous_context()
> > 
> > Can all this information be generalized with some basic core hooks
> > or could some of this contextual informatioin typically vary depending
> > on the sequence we are in ? It sounds like its the later and that's
> > the issue ?
> 
> That's what we do with context tracking. It tracks the context (user/kernel)
> and stores these informations. And indeed the contextual informations can vary
> depending for example if an exception triggered in userspace or kernelspace.

Another question of interest is "Can things be arranged so that RCU uses
the context-tracking information directly in place of rcu_dynticks?"
In theory, the answer is clearly "yes", but the reason that RCU's
accounting is heavyweight is the need to get precise state readout on
other CPUs.  So it is quite possible that making RCU directly use the
context-tracking information will make that tracking slower and more
complex, so that the overall effect will be zero net improvement.

But it does seem worth a look.

							Thanx, Paul
