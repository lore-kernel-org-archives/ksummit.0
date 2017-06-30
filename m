Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E7DD88EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 00:03:09 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5E65718F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 00:03:07 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id 188so2336473itx.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 17:03:07 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170629195537.534445e7@gandalf.local.home>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 29 Jun 2017 17:03:05 -0700
Message-ID: <CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Julien Desfossez <jdesfossez@efficios.com>,
	daolivei <daolivei@redhat.com>, bristot <bristot@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Pulling away from the tracing
	ABI quicksands
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jun 29, 2017 at 4:55 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
>>
>>   * How can we deprecate, remove, or re-purpose a field in an
>>     event ? For instance, the "prio" field in the scheduler
>>     instrumentation is an internal implementation detail.
>
> One way is to fix all tools that use it and make sure they get out to
> the distros before making the change.

OR DO THE THING THAT PEOPLE HAVE BEEN TOLD TO DO AT LEAST THREE KERNEL
SUMMITS NOW: LEAVE THE DAMN FIELD ALONE, AND FILL IT WITH ZERO. OR
ONE. OR BRAN MUFFINS. I DON'T CARE. BUT DON'T REMOVE IT, AND STOP
USING IT AS AN EXCUSE FOR WHY NOTHING CAN EVER BE DONE.

Really. I don't want to have this stupid tracing discussion one more
time. We've had it. Several times. This exact issue has come up.
Several times.

So stop wasting everybodys time one more year.  I'm going to walk out
if people start discussing this thing again.

             Linus "grumpy"
