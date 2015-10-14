Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A22C0258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 07:35:10 +0000 (UTC)
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9174AA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 07:35:09 +0000 (UTC)
Received: by obbrx8 with SMTP id rx8so32927119obb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 00:35:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151013124230.1a082d28@gandalf.local.home>
References: <20151013124230.1a082d28@gandalf.local.home>
Date: Wed, 14 Oct 2015 09:35:08 +0200
Message-ID: <CACRpkdb83Q+y9Fd+SmyNi_Fo5wGzmKDKGYFJvpMWSHjC0f=4Ew@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Mainlining PREEMPT_RT
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 13, 2015 at 6:42 PM, Steven Rostedt <rostedt@goodmis.org> wrote:

> The various topics would include:
>
>  CPU hotplug
>  preempt_disable and local_irq_disable annotations
>  new timer_wheel implementation
>  simple waitqueues
>  trylock boosting

- Decide on a case-per-case basis whether to make all irqchips threaded.

We recently ran into this in the GPIO subsystem as Grygorii Strashko
is working on RT on the ARM OMAP. So I drafted a checklist:
http://marc.info/?l=linux-gpio&m=144382150627266&w=2

Feedback welcome. I don't know if I even got the details right in that
checklist. There are a few irqchips around:

$ git grep 'struct irq_chip ' arch/ drivers/ | wc -l
721

If this isn't done I guess that for example a sudden IRQ on a GPIO
pin can delay a deadline. Not good.

Yours,
Linus Walleij
