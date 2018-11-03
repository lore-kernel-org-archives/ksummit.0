Return-Path: <avagin@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 761D784B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 Nov 2018 17:13:27 +0000 (UTC)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3A96F735
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 Nov 2018 17:13:27 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id z17-v6so2346185pgv.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 03 Nov 2018 10:13:27 -0700 (PDT)
Date: Sat, 3 Nov 2018 10:13:23 -0700
From: Andrei Vagin <avagin@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20181103171320.GA20033@gmail.com>
References: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
Cc: ksummit-discuss@lists.linuxfoundation.org, Dmitry Safonov <dima@arista.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Andy Tucker <agtucker@google.com>, Jeff Dike <jdike@addtoit.com>,
	Oleg Nesterov <oleg@redhat.com>, Victor Marmol <vmarmol@google.com>,
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

On Thu, Nov 01, 2018 at 02:21:26PM +0100, Thomas Gleixner wrote:
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

I'm interested and going to be there.

Cc: Andy and Victor

Thanks,
Andrei


> 
> Thanks,
> 
> 	tglx
