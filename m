Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CB0B57AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 15:59:25 +0000 (UTC)
Received: from e36.co.us.ibm.com (e36.co.us.ibm.com [32.97.110.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7B3FD1AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 15:59:25 +0000 (UTC)
Received: from /spool/local
	by e36.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Wed, 12 Aug 2015 09:59:24 -0600
Received: from b03cxnp07029.gho.boulder.ibm.com
	(b03cxnp07029.gho.boulder.ibm.com [9.17.130.16])
	by d03dlp02.boulder.ibm.com (Postfix) with ESMTP id B9CC53E40062
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 09:59:22 -0600 (MDT)
Received: from d03av04.boulder.ibm.com (d03av04.boulder.ibm.com [9.17.195.170])
	by b03cxnp07029.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id t7CFxMNE46137564
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 08:59:22 -0700
Received: from d03av04.boulder.ibm.com (loopback [127.0.0.1])
	by d03av04.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id t7CFxKZZ013400 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 09:59:22 -0600
Date: Wed, 12 Aug 2015 08:59:19 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Frederic Weisbecker <fweisbec@gmail.com>
Message-ID: <20150812155919.GU3895@linux.vnet.ibm.com>
Reply-To: paulmck@linux.vnet.ibm.com
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20150811183312.GE3895@linux.vnet.ibm.com>
	<20150812143819.GE21542@lerouge>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150812143819.GE21542@lerouge>
Cc: linux-arch@vger.kernel.org, "ksummit-discuss@lists.linuxfoundation.org"
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

On Wed, Aug 12, 2015 at 04:38:21PM +0200, Frederic Weisbecker wrote:
> On Tue, Aug 11, 2015 at 11:33:12AM -0700, Paul E. McKenney wrote:
> > On Tue, Aug 11, 2015 at 10:49:36AM -0700, Andy Lutomirski wrote:
> > > Some arches may need:
> > > 
> > > i_am_lame_and_forgot_my_previous_context()
> > > 
> > > x86 will soon (4.3 or 4.4, depending on how my syscall cleanup goes)
> > > no longer need that.
> > > 
> > > Paul says that some arches need something that goes straight from IRQ
> > > to user mode (?) -- sigh.
> > 
> > Straight from IRQ to process-level kernel mode.  I ran into this in
> > late 2011, and clearly should have documented exactly what code was
> > doing this.  Something about invoking system calls from within the
> > kernel on some architectures.
> > 
> > Hey, if no architectures do this anymore, I could simplify RCU a bit!  ;-)
> 
> That issue has always been a bit foggy to me :-)
> 
> We never really stated what exactly the issue was. Just performing syscalls
> from kernel mode shouldn't fiddle with the dynticks count.
> 
> IIUC, the issue was that some IRQs triggered and never returned. But we
> certainly can't remove the safety code without clearly identifying the
> issue...

This was not a theoretical problem -- there were real failures.

But yes, the safety code is there and seems to work OK, so I do need
confirmation of a change before removing it.  I do recall someone
arguing that the half-interrupts should go away, but I never did hear
that they really did go away.

Adding linux-arch in the hope that someone can say for sure.

							Thanx, Paul
