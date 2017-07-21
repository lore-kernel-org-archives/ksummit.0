Return-Path: <compudj@efficios.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9AD9FB75
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Jul 2017 21:44:15 +0000 (UTC)
Received: from mail.efficios.com (mail.efficios.com [167.114.142.141])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 980ED17E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Jul 2017 21:44:14 +0000 (UTC)
Date: Fri, 21 Jul 2017 21:45:57 +0000 (UTC)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: rostedt <rostedt@goodmis.org>
Message-ID: <1188050494.22035.1500673557010.JavaMail.zimbra@efficios.com>
In-Reply-To: <20170706151008.24addd2b@gandalf.local.home>
References: <20170629195537.534445e7@gandalf.local.home>
	<20170630025852.xjoif3aai6rny5a2@ast-mbp>
	<20170629230251.02f380cb@gandalf.local.home>
	<6AE378F0-42F7-45DE-9F3C-050A5019A1E8@fb.com>
	<20170630142956.7e0cb2d6@gandalf.local.home>
	<20170630143030.305b68a0@gandalf.local.home>
	<658A3F80-5E48-4EC4-A591-E3783AD3DADC@fb.com>
	<20170706151008.24addd2b@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>,
	ksummit-discuss <ksummit-discuss@lists.linuxfoundation.org>,
	Josef Bacik <jbacik@fb.com>, Julien Desfossez <jdesfossez@efficios.com>,
	Peter Zijlstra <peterz@infradead.org>,
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



----- On Jul 6, 2017, at 3:10 PM, rostedt rostedt@goodmis.org wrote:

> On Fri, 30 Jun 2017 18:37:59 +0000
> Josef Bacik <jbacik@fb.com> wrote:
>=20
>> [ I forgot to add Tom to the Cc list. Sending again. ]
>>=20
>> On Fri, 30 Jun 2017 14:29:56 -0400
>> Steven Rostedt <rostedt@goodmis.org> wrote:
>>=20
>> > On Fri, 30 Jun 2017 18:24:12 +0000
>> > Josef Bacik <jbacik@fb.com> wrote:
>> >  =20
>> > > Yup I=E2=80=99ll start bugging people to submit talk proposals, star=
ting with you!  I=E2=80=99ll
>> > > put up my proposal in the next day or two, I think Brendan has somet=
hing he=E2=80=99s
>> > > going to talk about.  Thanks,
>> >=20
>> > I shouldn't have used the term "talk", as it really is all about
>> > discussions. In fact, if you need more than one slide, you have too
>> > many.
>> >=20
>> > That said, I could probably come up with a few things, starting with
>> > this trace event issue. But it will be pointless if Peter Zijlstra and
>> > Mathieu are not there.
>> >=20
>> > But having ideas about dynamic fields in tracepoints is always
>> > interesting. Not to mention talking about Tom Zanussi's latest
>> > histogram work. It may be pretty much completed, but I would like to
>> > discuss where we go from there.
>> >=20
>> > One last thing. I don't want to have too many responsibilities, as I'm
>> > on the LPC program committee and I need to make sure I have time to
>> > fulfill any action items I'm responsible for during the conference.
>> >  =20
>>=20
>> Yeah plumbers is a weird venue for tracing, I always hope that we are
>> going to have people like Brendan or other sysadmin-y people show up
>> and say =E2=80=9Cthis is what sucks about tracing, please fix it=E2=80=
=9D, and then
>> we can go fix it.  It doesn=E2=80=99t really seem to happen that way tho=
, and
>> for things like tracing ABI there just aren=E2=80=99t the right people i=
n the
>> room to have that kind of discussion.  My proposal was just going to
>> be a laundry list of things that would make my life easier, but it
>> doesn=E2=80=99t really warrant a full micro-conference to listen to me b=
itch
>> for an hour.  If it turns out nobody else has much to talk about then
>> we can just declare tracing is feature complete and we can talk about
>> something else ;).  Thanks,
>>=20
>=20
> At this rate, I'm guessing that Tracing is not going to be on the
> Plumbers' agenda.

Since the Kernel Summit and Plumbers do not seem like a good fit to have
discussions involving both tracing end users and developers, we have
adapted the Tracing Summit schedule to have half day of the usual
presentations, and half day dedicated to such discussions. Steven has
volunteered to run the discussion part.

The Tracing Summit will take place on October 27th in Prague, on the
Friday right after Kernel Summit.

So if you have tracing topics that you would like to discuss at this
event, the CFP/CFD and all the information are available here:

http://tracingsummit.org/wiki/TracingSummit2017

Thanks,

Mathieu

--=20
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com
