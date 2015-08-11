Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 665FE9B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 19:08:15 +0000 (UTC)
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5109315E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 19:08:14 +0000 (UTC)
Received: by oio137 with SMTP id 137so108200817oio.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 12:08:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150811183312.GE3895@linux.vnet.ibm.com>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20150811183312.GE3895@linux.vnet.ibm.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 11 Aug 2015 12:07:54 -0700
Message-ID: <CALCETrW6GHgTBw5nU9pKoXcGUCBg8jUBFeUEcFBPCYqhgLJdyg@mail.gmail.com>
To: Paul McKenney <paulmck@linux.vnet.ibm.com>
Content-Type: text/plain; charset=UTF-8
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

On Tue, Aug 11, 2015 at 11:33 AM, Paul E. McKenney
<paulmck@linux.vnet.ibm.com> wrote:
> On Tue, Aug 11, 2015 at 10:49:36AM -0700, Andy Lutomirski wrote:
>> This is a bit late, but here goes anyway.
>>
>> Having played with the x86 context tracking hooks for awhile, I think
>> it would be nice if core code that needs to be aware of CPU context
>> (kernel, user, idle, guest, etc) could come up with single,
>> comprehensible, easily validated set of hooks that arch code is
>> supposed to call.
>>
>> Currently we have:
>>
>>  - RCU hooks, which come in a wide variety to notify about IRQs, NMIs, etc.
>
> Something about people yelling at me for waking up idle CPUs, thus
> degrading their battery lifetimes.  ;-)
>
>>  - Context tracking hooks.  Only used by some arches.  Calling these
>> calls the RCU hooks for you in most cases.  They have weird
>> interactions with interrupts and they're slow.
>
> Combining these would be good, but there are subtleties.  For example,
> some arches don't have context tracking, but RCU still needs to correctly
> identify idle CPUs without in any way interrupting or awakening that CPU.
> It would be good to make this faster, but it does have to work.

Could we maybe have one set of old RCU-only (no context tracking)
callbacks and a completely separate set of callbacks for arches that
support full context tracking?  The implementation of the latter would
presumably call into RCU.

>> may_i_turn_off_ticks_right_now()
>
> This is RCU if CONFIG_RCU_FAST_NO_HZ=n.
>
>> or, better yet:
>> i_am_turning_off_ticks_right_now_and_register_your_own_darned_hrtimer_if_thats_a_problem()
>
> This is RCU if CONFIG_RCU_FAST_NO_HZ=y.  It would not be difficult to
> make RCU do this if CONFIG_RCU_FAST_NO_HZ=n as well, but doing so would
> increase to/from idle overhead.

If things actually end up using hrtimers, we might also want
get_off_my_lawn() aka "isolate this cpu now and try to do all the
deferred stuff right now and kill off those hrtimers".

Rik is (was?) trying to make some housekeeper CPU probe other CPUs'
state to eliminate the need for exact vtime accounting and thus speed
up transitions to/from user or idle.  It would be really neat if we
could simultaneously have quick idle/user transitions *and* avoid
deferred per-cpu work interrupting idle/user mode.

Chris Metcalf seems quite excited about the kernel staying far away
from his CPU once he's ready :)

>
>> Some arches may need:
>>
>> i_am_lame_and_forgot_my_previous_context()
>>
>> x86 will soon (4.3 or 4.4, depending on how my syscall cleanup goes)
>> no longer need that.
>>
>> Paul says that some arches need something that goes straight from IRQ
>> to user mode (?) -- sigh.
>
> Straight from IRQ to process-level kernel mode.  I ran into this in
> late 2011, and clearly should have documented exactly what code was
> doing this.  Something about invoking system calls from within the
> kernel on some architectures.
>
> Hey, if no architectures do this anymore, I could simplify RCU a bit!  ;-)

I wonder if whatever arches do this could do it in two steps: exit IRQ
and then enter normal kernel mode.

--Andy
