Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2113F1814
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Oct 2015 17:21:38 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0214.hostedemail.com
	[216.40.44.214])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C07C6186
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Oct 2015 17:21:37 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 72470183F7E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Oct 2015 16:42:34 +0000 (UTC)
Date: Tue, 13 Oct 2015 12:42:30 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20151013124230.1a082d28@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [TECH TOPIC] Mainlining PREEMPT_RT
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


Now that it was announced in Dublin last week that mainlining
PREEMPT_RT has funding, I would like to propose a tech topic to discuss
what is needed to be done in the near future.

Thomas Gleixner and his minions will be doing the brunt of the work,
but there's issues that need to be addressed with the rest of the
kernel. The various topics would include:

 CPU hotplug
 preempt_disable and local_irq_disable annotations
 new timer_wheel implementation
 simple waitqueues
 trylock boosting

Several of the Real Time developers will be present at kernel summit. I
think this would be a great opportunity to have them be able to sit
down together and discuss the remaining issues.

-- Steve
