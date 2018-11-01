Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2244AAB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 13:21:33 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C0AE42C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 13:21:32 +0000 (UTC)
Date: Thu, 1 Nov 2018 14:21:26 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Dmitry Safonov <dima@arista.com>, Peter Zijlstra <peterz@infradead.org>,
	Jeff Dike <jdike@addtoit.com>, Oleg Nesterov <oleg@redhat.com>,
	John Stultz <john.stultz@linaro.org>, Andy Lutomirski <luto@kernel.org>,
	Cyrill Gorcunov <gorcunov@openvz.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Adrian Reber <adrian@lisas.de>, Pavel Emelianov <xemul@virtuozzo.com>
Subject: [Ksummit-discuss] [TECH-TOPIC] Multiple time domains
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Sorry for the late proposal, but this popped up recently.

The recent discussion of the proposed time name spaces resulted in a larger
range of questions how to handle that correctly. Aside of that we have
other requests of supporting multiple time domains for various reasons,
e.g. TSN folks in automotive and automation using grand clock masters with
a completely screwed time base.

As most of the relevant developers seem to be at LPC, I propose a technical
session dedicated to discuss the handling of multiple time domains.

Thanks,

	tglx
