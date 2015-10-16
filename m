Return-Path: <fweisbec@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82F3C90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 17:03:00 +0000 (UTC)
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 019FF16E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 17:02:59 +0000 (UTC)
Received: by wijq8 with SMTP id q8so20195894wij.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 10:02:58 -0700 (PDT)
Date: Fri, 16 Oct 2015 19:02:58 +0200
From: Frederic Weisbecker <fweisbec@gmail.com>
To: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
Message-ID: <20151016170256.GA1432@lerouge>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20151012184051.GB29127@thunk.org>
	<20151012204005.GI3910@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151012204005.GI3910@linux.vnet.ibm.com>
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

On Mon, Oct 12, 2015 at 01:40:05PM -0700, Paul E. McKenney wrote:
> On Mon, Oct 12, 2015 at 02:40:51PM -0400, Theodore Ts'o wrote:
> > This thread had fairly intense discussion for two days, but then went dead.
> > 
> > Do folks think this is worth discussing at the kernel summit?
> 
> I am very interested in discussing this.  Of course, part of that
> interest is due to the direct involvement of RCU code.

Please don't talk about this without me. Context tracking is deeply involved
and I haven't been invited to kernel summit.
