Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84C47A5B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 23:10:53 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0217.hostedemail.com
	[216.40.44.217])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id DEF191DAB8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 23:10:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 8A6D6B128F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 21:53:47 +0000 (UTC)
Date: Tue, 6 Sep 2016 17:53:43 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Message-ID: <20160906175343.2f0d9135@gandalf.local.home>
In-Reply-To: <20160906213644.GA16732@p183.telecom.by>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
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

On Wed, 7 Sep 2016 00:36:44 +0300
Alexey Dobriyan <adobriyan@gmail.com> wrote:


> The solution was out there for quite some time :-)
> 
> 	Scope of Compatibility
> 	Packages in Red Hat Enterprise Linux are classified under one of
> 	the following four compatibility levels:
> 
> 	[ ] Compatibility level 1: APIs and ABIs are stable across three
> 	    major releases;
> 
> 	[ ] Compatibility level 2: APIs and ABIs are stable within one major
> 	    release.
> 
> 	[ ] Compatibility level 3: Reserved for future use.
> 
> 	[X] Compatibility level 4: No compatibility is provided.
> 
> The winning move is to not play and let distros sort it out.

Except that Linus has a hard rule for this. See the reason behind his
infamous rant:

   https://lkml.org/lkml/2012/12/23/75

Specifically:

 "If a change results in user programs breaking, it's a bug in the
  kernel. We never EVER blame the user programs."


> 
> P.S.: techically every kernel release almost certainly breaks crash(1)
> program, program many people on this list should be familiar with.
> It is unclear why rules should be different for tracepoints.

Well, crash() isn't a userspace tool that runs on top of Linux. Well,
it does, but only the input from a core dump of a Linux kernel breaks
it. It will always run fine on all Linux versions as long as it uses
the same input.

Tracepoints are runtime visible. This isn't a postmortem analysis. We
already had an issues when powertop read the tracepoints directly
without using the tracepoint format file parsing, and we ended up
having 4 bytes of useless data in *every* tracepoint. Luckily, that got
fixed because this hard coding broke when running powertop from a 32
bit userspace on top of a 64 bit kernel. I worked to get powertop to
use the tracepoint format parsing that perf and trace-cmd uses.

But if something depends on event fields, we need to maintain that. For
now, we have fake fields in the sched_wakeup tracepoint, because of
this.

It's a balance that we need to figure out. One is that tracepoints are
really helpful for in the field debugging to see what is happening. The
other is that they are becoming an ABI and if a useful tool (like
powertop) hooks into them, whatever they hooked into becomes set in
stone.

This is a real issue, and has been brought up in past kernel summits
without a resolution.

-- Steve
