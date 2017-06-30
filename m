Return-Path: <SRS0=aia5=6D=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2565DA84
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 02:12:49 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6343D152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 02:12:48 +0000 (UTC)
Date: Thu, 29 Jun 2017 22:12:45 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170629221245.489760b1@gandalf.local.home>
In-Reply-To: <CA+55aFzzCPMUDt72hckauYu+fj=Q2MWjx+XiR06KpMLAr1EBAA@mail.gmail.com>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<20170629205218.5b9a7923@gandalf.local.home>
	<CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
	<20170629211641.5aeb3af7@gandalf.local.home>
	<20170629212750.5c3542ee@gandalf.local.home>
	<CA+55aFzzCPMUDt72hckauYu+fj=Q2MWjx+XiR06KpMLAr1EBAA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Thu, 29 Jun 2017 18:51:14 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> On Thu, Jun 29, 2017 at 6:27 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> >
> > Where I mentioned that he prefers a dynamic tracepoint. Is that what
> > you mean? Because what he prefers doesn't exist yet. It's not kprobes
> > nor eBPF. It is something we've been talking about implementing, and we
> > were going to discuss the implementation at ksummit.
> >
> > Are you OK with that?  
> 
> I'm not going to be at that discussion, and I don't think it should be
> a ksummit thing, at least not the maintainership part. It's a
> technical detail that should be discussed with the people who are
> interested in that technical detail. Maybe a BOF?

The thread was posted as "TECH TOPIC" which was suppose to be only for
those that are interested. It wasn't posted for "MAINTAINERS SUMMIT".
Thus, we are fine with that.

IIUC, there's two things happening for "ksummit". There's the
"Maintainer's summit" which is your hand picked group. And then there's
the extension of individual technical topics for a larger body of
people (also this helps get people to the location that may need to be
available for anything that comes out of you Maintainer's Summit, but
were not invited). This mailing list was for both, with the subject tags
to differentiate which is for which.

> 
> But yes, I was talking about something very similar to what I think
> Peter is talking about - the ability to attach a ebpf script to
> kprobes and extract data dynamically. We've supported ebpf tracepoints
> for years afaik, what is actually missing from using that for whatever
> particular extension people want to use?

Well, I don't want to put words in his mouth, but as he's probably
currently putting mush in a baby's mouth, so I'll do it anyway. ;-) We
were talking about making the static tracepoints more "dynamic". I'm not
sure he's ever used eBPF with tracing.

> 
> Wasn't that the whole promise (and premise) of using ebpf programs in
> tracing? Exactly the ability to generate sane statistics and traces
> dynamically. I know that was what I was sold on, even if it might not
> actually have worked out that way.

eBPF is still very limited in tracing. Currently it is only implemented
for perf. Although, it has been on my todo list to get it working for
ftrace as well, and implementing eBPF for ftrace can also be on the
agenda. The issue is eBPF still needs easier users tools to get it
working, as it needs to be compiled down. But that's all details that
can be sorted out.

I still like to have a TECH TOPIC on all these issues at Kernel Summit.
You don't need to be there, and it would only be for those that are
interested in the discussion.

-- Steve
