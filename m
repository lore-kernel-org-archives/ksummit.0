Return-Path: <dima@arista.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 060E586C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Nov 2018 14:07:00 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 72DA1804
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Nov 2018 14:06:59 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id b14so4957996edt.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Nov 2018 06:06:59 -0800 (PST)
To: Thomas Gleixner <tglx@linutronix.de>,
	ksummit-discuss@lists.linuxfoundation.org
References: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <c9f20ecd-d206-5800-04bb-4997109eac34@arista.com>
Date: Mon, 12 Nov 2018 14:06:56 +0000
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Peter Zijlstra <peterz@infradead.org>, Jeff Dike <jdike@addtoit.com>,
	Oleg Nesterov <oleg@redhat.com>, John Stultz <john.stultz@linaro.org>,
	Andy Lutomirski <luto@kernel.org>, Cyrill Gorcunov <gorcunov@openvz.org>,
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

Hi Thomas, guys,

On 11/1/18 1:21 PM, Thomas Gleixner wrote:
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

I've planned to be there, but it seems that my Canadian visa is not in 
time.. (nevertheless I've applied in September for it).

So, please share your thoughts and concerns about the proposal with 
Andrei. Beg your pardon for any inconvenience caused.

Thanks much,
           Dmitry
