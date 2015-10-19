Return-Path: <fweisbec@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6CBF067
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 14:14:10 +0000 (UTC)
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E4F42EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 14:14:09 +0000 (UTC)
Received: by wicll6 with SMTP id ll6so7922881wic.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 07:14:08 -0700 (PDT)
Date: Mon, 19 Oct 2015 16:14:06 +0200
From: Frederic Weisbecker <fweisbec@gmail.com>
To: Theodore Ts'o <tytso@mit.edu>,
	"Paul E. McKenney" <paulmck@linux.vnet.ibm.com>,
	Andy Lutomirski <luto@amacapital.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Christoph Lameter <cl@linux.com>, Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>, "H. Peter Anvin" <hpa@zytor.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Chris Metcalf <cmetcalf@ezchip.com>, Rik van Riel <riel@redhat.com>
Message-ID: <20151019141404.GB8952@lerouge>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
	<20151012184051.GB29127@thunk.org>
	<20151012204005.GI3910@linux.vnet.ibm.com>
	<20151016170256.GA1432@lerouge> <20151017194500.GC2678@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151017194500.GC2678@thunk.org>
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

On Sat, Oct 17, 2015 at 03:45:00PM -0400, Theodore Ts'o wrote:
> On Fri, Oct 16, 2015 at 07:02:58PM +0200, Frederic Weisbecker wrote:
> > On Mon, Oct 12, 2015 at 01:40:05PM -0700, Paul E. McKenney wrote:
> > > On Mon, Oct 12, 2015 at 02:40:51PM -0400, Theodore Ts'o wrote:
> > > > This thread had fairly intense discussion for two days, but then went dead.
> > > > 
> > > > Do folks think this is worth discussing at the kernel summit?
> > > 
> > > I am very interested in discussing this.  Of course, part of that
> > > interest is due to the direct involvement of RCU code.
> > 
> > Please don't talk about this without me. Context tracking is deeply involved
> > and I haven't been invited to kernel summit.
> 
> Are you going to be in Seoul for the Korea Linux Forum?  (KLF
> attendees are welcome to attend the dual-track technical sessions
> day.)

Neither :-)

But that's fine, I'm usually not useful speaking design face to face.
I need time and editor to stare at for hours before answering.

So I'll wait for email/patches to come and either ack or nack :-)

Thanks.
