Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BF4A4CC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 17:43:18 +0000 (UTC)
Received: from out01.mta.xmission.com (out01.mta.xmission.com [166.70.13.231])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 53C907E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 17:43:18 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Thomas Gleixner <tglx@linutronix.de>
References: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
Date: Thu, 01 Nov 2018 12:42:24 -0500
In-Reply-To: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
	(Thomas Gleixner's message of "Thu, 1 Nov 2018 14:21:26 +0100 (CET)")
Message-ID: <87ftwkpudb.fsf@xmission.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org, Dmitry Safonov <dima@arista.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Jeff Dike <jdike@addtoit.com>, Oleg Nesterov <oleg@redhat.com>,
	John Stultz <john.stultz@linaro.org>, Andy Lutomirski <luto@kernel.org>,
	Cyrill Gorcunov <gorcunov@openvz.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Adrian Reber <adrian@lisas.de>, Pavel Emelianov <xemul@virtuozzo.com>
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Multiple time domains
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Thomas Gleixner <tglx@linutronix.de> writes:

> Sorry for the late proposal, but this popped up recently.
>
> The recent discussion of the proposed time name spaces resulted in a larger
> range of questions how to handle that correctly. Aside of that we have
> other requests of supporting multiple time domains for various reasons,
> e.g. TSN folks in automotive and automation using grand clock masters with
> a completely screwed time base.
>
> As most of the relevant developers seem to be at LPC, I propose a technical
> session dedicated to discuss the handling of multiple time domains.

I will definitely be there.

To whoever schedules these things can we please have this one of the
days that overlaps LPC.  So that all of the CRIU and container folks
have a chance to show up.  Ideally not during the CRIU or Container mini
summit.

Eric
