Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 09D7C409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 18:43:03 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 47D00132
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 18:43:02 +0000 (UTC)
Date: Tue, 11 Aug 2015 20:42:58 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20150811184258.GB30479@wotan.suse.de>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
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

Can all this information be generalized with some basic core hooks
or could some of this contextual informatioin typically vary depending
on the sequence we are in ? It sounds like its the later and that's
the issue ?

Reason I ask is I've been working on a slightly different series of arch
problems lately but its gotten me wondering about the possibility over adding a
shared layer of hooks that some arch init code could use to relay back
information about some other contextual information (in my case yielding
execution in some paravirtualized scenerios, in my case I only need this during
init sequences though). My reasoning for considering this didn't seem
sufficient to add yet-another-layer or boilet-plate code for arch init sequence
code but if there is a slew of other meta data contextual information which we
could use in arch code perhaps this might make more sense then. This of course
only makes sense for your use case if things really vary depending on the
sequence reaching out to check for any of the above. It would not need to be
tied down to init sequences alone, the way this could work for instance could
be for certain critial code to feed meta data over contextual information which
needs to be vetted which we currently have sloppy, or difficult waays of
retrieving. Then the onus would be for all of us to vet each critial section
carefully and to identify clearly all required contextual information.

  Luis
