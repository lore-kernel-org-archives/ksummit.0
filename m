Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 47A28413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 22:40:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0A0FE19B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 22:40:08 +0000 (UTC)
Date: Fri, 5 Aug 2016 15:40:04 -0700
From: Darren Hart <dvhart@infradead.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160805224004.GB4952@f23x64.localdomain>
References: <20151013124230.1a082d28@gandalf.local.home>
	<20160805223238.GA4952@f23x64.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160805223238.GA4952@f23x64.localdomain>
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

On Fri, Aug 05, 2016 at 03:32:38PM -0700, Darren Hart wrote:
> On Tue, Oct 13, 2015 at 12:42:30PM -0400, Steven Rostedt wrote:
> > 
> > Now that it was announced in Dublin last week that mainlining
> > PREEMPT_RT has funding, I would like to propose a tech topic to discuss
> > what is needed to be done in the near future.
> > 
> > Thomas Gleixner and his minions will be doing the brunt of the work,
> > but there's issues that need to be addressed with the rest of the
> > kernel. The various topics would include:
> > 
> >  CPU hotplug
> >  preempt_disable and local_irq_disable annotations
> >  new timer_wheel implementation
> >  simple waitqueues
> >  trylock boosting
> > 
> > Several of the Real Time developers will be present at kernel summit. I
> > think this would be a great opportunity to have them be able to sit
> > down together and discuss the remaining issues.
> 
> I'm very interested in participating in this.
> 
> Is this a TECH topic or a CORE topic?

Apologies, this was from 2015. I failed to recognize that when searching for a
PREEMPT_RT TECH TOPIC proposal before responding to Davidlohr's self nomination
suggesting this topic.

Shall we recycle this topic for 2016 as well?

-- 
Darren Hart
Intel Open Source Technology Center
