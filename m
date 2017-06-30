Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F0BC7AAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 02:34:54 +0000 (UTC)
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 541B3151
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 02:34:54 +0000 (UTC)
Received: by mail-it0-f47.google.com with SMTP id m84so17643434ita.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 19:34:54 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170629221245.489760b1@gandalf.local.home>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<20170629205218.5b9a7923@gandalf.local.home>
	<CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
	<20170629211641.5aeb3af7@gandalf.local.home>
	<20170629212750.5c3542ee@gandalf.local.home>
	<CA+55aFzzCPMUDt72hckauYu+fj=Q2MWjx+XiR06KpMLAr1EBAA@mail.gmail.com>
	<20170629221245.489760b1@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 29 Jun 2017 19:34:53 -0700
Message-ID: <CA+55aFxFLvX62SyOC9qyVwEQXH8J224Fe03tvy624AUx0U2fRQ@mail.gmail.com>
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

On Thu, Jun 29, 2017 at 7:12 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Well, I don't want to put words in his mouth, but as he's probably
> currently putting mush in a baby's mouth, so I'll do it anyway. ;-) We
> were talking about making the static tracepoints more "dynamic". I'm not
> sure he's ever used eBPF with tracing.

I don't know how else you would make them dynamic, though.
Realistically, ebpf seems to be working really well for the networking
people, and seems to be the obvious solution.

Now, the networking people have obviously *made* it work for them. So
it's not like it's some kind of "ebpf automatically solves all
problems" thing. ebpf needs some infrastructure too, to be able to get
to the interesting data sanely (and safely).

> eBPF is still very limited in tracing. Currently it is only implemented
> for perf. Although, it has been on my todo list to get it working for
> ftrace as well, and implementing eBPF for ftrace can also be on the
> agenda.

Oh, I thought it worked outside of perf already. My bad. I'm actually
surprised it doesn't interact with ftrace, since it seems like the
perfect use case.

                Linus
