Return-Path: <peterz@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30CCF826
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 21:13:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 29D4B153
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 21:13:36 +0000 (UTC)
Date: Thu, 27 Oct 2016 23:13:34 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Tejun Heo <tj@kernel.org>
Message-ID: <20161027211334.GO3102@twins.programming.kicks-ass.net>
References: <CALCETrV17Eqxa9-ronb_C0xX5usWyzQo6dW_OKaBT+roSr+kaA@mail.gmail.com>
	<20161027200929.GB17657@htj.duckdns.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161027200929.GB17657@htj.duckdns.org>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LAST-MINUTE TOPIC] cgroup API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Oct 27, 2016 at 04:09:29PM -0400, Tejun Heo wrote:
> Hello,
> 
> (cc'ing Johannes)
> 
> On Thu, Oct 27, 2016 at 10:29:01AM -0700, Andy Lutomirski wrote:
> > Would it make sense to have a session to try to resolve the current
> > cgroup v2 API disagreement?
> > 
> > In the interest of brevity, I'm not going to rehash the issues here,
> > but in extremely short summary, they include tasks in non-leaf cgroups
> > as well as whether threads in the same process can be in different
> > cgroups.
> 
> Yeah, sure.  Do we have some time on Mon evening?  I'm not sure I'll
> be around Tue evening.

I'll be in santa-fu all week. I figured if I'd go to the trouble of
dragging myself all the way to nowhere in the middle of NM, I might as
well stay there.

Godawful choice of location.
