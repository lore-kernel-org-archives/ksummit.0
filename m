Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 163B340C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 23 Jul 2017 21:48:49 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0213.hostedemail.com
	[216.40.44.213])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 17E6A1DAA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 23 Jul 2017 21:48:47 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 8B09B1800C0F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 23 Jul 2017 15:49:05 +0000 (UTC)
Date: Fri, 21 Jul 2017 22:18:25 -0400
In-Reply-To: <1188050494.22035.1500673557010.JavaMail.zimbra@efficios.com>
References: <20170629195537.534445e7@gandalf.local.home>
	<20170630025852.xjoif3aai6rny5a2@ast-mbp>
	<20170629230251.02f380cb@gandalf.local.home>
	<6AE378F0-42F7-45DE-9F3C-050A5019A1E8@fb.com>
	<20170630142956.7e0cb2d6@gandalf.local.home>
	<20170630143030.305b68a0@gandalf.local.home>
	<658A3F80-5E48-4EC4-A591-E3783AD3DADC@fb.com>
	<20170706151008.24addd2b@gandalf.local.home>
	<1188050494.22035.1500673557010.JavaMail.zimbra@efficios.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
From: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <37EF4BA7-FC04-4580-8AD8-28E4C384DA88@goodmis.org>
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

Actually, Brendan Gregg got enough proposals together and there will be a t=
racing MC at Plumbers this year=2E

-- Steve


On July 21, 2017 5:45:57 PM EDT, Mathieu Desnoyers <mathieu=2Edesnoyers@ef=
ficios=2Ecom> wrote:
>
>
>----- On Jul 6, 2017, at 3:10 PM, rostedt rostedt@goodmis=2Eorg wrote:
>
>> On Fri, 30 Jun 2017 18:37:59 +0000
>> Josef Bacik <jbacik@fb=2Ecom> wrote:
>>=20
>>> [ I forgot to add Tom to the Cc list=2E Sending again=2E ]
>>>=20
>>> On Fri, 30 Jun 2017 14:29:56 -0400
>>> Steven Rostedt <rostedt@goodmis=2Eorg> wrote:
>>>=20
>>> > On Fri, 30 Jun 2017 18:24:12 +0000
>>> > Josef Bacik <jbacik@fb=2Ecom> wrote:
>>> >  =20
>>> > > Yup I=E2=80=99ll start bugging people to submit talk proposals, st=
arting
>with you!  I=E2=80=99ll
>>> > > put up my proposal in the next day or two, I think Brendan has
>something he=E2=80=99s
>>> > > going to talk about=2E  Thanks,
>>> >=20
>>> > I shouldn't have used the term "talk", as it really is all about
>>> > discussions=2E In fact, if you need more than one slide, you have
>too
>>> > many=2E
>>> >=20
>>> > That said, I could probably come up with a few things, starting
>with
>>> > this trace event issue=2E But it will be pointless if Peter Zijlstra
>and
>>> > Mathieu are not there=2E
>>> >=20
>>> > But having ideas about dynamic fields in tracepoints is always
>>> > interesting=2E Not to mention talking about Tom Zanussi's latest
>>> > histogram work=2E It may be pretty much completed, but I would like
>to
>>> > discuss where we go from there=2E
>>> >=20
>>> > One last thing=2E I don't want to have too many responsibilities, as
>I'm
>>> > on the LPC program committee and I need to make sure I have time
>to
>>> > fulfill any action items I'm responsible for during the
>conference=2E
>>> >  =20
>>>=20
>>> Yeah plumbers is a weird venue for tracing, I always hope that we
>are
>>> going to have people like Brendan or other sysadmin-y people show up
>>> and say =E2=80=9Cthis is what sucks about tracing, please fix it=E2=80=
=9D, and then
>>> we can go fix it=2E  It doesn=E2=80=99t really seem to happen that way=
 tho,
>and
>>> for things like tracing ABI there just aren=E2=80=99t the right people=
 in
>the
>>> room to have that kind of discussion=2E  My proposal was just going to
>>> be a laundry list of things that would make my life easier, but it
>>> doesn=E2=80=99t really warrant a full micro-conference to listen to me=
 bitch
>>> for an hour=2E  If it turns out nobody else has much to talk about
>then
>>> we can just declare tracing is feature complete and we can talk
>about
>>> something else ;)=2E  Thanks,
>>>=20
>>=20
>> At this rate, I'm guessing that Tracing is not going to be on the
>> Plumbers' agenda=2E
>
>Since the Kernel Summit and Plumbers do not seem like a good fit to
>have
>discussions involving both tracing end users and developers, we have
>adapted the Tracing Summit schedule to have half day of the usual
>presentations, and half day dedicated to such discussions=2E Steven has
>volunteered to run the discussion part=2E
>
>The Tracing Summit will take place on October 27th in Prague, on the
>Friday right after Kernel Summit=2E
>
>So if you have tracing topics that you would like to discuss at this
>event, the CFP/CFD and all the information are available here:
>
>http://tracingsummit=2Eorg/wiki/TracingSummit2017
>
>Thanks,
>
>Mathieu

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
