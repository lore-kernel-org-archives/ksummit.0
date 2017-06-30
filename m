Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5CA4A72A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 00:41:31 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 40AF8E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 00:41:30 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id v193so2428135itc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 17:41:30 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170629203224.6bf7f29a@gandalf.local.home>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 29 Jun 2017 17:41:29 -0700
Message-ID: <CA+55aFzFa0xSKpr9+E+RqOKNZzU78TZib8OKZCtcQqRBnH6-xQ@mail.gmail.com>
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

On Thu, Jun 29, 2017 at 5:32 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
>
> This is actually something quite different, and new. It sounds similar,
> but its not.

No, I remember the particular scheduler tracepoint discussion.

And the answer remains exactly the same. If some internal detail no
longer exists, just zero out the field.

And no, don't add new, even more specialized fields.

Just get over this discussion already.

              Linus
