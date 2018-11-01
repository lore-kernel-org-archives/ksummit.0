Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9FDD4B9B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 17:33:37 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 626D076A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 17:33:37 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9336C20831
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 17:33:36 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id y16so20867583wrw.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 01 Nov 2018 10:33:36 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 1 Nov 2018 10:33:22 -0700
Message-ID: <CALCETrVPU42dRzVXjwju_RQ8zXb8qP1Mbasox7zD5=MK6h7ccQ@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dmitry Safonov <dima@arista.com>, Peter Zijlstra <peterz@infradead.org>,
	Jeff Dike <jdike@addtoit.com>, Oleg Nesterov <oleg@redhat.com>,
	John Stultz <john.stultz@linaro.org>, Andrew Lutomirski <luto@kernel.org>,
	Cyrill Gorcunov <gorcunov@openvz.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Adrian Reber <adrian@lisas.de>, Pavel Emelyanov <xemul@virtuozzo.com>
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Multiple time domains
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Nov 1, 2018 at 6:21 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
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
>

I'm definitely interested, but I think there's only a 5% chance or so
that I actually end up at LPC.
