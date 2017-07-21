Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B801B75
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Jul 2017 23:15:30 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BCE1F17E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Jul 2017 23:15:29 +0000 (UTC)
Message-ID: <1500678914.2900.77.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, rostedt
	<rostedt@goodmis.org>
Date: Fri, 21 Jul 2017 16:15:14 -0700
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
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>,
	ksummit-discuss <ksummit-discuss@lists.linuxfoundation.org>
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

On Fri, 2017-07-21 at 21:45 +0000, Mathieu Desnoyers wrote:
> 
> ----- On Jul 6, 2017, at 3:10 PM, rostedt rostedt@goodmis.org wrote:
> 
> > 
> > On Fri, 30 Jun 2017 18:37:59 +0000
> > Josef Bacik <jbacik@fb.com> wrote:
> > 
> > > 
> > > [ I forgot to add Tom to the Cc list. Sending again. ]
> > > 
> > > On Fri, 30 Jun 2017 14:29:56 -0400
> > > Steven Rostedt <rostedt@goodmis.org> wrote:
> > > 
> > > > 
> > > > On Fri, 30 Jun 2017 18:24:12 +0000
> > > > Josef Bacik <jbacik@fb.com> wrote:
> > > >   
> > > > > 
> > > > > Yup I’ll start bugging people to submit talk proposals,
> > > > > starting with you!  I’ll put up my proposal in the next day
> > > > > or two, I think Brendan has something he’s going to talk
> > > > > about.  Thanks,
> > > > 
> > > > I shouldn't have used the term "talk", as it really is all
> > > > about discussions. In fact, if you need more than one slide,
> > > > you have too many.
> > > > 
> > > > That said, I could probably come up with a few things, starting
> > > > with this trace event issue. But it will be pointless if Peter
> > > > Zijlstra and Mathieu are not there.
> > > > 
> > > > But having ideas about dynamic fields in tracepoints is always
> > > > interesting. Not to mention talking about Tom Zanussi's latest
> > > > histogram work. It may be pretty much completed, but I would
> > > > like to discuss where we go from there.
> > > > 
> > > > One last thing. I don't want to have too many responsibilities,
> > > > as I'm on the LPC program committee and I need to make sure I
> > > > have time to fulfill any action items I'm responsible for
> > > > during the conference.
> > > >   
> > > 
> > > Yeah plumbers is a weird venue for tracing, I always hope that we
> > > are going to have people like Brendan or other sysadmin-y people
> > > show up and say “this is what sucks about tracing, please fix
> > > it”, and then we can go fix it.  It doesn’t really seem to happen
> > > that way tho, and for things like tracing ABI there just aren’t
> > > the right people in the room to have that kind of discussion.  My
> > > proposal was just going to be a laundry list of things that would
> > > make my life easier, but it doesn’t really warrant a full micro-
> > > conference to listen to me bitch for an hour.  If it turns out
> > > nobody else has much to talk about then we can just declare
> > > tracing is feature complete and we can talk about something else
> > > ;).  Thanks,
> > > 
> > 
> > At this rate, I'm guessing that Tracing is not going to be on the
> > Plumbers' agenda.
> 
> Since the Kernel Summit and Plumbers do not seem like a good fit to
> have discussions involving both tracing end users and developers

First the disclaimer: being on the Plumbers Programme Committee, I'm
biased.  However, I have to say that the design of Plumbers is to bring
together everyone interested in the plumbing of Linux.  That means end
users as well, so it's not correct to say it's not a good fit.

It also looks like there's been some renewed interest in having a
Tracing MC at Plumbers, so my best guess now is that it will happen.
 That's not to say the two events can't easily co-exist: being on
different continents means better opportunities for attendees with
international travel restrictions.

James
