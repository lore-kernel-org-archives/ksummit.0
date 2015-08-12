Return-Path: <fweisbec@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6F9CB89F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 14:38:31 +0000 (UTC)
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E9B67EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 14:38:30 +0000 (UTC)
Received: by wicja10 with SMTP id ja10so115799412wic.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 07:38:29 -0700 (PDT)
Date: Wed, 12 Aug 2015 16:38:21 +0200
From: Frederic Weisbecker <fweisbec@gmail.com>
To: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
Message-ID: <20150812143819.GE21542@lerouge>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20150811183312.GE3895@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150811183312.GE3895@linux.vnet.ibm.com>
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

On Tue, Aug 11, 2015 at 11:33:12AM -0700, Paul E. McKenney wrote:
> On Tue, Aug 11, 2015 at 10:49:36AM -0700, Andy Lutomirski wrote:
> > Some arches may need:
> > 
> > i_am_lame_and_forgot_my_previous_context()
> > 
> > x86 will soon (4.3 or 4.4, depending on how my syscall cleanup goes)
> > no longer need that.
> > 
> > Paul says that some arches need something that goes straight from IRQ
> > to user mode (?) -- sigh.
> 
> Straight from IRQ to process-level kernel mode.  I ran into this in
> late 2011, and clearly should have documented exactly what code was
> doing this.  Something about invoking system calls from within the
> kernel on some architectures.
> 
> Hey, if no architectures do this anymore, I could simplify RCU a bit!  ;-)

That issue has always been a bit foggy to me :-)

We never really stated what exactly the issue was. Just performing syscalls
from kernel mode shouldn't fiddle with the dynticks count.

IIUC, the issue was that some IRQs triggered and never returned. But we
certainly can't remove the safety code without clearly identifying the
issue...
