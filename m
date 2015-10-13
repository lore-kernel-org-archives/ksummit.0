Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB6F7BBD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Oct 2015 17:33:04 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4492A186
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Oct 2015 17:33:04 +0000 (UTC)
Date: Tue, 13 Oct 2015 10:33:00 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20151013173300.GA8000@cloud>
References: <20151013124230.1a082d28@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151013124230.1a082d28@gandalf.local.home>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Mainlining PREEMPT_RT
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 13, 2015 at 12:42:30PM -0400, Steven Rostedt wrote:
> 
> Now that it was announced in Dublin last week that mainlining
> PREEMPT_RT has funding, I would like to propose a tech topic to discuss
> what is needed to be done in the near future.
> 
> Thomas Gleixner and his minions will be doing the brunt of the work,
> but there's issues that need to be addressed with the rest of the
> kernel. The various topics would include:
> 
>  CPU hotplug
>  preempt_disable and local_irq_disable annotations
>  new timer_wheel implementation
>  simple waitqueues
>  trylock boosting
> 
> Several of the Real Time developers will be present at kernel summit. I
> think this would be a great opportunity to have them be able to sit
> down together and discuss the remaining issues.

I would love to discuss this at Kernel Summit.

- Josh Triplett
