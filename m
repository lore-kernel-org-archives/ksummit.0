Return-Path: <fweisbec@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ECC40899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 14:52:09 +0000 (UTC)
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5538D13F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 14:52:09 +0000 (UTC)
Received: by wicja10 with SMTP id ja10so116280082wic.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 07:52:08 -0700 (PDT)
Date: Wed, 12 Aug 2015 16:52:00 +0200
From: Frederic Weisbecker <fweisbec@gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20150812145158.GF21542@lerouge>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20150811183312.GE3895@linux.vnet.ibm.com>
	<CALCETrW6GHgTBw5nU9pKoXcGUCBg8jUBFeUEcFBPCYqhgLJdyg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrW6GHgTBw5nU9pKoXcGUCBg8jUBFeUEcFBPCYqhgLJdyg@mail.gmail.com>
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

On Tue, Aug 11, 2015 at 12:07:54PM -0700, Andy Lutomirski wrote:
> On Tue, Aug 11, 2015 at 11:33 AM, Paul E. McKenney
> <paulmck@linux.vnet.ibm.com> wrote:
> > On Tue, Aug 11, 2015 at 10:49:36AM -0700, Andy Lutomirski wrote:
> >> This is a bit late, but here goes anyway.
> >>
> >> Having played with the x86 context tracking hooks for awhile, I think
> >> it would be nice if core code that needs to be aware of CPU context
> >> (kernel, user, idle, guest, etc) could come up with single,
> >> comprehensible, easily validated set of hooks that arch code is
> >> supposed to call.
> >>
> >> Currently we have:
> >>
> >>  - RCU hooks, which come in a wide variety to notify about IRQs, NMIs, etc.
> >
> > Something about people yelling at me for waking up idle CPUs, thus
> > degrading their battery lifetimes.  ;-)
> >
> >>  - Context tracking hooks.  Only used by some arches.  Calling these
> >> calls the RCU hooks for you in most cases.  They have weird
> >> interactions with interrupts and they're slow.
> >
> > Combining these would be good, but there are subtleties.  For example,
> > some arches don't have context tracking, but RCU still needs to correctly
> > identify idle CPUs without in any way interrupting or awakening that CPU.
> > It would be good to make this faster, but it does have to work.
> 
> Could we maybe have one set of old RCU-only (no context tracking)
> callbacks and a completely separate set of callbacks for arches that
> support full context tracking?  The implementation of the latter would
> presumably call into RCU.

That's already what we do I think.

rcu_idle_enter()/rcu_idle_exit() are the old RCU-only stuffs and the rest
(rcu_user_exit()/enter()) uses context tracking.

> 
> >> may_i_turn_off_ticks_right_now()
> >
> > This is RCU if CONFIG_RCU_FAST_NO_HZ=n.
> >
> >> or, better yet:
> >> i_am_turning_off_ticks_right_now_and_register_your_own_darned_hrtimer_if_thats_a_problem()
> >
> > This is RCU if CONFIG_RCU_FAST_NO_HZ=y.  It would not be difficult to
> > make RCU do this if CONFIG_RCU_FAST_NO_HZ=n as well, but doing so would
> > increase to/from idle overhead.
> 
> If things actually end up using hrtimers, we might also want
> get_off_my_lawn() aka "isolate this cpu now and try to do all the
> deferred stuff right now and kill off those hrtimers".

Yeah that's what we are trying to do. But hrtimers aren't special here,
they are noise just like any other.

> 
> Rik is (was?) trying to make some housekeeper CPU probe other CPUs'
> state to eliminate the need for exact vtime accounting and thus speed
> up transitions to/from user or idle.

Only user. And that's only about vtime. RCU still needs to be handled
locally.

> It would be really neat if we
> could simultaneously have quick idle/user transitions *and* avoid
> deferred per-cpu work interrupting idle/user mode.

I think that's the goal. If we eventually offline the vtime accounting,
all that remains is RCU hooks on user/kernel transitions.
