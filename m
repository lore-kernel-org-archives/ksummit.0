Return-Path: <mhiramat@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 60BEB943
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Sep 2016 03:25:00 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 14A191DA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Sep 2016 03:25:00 +0000 (UTC)
Date: Thu, 8 Sep 2016 12:24:55 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Rik van Riel <riel@redhat.com>
Message-Id: <20160908122455.c5c114d4dbe5c0bcd04b3d8b@kernel.org>
In-Reply-To: <1473264649.10218.56.camel@redhat.com>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906175343.2f0d9135@gandalf.local.home>
	<20160906224100.GA17212@p183.telecom.by>
	<20160907051039.GG2356@ZenIV.linux.org.uk>
	<CALCETrVRFVkpk5bbH1jYxhh3nWYoJtXMFaMo2yR25sntGOrnDw@mail.gmail.com>
	<CAKocOOM7XJeW79dtFNx2Agi7cyrQxmMROmQrisdTG8oZMSi_qQ@mail.gmail.com>
	<1473264649.10218.56.camel@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
 stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 07 Sep 2016 12:10:49 -0400
Rik van Riel <riel@redhat.com> wrote:

> On Wed, 2016-09-07 at 09:30 -0600, Shuah Khan wrote:
> > On Tue, Sep 6, 2016 at 11:30 PM, Andy Lutomirski <luto@kernel.org>
> > wrote:
> > > 
> > > I wouldn't mind a policy that tracepoints are simply never
> > > stable.  Maybe we
> > > should even deliberately change them periodically to drive the
> > > point home.
> > > 
> > > The kernel should be able to have a debug API that is genuinely for
> > > *debugging* and doesn't freeze the underlying implementation.
> > Agreed. Tracepoints and events provide a powerful tool in debug
> > certain class
> > of problems (races and performance problems) where traditional debug
> > methods
> > such as CONFIG_DEBUG_FOO aren't effective. Trace information includes
> > important
> > status information on thread status which is helpful in debugging.
> 
> From an enterprise distro (and user) point of view,
> it is important to be able to debug a kernel that
> is running on a production system (and developed
> some problem after a month of running), without
> having to reboot into a special "debug kernel".
> 
> Being able to just fire up a tracer debugging
> script that can identify intermittent problems
> is an invaluable tool in making the kernel better
> for our users.

I had made a systemtap flight-recorder mode for same reason, which
records events in background and user can dump it if something
happens. I know that ftrace also has a trace buffer dump feature
when kernel gets panic. (and crash can dump ftrace buffer from
kernel crashdump)

> Hamstringing our ability to make the kernel better,
> in order to keep the debugging ABI stable, is
> shooting ourselves (and our users) in the foot.

Agreed, even if we are able to stabilize tracepoints, the code context
around the tracepoints should be changed, not only code evolution,
but also fixing bugs.

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>
