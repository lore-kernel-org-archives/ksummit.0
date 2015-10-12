Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 01901722
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Oct 2015 19:55:58 +0000 (UTC)
Date: Mon, 12 Oct 2015 21:55:17 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Theodore Ts'o <tytso@mit.edu>
In-Reply-To: <20151012184051.GB29127@thunk.org>
Message-ID: <alpine.DEB.2.11.1510122154010.6097@nanos>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20151012184051.GB29127@thunk.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Mon, 12 Oct 2015, Theodore Ts'o wrote:

> This thread had fairly intense discussion for two days, but then went dead.
> 
> Do folks think this is worth discussing at the kernel summit?

We can do it the same way as hch proposed for the irq affinity
stuff. Just a short summary of the issue and then find a hallway slot
with the involved folks.

Thanks,

	tglx
