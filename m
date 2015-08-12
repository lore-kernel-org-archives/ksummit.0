Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3BD159C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 20:17:29 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 50E9E128
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 20:17:28 +0000 (UTC)
Date: Wed, 12 Aug 2015 22:17:24 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
Message-ID: <20150812201724.GE30479@wotan.suse.de>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20150811184258.GB30479@wotan.suse.de>
	<20150811215029.GI3895@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150811215029.GI3895@linux.vnet.ibm.com>
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

On Tue, Aug 11, 2015 at 02:50:29PM -0700, Paul E. McKenney wrote:
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
> Not sure exactly what you are suggesting, 

At this point I was not suggesting anything in particular but trying to verify
the type of problem and see if the contextual issues might be similar to the
contextual issues I have been looking into and see if the solutions that could
be drawn up for the above issues noted by Andy could be resused for the
problems I have been looking into.

In my case the issues come from the fact that paravirt hypervisors end up
intiializing Linux through an alternate init sequence and assumptions vary,
both by version of hypervisor and hypervisor type.  That and the fact that
we don't want to extend pv_ops further. pv_ops was designed to cope with
*multiple* hypervisors and let us end up with one binary, ie, it didn't
necessarily address required yielding by the OS for a slew of different
functionality.  There are different ad-hoc solutions to the yielding problem
today but they are all reactive, not proactive, and I'm looking for a proactive
solution.  Since we don't want to extend pv_ops even further I've been trying
to keep an open eye for similar types of further context-needing problems on
the kernel which could likely share a solution. If the above yielding issues
seems obscure, my apologies, I'll soon send something out to elaborate a bit
more on that which might help fill in context.

> but given that many of these
> need to be placed in fastpaths, I am not at all excited about having to
> put switch statements in each of them.

Sure.

> > Reason I ask is I've been working on a slightly different series of arch
> > problems lately but its gotten me wondering about the possibility over adding a
> > shared layer of hooks that some arch init code could use to relay back
> > information about some other contextual information (in my case yielding
> > execution in some paravirtualized scenerios, in my case I only need this during
> > init sequences though). My reasoning for considering this didn't seem
> > sufficient to add yet-another-layer or boilet-plate code for arch init sequence
> > code but if there is a slew of other meta data contextual information which we
> > could use in arch code perhaps this might make more sense then. This of course
> > only makes sense for your use case if things really vary depending on the
> > sequence reaching out to check for any of the above. It would not need to be
> > tied down to init sequences alone, the way this could work for instance could
> > be for certain critial code to feed meta data over contextual information which
> > needs to be vetted which we currently have sloppy, or difficult waays of
> > retrieving. Then the onus would be for all of us to vet each critial section
> > carefully and to identify clearly all required contextual information.

To answer your question above so far I only had two leading ideas on this, and
frankly its still fuzzy. One was to driver-tize critial sequences with hooks to
provide the required context. IMO this would be introducing too much overhead
unless there would be other users for extra context information other than for
paravirt yielding. Another idea is to override contextual information (perhaps
through CPU variable data) which would otherwise be looked at through other
means (perhaps a series of more complex branch checks on CPU variable data) or
would have some sort of defaults.  In the adhoc situations at random kernel run
times it seems for instance we end up using CPU variables to keep track of
certain context information, but if a path is known to have a static context,
can we introduce something to override that lookup / avoid that lookup ? For
this to work though the context would need to be known though at specific
points in time though.  For init sequences this seems likely for early init,
later on though its not clear to me how many areas like these would exist.

> However, switch statements would probably be just fine for boot-time-only
> code.

I'm actually all for avoiding these as well if possible though, and since we
have binary patching, and it seems run time binary patching could in theory
work too, I'd have hopes some switches / branches could be patched
out *iff* certain contextual information could be gauranteed for certain areas
of the kernel.

  Luis
