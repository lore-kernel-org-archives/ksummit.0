Return-Path: <SRS0=aia5=6D=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F70489E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 18:30:00 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 78CA8400
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 18:29:59 +0000 (UTC)
Date: Fri, 30 Jun 2017 14:29:56 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Josef Bacik <jbacik@fb.com>
Message-ID: <20170630142956.7e0cb2d6@gandalf.local.home>
In-Reply-To: <6AE378F0-42F7-45DE-9F3C-050A5019A1E8@fb.com>
References: <20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<20170629205218.5b9a7923@gandalf.local.home>
	<CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
	<20170629211641.5aeb3af7@gandalf.local.home>
	<20170629212750.5c3542ee@gandalf.local.home>
	<CA+55aFzzCPMUDt72hckauYu+fj=Q2MWjx+XiR06KpMLAr1EBAA@mail.gmail.com>
	<20170629221245.489760b1@gandalf.local.home>
	<CA+55aFxFLvX62SyOC9qyVwEQXH8J224Fe03tvy624AUx0U2fRQ@mail.gmail.com>
	<20170630025852.xjoif3aai6rny5a2@ast-mbp>
	<20170629230251.02f380cb@gandalf.local.home>
	<6AE378F0-42F7-45DE-9F3C-050A5019A1E8@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>, bristot <bristot@redhat.com>,
	Julien Desfossez <jdesfossez@efficios.com>,
	Ingo Molnar <mingo@kernel.org>, daolivei <daolivei@redhat.com>
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

On Fri, 30 Jun 2017 18:24:12 +0000
Josef Bacik <jbacik@fb.com> wrote:

> Yup I=E2=80=99ll start bugging people to submit talk proposals, starting =
with you!  I=E2=80=99ll put up my proposal in the next day or two, I think =
Brendan has something he=E2=80=99s going to talk about.  Thanks,

I shouldn't have used the term "talk", as it really is all about
discussions. In fact, if you need more than one slide, you have too
many.

That said, I could probably come up with a few things, starting with
this trace event issue. But it will be pointless if Peter Zijlstra and
Mathieu are not there.

But having ideas about dynamic fields in tracepoints is always
interesting. Not to mention talking about Tom Zanussi's latest
histogram work. It may be pretty much completed, but I would like to
discuss where we go from there.

One last thing. I don't want to have too many responsibilities, as I'm
on the LPC program committee and I need to make sure I have time to
fulfill any action items I'm responsible for during the conference.

-- Steve
