Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42640A74
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 01:51:16 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4A3C2125
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 01:51:15 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id 188so2483407itx.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 18:51:15 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170629212750.5c3542ee@gandalf.local.home>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<20170629205218.5b9a7923@gandalf.local.home>
	<CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
	<20170629211641.5aeb3af7@gandalf.local.home>
	<20170629212750.5c3542ee@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 29 Jun 2017 18:51:14 -0700
Message-ID: <CA+55aFzzCPMUDt72hckauYu+fj=Q2MWjx+XiR06KpMLAr1EBAA@mail.gmail.com>
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

On Thu, Jun 29, 2017 at 6:27 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Where I mentioned that he prefers a dynamic tracepoint. Is that what
> you mean? Because what he prefers doesn't exist yet. It's not kprobes
> nor eBPF. It is something we've been talking about implementing, and we
> were going to discuss the implementation at ksummit.
>
> Are you OK with that?

I'm not going to be at that discussion, and I don't think it should be
a ksummit thing, at least not the maintainership part. It's a
technical detail that should be discussed with the people who are
interested in that technical detail. Maybe a BOF?

But yes, I was talking about something very similar to what I think
Peter is talking about - the ability to attach a ebpf script to
kprobes and extract data dynamically. We've supported ebpf tracepoints
for years afaik, what is actually missing from using that for whatever
particular extension people want to use?

Wasn't that the whole promise (and premise) of using ebpf programs in
tracing? Exactly the ability to generate sane statistics and traces
dynamically. I know that was what I was sold on, even if it might not
actually have worked out that way.

                 Linus
