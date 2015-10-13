Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9EBC39A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Oct 2015 22:19:44 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2674C31
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Oct 2015 22:19:44 +0000 (UTC)
Date: Wed, 14 Oct 2015 00:19:41 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20151013221941.GF14464@wotan.suse.de>
References: <20151013124230.1a082d28@gandalf.local.home>
	<2823307.1o7LnhjveU@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2823307.1o7LnhjveU@vostro.rjw.lan>
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

On Wed, Oct 14, 2015 at 12:40:10AM +0200, Rafael J. Wysocki wrote:
> On Tuesday, October 13, 2015 12:42:30 PM Steven Rostedt wrote:
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
> Well, that's not limited to the RT developers even.
> 
> Good topic.

How much of this is the above topics Vs lack of good semantics in general, or
code which needs love / good design? I ask as we have a few 'semantic'
discussions, and I have a feeling there might be overlap.

  Luis
