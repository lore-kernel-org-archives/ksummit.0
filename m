Return-Path: <jiangshanlai@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E88BD4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 03:56:32 +0000 (UTC)
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7DA9E109
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 03:56:32 +0000 (UTC)
Received: by iojj196 with SMTP id j196so713298ioj.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 20:56:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
Date: Wed, 12 Aug 2015 11:56:31 +0800
Message-ID: <CAJhGHyCb4HQi_=rqhND0+tr3u_EyXBnY9zFgiHdpE1v00WxGQQ@mail.gmail.com>
From: Lai Jiangshan <jiangshanlai@gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset=UTF-8
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

On Wed, Aug 12, 2015 at 1:49 AM, Andy Lutomirski <luto@amacapital.net> wrote:
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

I am also interested by the topic. I hope we can find out a common
infrastructure to handle these callbacks. I am interested in
optimizing/simplifying the these callbacks of RCU as well.

Thanks,
Lai

> --Andy
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
