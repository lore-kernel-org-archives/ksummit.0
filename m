Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E4BDD982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 01:38:12 +0000 (UTC)
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 46844E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 01:38:12 +0000 (UTC)
Received: by mail-io0-f195.google.com with SMTP id z62so2021198ioi.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 18:38:12 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170629211641.5aeb3af7@gandalf.local.home>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<20170629205218.5b9a7923@gandalf.local.home>
	<CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
	<20170629211641.5aeb3af7@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 29 Jun 2017 18:38:11 -0700
Message-ID: <CA+55aFxzkwj8R+oqyw4ZpJf6Sm1Ubzy_LjSNi2_-LfcDE6bRuw@mail.gmail.com>
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

On Thu, Jun 29, 2017 at 6:16 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
>
> I didn't realize you even used the tracepoints.

I don't.

But I absolutely refuse to see this kind of idiotic churn, and even
more the idiotic "let's discuss it at ksummit" when we've had those
tracing discussions for years and they apparently didn't result in
anything workable.

Dammit, this stupid tracing issue really has been discussed for too
long, and the answer hasn't changed. You can have a static tracepoint,
but only for GENERIC stuff. Not random internal stuff that only makes
sense to one scheduler implementation. We've made that mistake too
many times before, we're not making it again.

Didn't that useless 'prio' field teach you anything? Instead, now you
want to add new fields that are not generic, but specific to one very
particular scheduling class. EXACTLTY like "prio" was/is.

> You mean kprobes? Or perhaps eBPF?
>
> The information about SCHED_DEADLINE is not trivial enough to extract
> with them.

You clearly shouldn't extract it unless you are a scheduler developer,
and then you can damn well instrument that thing yourself with your
own private tracepoints that you don't try to claim are generic and
useful to anybody else.

> Well, the world does have people that use tools besides powertop.

I said "like powertop".

I did not say "only powertop".

The fact is, no generic scheduler tracing tool that is run by real
people is ever going to care about some esoteric field that isn't even
relevant to most schedulers out there.

> Just one last note. I've tried very hard to keep tracing as contained
> as possible. That is, not to let implementation details and such creep
> into the rest of the kernel.

Yeah, and apparently it was a complete failure, if extending a single
breakpoint isn't possible without breaking stuff, and if people STILL
talk about the idiotic "oh, but it has that argument that doesn't make
sense" issue.

And dammit, having that same stupid argument _again_ isn't going to
improve things.

Why can't you just attach some eBPF script to the one tracepoint you
already have? I know that has been at least discussed, and it seems to
be the only reasonable way forward, since the existing thing clearly
isn't working.

                  Linus
