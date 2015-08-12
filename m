Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D43A8FF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 13:38:08 +0000 (UTC)
Received: from e37.co.us.ibm.com (e37.co.us.ibm.com [32.97.110.158])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5D00212F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 13:38:08 +0000 (UTC)
Received: from /spool/local
	by e37.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Wed, 12 Aug 2015 07:38:07 -0600
Received: from b03cxnp08025.gho.boulder.ibm.com
	(b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id E4F6C1FF0046
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 07:29:14 -0600 (MDT)
Received: from d03av04.boulder.ibm.com (d03av04.boulder.ibm.com [9.17.195.170])
	by b03cxnp08025.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id t7CDb8ej45678714
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 06:37:08 -0700
Received: from d03av04.boulder.ibm.com (loopback [127.0.0.1])
	by d03av04.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id t7CDc35A028060 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 07:38:05 -0600
Date: Wed, 12 Aug 2015 06:38:02 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20150812133802.GP3895@linux.vnet.ibm.com>
Reply-To: paulmck@linux.vnet.ibm.com
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20150811183312.GE3895@linux.vnet.ibm.com>
	<CALCETrW6GHgTBw5nU9pKoXcGUCBg8jUBFeUEcFBPCYqhgLJdyg@mail.gmail.com>
	<20150811214729.GH3895@linux.vnet.ibm.com>
	<CALCETrXVmggCgaS+3mADXQgvXy-5fmU=P7KQpAQK0N9J7h5EPw@mail.gmail.com>
	<20150812005117.GJ3895@linux.vnet.ibm.com>
	<CALCETrVn1ZcrPKr_1bbp1X08sJQN-NLzi3cXm-TYo8+ZBKmd7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrVn1ZcrPKr_1bbp1X08sJQN-NLzi3cXm-TYo8+ZBKmd7Q@mail.gmail.com>
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

On Tue, Aug 11, 2015 at 06:16:01PM -0700, Andy Lutomirski wrote:
> On Tue, Aug 11, 2015 at 5:51 PM, Paul E. McKenney
> <paulmck@linux.vnet.ibm.com> wrote:
> > On Tue, Aug 11, 2015 at 02:52:59PM -0700, Andy Lutomirski wrote:
> >> On Tue, Aug 11, 2015 at 2:47 PM, Paul E. McKenney
> >> <paulmck@linux.vnet.ibm.com> wrote:
> >> > On Tue, Aug 11, 2015 at 12:07:54PM -0700, Andy Lutomirski wrote:
> >> >> On Tue, Aug 11, 2015 at 11:33 AM, Paul E. McKenney
> >> >> <paulmck@linux.vnet.ibm.com> wrote:
> >> >> > On Tue, Aug 11, 2015 at 10:49:36AM -0700, Andy Lutomirski wrote:
> >> >> >> This is a bit late, but here goes anyway.
> >> >> >>
> >> >> >> Having played with the x86 context tracking hooks for awhile, I think
> >> >> >> it would be nice if core code that needs to be aware of CPU context
> >> >> >> (kernel, user, idle, guest, etc) could come up with single,
> >> >> >> comprehensible, easily validated set of hooks that arch code is
> >> >> >> supposed to call.
> >> >> >>
> >> >> >> Currently we have:
> >> >> >>
> >> >> >>  - RCU hooks, which come in a wide variety to notify about IRQs, NMIs, etc.
> >> >> >
> >> >> > Something about people yelling at me for waking up idle CPUs, thus
> >> >> > degrading their battery lifetimes.  ;-)
> >> >> >
> >> >> >>  - Context tracking hooks.  Only used by some arches.  Calling these
> >> >> >> calls the RCU hooks for you in most cases.  They have weird
> >> >> >> interactions with interrupts and they're slow.
> >> >> >
> >> >> > Combining these would be good, but there are subtleties.  For example,
> >> >> > some arches don't have context tracking, but RCU still needs to correctly
> >> >> > identify idle CPUs without in any way interrupting or awakening that CPU.
> >> >> > It would be good to make this faster, but it does have to work.
> >> >>
> >> >> Could we maybe have one set of old RCU-only (no context tracking)
> >> >> callbacks and a completely separate set of callbacks for arches that
> >> >> support full context tracking?  The implementation of the latter would
> >> >> presumably call into RCU.
> >> >
> >> > It should be possible for RCU to use context tracking if it is available
> >> > and to have RCU maintain its own state otherwise, if that is what you
> >> > are getting at.  Assuming that the decision is global and made at either
> >> > build or boot time, anyway.  Having some CPUs tracking context and others
> >> > not sounds like an invitation for subtle bugs.
> >>
> >> I think that, if this happens, the decision should be made at build
> >> time, per arch, and not be configurable.  If x86_64 uses context
> >> tracking, then I think x86_64 shouldn't need additional RCU callbacks,
> >> assuming that context tracking is comprehensive enough for RCU's
> >> purposes.
> >
> > If by "shouldn't need additional RCU callbacks" you mean that x86_64
> > shouldn't need to call the existing rcu_user_enter() and rcu_user_exit()
> > functions, I agree.  Ditto for rcu_irq_enter(), rcu_irq_exit(),
> > rcu_nmi_enter(), rcu_nmi_exit(), I would guess.  But would be necessary
> > to invoke rcu_idle_enter() and rcu_idle_exit(), especially for
> > CONFIG_NO_HZ_FULL_SYSIDLE=y kernels.
> 
> Except that something wants vtime for idle, too, so maybe just
> kernel_to_idle().  On the other hand, the idle loop is already fully
> stocked with vtime stuff.

But vtime can work with approximation, and RCU cannot.  Also vtime
needs to measure time, and RCU needs to count transitions.  So I am
having some difficulty seeing the benefit of unifying vtime's and RCU's
idle entry/exit mechanism.

Now, if you are instead arguing for co-location of these mechanisms,
that might well be a different issue.

							Thanx, Paul
