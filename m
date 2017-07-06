Return-Path: <SRS0=orc5=6J=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 79E56970
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 19:10:11 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DCB0B3FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 19:10:10 +0000 (UTC)
Date: Thu, 6 Jul 2017 15:10:08 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Josef Bacik <jbacik@fb.com>
Message-ID: <20170706151008.24addd2b@gandalf.local.home>
In-Reply-To: <658A3F80-5E48-4EC4-A591-E3783AD3DADC@fb.com>
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
	<20170630142956.7e0cb2d6@gandalf.local.home>
	<20170630143030.305b68a0@gandalf.local.home>
	<658A3F80-5E48-4EC4-A591-E3783AD3DADC@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

On Fri, 30 Jun 2017 18:37:59 +0000
Josef Bacik <jbacik@fb.com> wrote:

> [ I forgot to add Tom to the Cc list. Sending again. ]
>=20
> On Fri, 30 Jun 2017 14:29:56 -0400
> Steven Rostedt <rostedt@goodmis.org> wrote:
>=20
> > On Fri, 30 Jun 2017 18:24:12 +0000
> > Josef Bacik <jbacik@fb.com> wrote:
> >  =20
> > > Yup I=E2=80=99ll start bugging people to submit talk proposals, start=
ing with you!  I=E2=80=99ll put up my proposal in the next day or two, I th=
ink Brendan has something he=E2=80=99s going to talk about.  Thanks,   =20
> >=20
> > I shouldn't have used the term "talk", as it really is all about
> > discussions. In fact, if you need more than one slide, you have too
> > many.
> >=20
> > That said, I could probably come up with a few things, starting with
> > this trace event issue. But it will be pointless if Peter Zijlstra and
> > Mathieu are not there.
> >=20
> > But having ideas about dynamic fields in tracepoints is always
> > interesting. Not to mention talking about Tom Zanussi's latest
> > histogram work. It may be pretty much completed, but I would like to
> > discuss where we go from there.
> >=20
> > One last thing. I don't want to have too many responsibilities, as I'm
> > on the LPC program committee and I need to make sure I have time to
> > fulfill any action items I'm responsible for during the conference.
> >  =20
>=20
> Yeah plumbers is a weird venue for tracing, I always hope that we are
> going to have people like Brendan or other sysadmin-y people show up
> and say =E2=80=9Cthis is what sucks about tracing, please fix it=E2=80=9D=
, and then
> we can go fix it.  It doesn=E2=80=99t really seem to happen that way tho,=
 and
> for things like tracing ABI there just aren=E2=80=99t the right people in=
 the
> room to have that kind of discussion.  My proposal was just going to
> be a laundry list of things that would make my life easier, but it
> doesn=E2=80=99t really warrant a full micro-conference to listen to me bi=
tch
> for an hour.  If it turns out nobody else has much to talk about then
> we can just declare tracing is feature complete and we can talk about
> something else ;).  Thanks,
>=20

At this rate, I'm guessing that Tracing is not going to be on the
Plumbers' agenda.

-- Steve
