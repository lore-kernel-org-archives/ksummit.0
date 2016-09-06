Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6CB3C412
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 23:18:23 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0024.hostedemail.com
	[216.40.44.24])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id B57881DAB8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 23:18:22 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 4FBF83426
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 23:13:03 +0000 (UTC)
Date: Tue, 6 Sep 2016 19:12:59 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Message-ID: <20160906191259.14a7d60b@gandalf.local.home>
In-Reply-To: <20160906224100.GA17212@p183.telecom.by>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906175343.2f0d9135@gandalf.local.home>
	<20160906224100.GA17212@p183.telecom.by>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Wed, 7 Sep 2016 01:41:00 +0300
Alexey Dobriyan <adobriyan@gmail.com> wrote:

>
> > Specifically:
> > 
> >  "If a change results in user programs breaking, it's a bug in the
> >   kernel. We never EVER blame the user programs."  
> 
> Linus has said many things. I've personally had Python compilation busted
> when Linux 4 appeared but somehow digit 4 is still with us. By that logic,
> major version should have been reverted back to 3 long ago.

There is a limit to the insanity. If a userspace tool depends on a
kernel version number, then it pinned itself to that version. If Python
never expected a 4 to appear, then it's compiling will be left to 3.x
kernels.

> 
> > > P.S.: techically every kernel release almost certainly breaks crash(1)
> > > program, program many people on this list should be familiar with.
> > > It is unclear why rules should be different for tracepoints.  
> > 
> > Well, crash() isn't a userspace tool that runs on top of Linux. Well,
> > it does, but only the input from a core dump of a Linux kernel breaks
> > it. It will always run fine on all Linux versions as long as it uses
> > the same input.  
> 
> It can act on live kernel.

Again, there's a limit to the insanity ;-)

> 
> > Tracepoints are runtime visible. This isn't a postmortem analysis. We
> > already had an issues when powertop read the tracepoints directly
> > without using the tracepoint format file parsing, and we ended up
> > having 4 bytes of useless data in *every* tracepoint. Luckily, that got
> > fixed because this hard coding broke when running powertop from a 32
> > bit userspace on top of a 64 bit kernel. I worked to get powertop to
> > use the tracepoint format parsing that perf and trace-cmd uses.
> > 
> > But if something depends on event fields, we need to maintain that. For
> > now, we have fake fields in the sched_wakeup tracepoint, because of
> > this.
> > 
> > It's a balance that we need to figure out. One is that tracepoints are
> > really helpful for in the field debugging to see what is happening. The
> > other is that they are becoming an ABI and if a useful tool (like
> > powertop) hooks into them, whatever they hooked into becomes set in
> > stone.  
> 
> There is no balance. One can't even reorder gfp_t flags:
> 
> 	DECLARE_EVENT_CLASS(kmem_alloc,
> 	TP_STRUCT__entry(
>                 __field(        unsigned long,  call_site       )
>                 __field(        const void *,   ptr             )
>                 __field(        size_t,         bytes_req       )
>                 __field(        size_t,         bytes_alloc     )
>                 __field(        gfp_t,          gfp_flags       )
>         ),

You mean if a tool depends on the order of bits set? I guess the
question is, is there such a tool, and have people complained when
things break? Or has anything broken yet?

> 
> 
> > This is a real issue, and has been brought up in past kernel summits
> > without a resolution.  
> 
> Gentlemen's agreement then:
> * kernel developers don't break tracepoints on purpose and maintain
>   compatibility in simple cases (long => int, deleted field, etc),
> * real, justified tracepoint breakage doesn't count.

According to Linus's rule, it really comes down to a tool that depends
on some feature in a tracepoint, and later we change it, break the
tool, and user complains. Then we are stuck with that tracepoint as it
was.

We can change any user space ABI as long as nobody notices ;-) If a user
space ABI breaks in the forest and nobody is around to complain about
it, is it still breakage? According to Linus, the answer is no.

Tracepoints are no different than any other ABI. The problem is, we
don't know if something is using it until we change it and that
something breaks.

-- Steve
