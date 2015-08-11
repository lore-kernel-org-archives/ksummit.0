Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D85EC892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 21:50:34 +0000 (UTC)
Received: from e32.co.us.ibm.com (e32.co.us.ibm.com [32.97.110.150])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 674F6145
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 21:50:34 +0000 (UTC)
Received: from /spool/local
	by e32.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Tue, 11 Aug 2015 15:50:34 -0600
Received: from b03cxnp08025.gho.boulder.ibm.com
	(b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
	by d03dlp02.boulder.ibm.com (Postfix) with ESMTP id 7F8A13E4004E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 15:50:31 -0600 (MDT)
Received: from d03av04.boulder.ibm.com (d03av04.boulder.ibm.com [9.17.195.170])
	by b03cxnp08025.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id t7BLnZld59113512
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 14:49:35 -0700
Received: from d03av04.boulder.ibm.com (loopback [127.0.0.1])
	by d03av04.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id t7BLoU61013549 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 15:50:31 -0600
Date: Tue, 11 Aug 2015 14:50:29 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20150811215029.GI3895@linux.vnet.ibm.com>
Reply-To: paulmck@linux.vnet.ibm.com
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20150811184258.GB30479@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150811184258.GB30479@wotan.suse.de>
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

On Tue, Aug 11, 2015 at 08:42:58PM +0200, Luis R. Rodriguez wrote:
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
> 
> Can all this information be generalized with some basic core hooks
> or could some of this contextual informatioin typically vary depending
> on the sequence we are in ? It sounds like its the later and that's
> the issue ?

Not sure exactly what you are suggesting, but given that many of these
need to be placed in fastpaths, I am not at all excited about having to
put switch statements in each of them.

> Reason I ask is I've been working on a slightly different series of arch
> problems lately but its gotten me wondering about the possibility over adding a
> shared layer of hooks that some arch init code could use to relay back
> information about some other contextual information (in my case yielding
> execution in some paravirtualized scenerios, in my case I only need this during
> init sequences though). My reasoning for considering this didn't seem
> sufficient to add yet-another-layer or boilet-plate code for arch init sequence
> code but if there is a slew of other meta data contextual information which we
> could use in arch code perhaps this might make more sense then. This of course
> only makes sense for your use case if things really vary depending on the
> sequence reaching out to check for any of the above. It would not need to be
> tied down to init sequences alone, the way this could work for instance could
> be for certain critial code to feed meta data over contextual information which
> needs to be vetted which we currently have sloppy, or difficult waays of
> retrieving. Then the onus would be for all of us to vet each critial section
> carefully and to identify clearly all required contextual information.

However, switch statements would probably be just fine for boot-time-only
code.

							Thanx, Paul
