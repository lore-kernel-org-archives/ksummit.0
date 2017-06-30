Return-Path: <SRS0=aia5=6D=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 81779728
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 01:45:33 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F0E83E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 01:45:32 +0000 (UTC)
Date: Thu, 29 Jun 2017 21:45:30 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170629214530.5257f420@gandalf.local.home>
In-Reply-To: <CA+55aFxzkwj8R+oqyw4ZpJf6Sm1Ubzy_LjSNi2_-LfcDE6bRuw@mail.gmail.com>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<20170629205218.5b9a7923@gandalf.local.home>
	<CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
	<20170629211641.5aeb3af7@gandalf.local.home>
	<CA+55aFxzkwj8R+oqyw4ZpJf6Sm1Ubzy_LjSNi2_-LfcDE6bRuw@mail.gmail.com>
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

On Thu, 29 Jun 2017 18:38:11 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> Why can't you just attach some eBPF script to the one tracepoint you
> already have? I know that has been at least discussed, and it seems to
> be the only reasonable way forward, since the existing thing clearly
> isn't working.

I like the eBPF idea, unfortunately it suffers the same fate. It only
has access to fields that have been exported via the tracepoint. Now we
are back to what fields are we going to make visible, and what happens
when they no longer make sense?

I guess you can argue that we need to keep modifying that eBPF script,
for each kernel release.

-- Steve
