Return-Path: <SRS0=aia5=6D=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A22CD8D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 00:59:05 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 32AA3A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 00:59:05 +0000 (UTC)
Date: Thu, 29 Jun 2017 20:59:02 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170629205902.00870bf3@gandalf.local.home>
In-Reply-To: <CA+55aFzFa0xSKpr9+E+RqOKNZzU78TZib8OKZCtcQqRBnH6-xQ@mail.gmail.com>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<CA+55aFzFa0xSKpr9+E+RqOKNZzU78TZib8OKZCtcQqRBnH6-xQ@mail.gmail.com>
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

On Thu, 29 Jun 2017 17:41:29 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> On Thu, Jun 29, 2017 at 5:32 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> >
> > This is actually something quite different, and new. It sounds similar,
> > but its not.  
> 
> No, I remember the particular scheduler tracepoint discussion.
> 
> And the answer remains exactly the same. If some internal detail no
> longer exists, just zero out the field.
> 
> And no, don't add new, even more specialized fields.
> 
> Just get over this discussion already.
> 

How does this solve adding key information that lots of people want
added. SCHED_DEADLINE is new, and lots of people want to use the
tracing infrastructure to analyze their applications. I know when I was
at Red Hat, we had our own tracepoints that we added to our kernel to
do just that. Right now, everyone has to patch their kernel to get the
necessary information. Red Hat isn't the only one. Mathieu is doing it
too. Perhaps SuSE is as well.

It doesn't solve anything.

Basically, what you are saying is the opposite of what we feared might
happen. People have always been afraid that a tracepoint might inhibit
kernel development because of some key information it exposes. Now you
are saying, don't touch the tracepoint, and just let it rot. Now the
usefulness of a tracepoint has become limited due to advancements in
the development of the kernel.

-- Steve
