Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9022B9CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 22:41:06 +0000 (UTC)
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DAD8C163
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 22:41:05 +0000 (UTC)
Received: by mail-lf0-f65.google.com with SMTP id 29so5188884lfv.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 Sep 2016 15:41:05 -0700 (PDT)
Date: Wed, 7 Sep 2016 01:41:00 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160906224100.GA17212@p183.telecom.by>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906175343.2f0d9135@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160906175343.2f0d9135@gandalf.local.home>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Tue, Sep 06, 2016 at 05:53:43PM -0400, Steven Rostedt wrote:
> On Wed, 7 Sep 2016 00:36:44 +0300
> Alexey Dobriyan <adobriyan@gmail.com> wrote:
> 
> 
> > The solution was out there for quite some time :-)
> > 
> > 	Scope of Compatibility
> > 	Packages in Red Hat Enterprise Linux are classified under one of
> > 	the following four compatibility levels:
> > 
> > 	[ ] Compatibility level 1: APIs and ABIs are stable across three
> > 	    major releases;
> > 
> > 	[ ] Compatibility level 2: APIs and ABIs are stable within one major
> > 	    release.
> > 
> > 	[ ] Compatibility level 3: Reserved for future use.
> > 
> > 	[X] Compatibility level 4: No compatibility is provided.
> > 
> > The winning move is to not play and let distros sort it out.
> 
> Except that Linus has a hard rule for this. See the reason behind his
> infamous rant:
> 
>    https://lkml.org/lkml/2012/12/23/75
> 
> Specifically:
> 
>  "If a change results in user programs breaking, it's a bug in the
>   kernel. We never EVER blame the user programs."

Linus has said many things. I've personally had Python compilation busted
when Linux 4 appeared but somehow digit 4 is still with us. By that logic,
major version should have been reverted back to 3 long ago.

> > P.S.: techically every kernel release almost certainly breaks crash(1)
> > program, program many people on this list should be familiar with.
> > It is unclear why rules should be different for tracepoints.
> 
> Well, crash() isn't a userspace tool that runs on top of Linux. Well,
> it does, but only the input from a core dump of a Linux kernel breaks
> it. It will always run fine on all Linux versions as long as it uses
> the same input.

It can act on live kernel.

> Tracepoints are runtime visible. This isn't a postmortem analysis. We
> already had an issues when powertop read the tracepoints directly
> without using the tracepoint format file parsing, and we ended up
> having 4 bytes of useless data in *every* tracepoint. Luckily, that got
> fixed because this hard coding broke when running powertop from a 32
> bit userspace on top of a 64 bit kernel. I worked to get powertop to
> use the tracepoint format parsing that perf and trace-cmd uses.
> 
> But if something depends on event fields, we need to maintain that. For
> now, we have fake fields in the sched_wakeup tracepoint, because of
> this.
> 
> It's a balance that we need to figure out. One is that tracepoints are
> really helpful for in the field debugging to see what is happening. The
> other is that they are becoming an ABI and if a useful tool (like
> powertop) hooks into them, whatever they hooked into becomes set in
> stone.

There is no balance. One can't even reorder gfp_t flags:

	DECLARE_EVENT_CLASS(kmem_alloc,
	TP_STRUCT__entry(
                __field(        unsigned long,  call_site       )
                __field(        const void *,   ptr             )
                __field(        size_t,         bytes_req       )
                __field(        size_t,         bytes_alloc     )
                __field(        gfp_t,          gfp_flags       )
        ),


> This is a real issue, and has been brought up in past kernel summits
> without a resolution.

Gentlemen's agreement then:
* kernel developers don't break tracepoints on purpose and maintain
  compatibility in simple cases (long => int, deleted field, etc),
* real, justified tracepoint breakage doesn't count.
