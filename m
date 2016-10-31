Return-Path: <serge@mail.hallyn.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 839BB360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 15:04:42 +0000 (UTC)
Received: from h2.hallyn.com (h2.hallyn.com [78.46.35.8])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF8F8178
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 15:04:41 +0000 (UTC)
Date: Mon, 31 Oct 2016 10:04:51 -0500
From: "Serge E. Hallyn" <serge@hallyn.com>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20161031150451.GA7383@mail.hallyn.com>
References: <CALCETrV17Eqxa9-ronb_C0xX5usWyzQo6dW_OKaBT+roSr+kaA@mail.gmail.com>
	<20161027200929.GB17657@htj.duckdns.org>
	<20161030152723.GA27915@mail.hallyn.com>
	<20161030234110.bapvmmabmoqhtgnq@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20161030234110.bapvmmabmoqhtgnq@thunk.org>
Cc: Tycho Andersen <tycho.andersen@canonical.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Christian Brauner <christian.brauner@mailbox.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Tejun Heo <tj@kernel.org>,
	=?iso-8859-1?Q?St=E9phane?= Graber <stgraber@ubuntu.com>
Subject: Re: [Ksummit-discuss] [LAST-MINUTE TOPIC] cgroup API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Oct 30, 2016 at 07:41:11PM -0400, Theodore Ts'o wrote:
> On Sun, Oct 30, 2016 at 10:27:23AM -0500, Serge E. Hallyn wrote:
> > 
> > FWIW I'm only arriving tuesday morning;  but obviously far more important
> > that Tejun be there, so I think I vote for monday night.
> 
> we have time Monday *afternoon*, if that works for folks.  Monday
> evening will conflict with the evening dinner, so if we want to do it
> on Monday, we have free slots during the kernel summit core day.  If
> there are people who need to attend who aren't core day invitees, we
> have invited people who are needed for a particular discussion into a
> specific core plenary day session before.
> 
> The other alternative would be to either do it Tuesday (we have a room
> availble), or Wednesday or Thursday, where the kernel summit does have
> a room reserved for technical sessions and for which LPC attendees are
> explicitly invited (just as people with Kernel Summit badges are
> invited to participate in LPC events).
> 
> I note there is a Cgroup v2 API session scheduled as part of the
> containers miniconference on Wednesday morning.  I assume the goal is
> try to settle this disagreement before the LPC minisummit?
> 
> Can someone give a summary of who the critical people are who need to
> be present, and what their availability might be?  Finding a room
> shouldn't be a problem.  It's going to people's availability....

Looks like
	Tejun obviously needs to be there
	Andy wants to be there, and I assume it relates to his code
	There's an LXC contingency arriving monday night;  I'd like
	  someone (Christian, Stéphane, or Tycho) to make it on Tuesday
	  if possible.
	I'd like to be there, but I arrive at 10:30 Tuesday morning.
	I don't think Eric Biederman is going to be in Santa Fe, but
	  he'd be good to have there.
	I assume James Bottomley would like to be there?

(I assume there are others, but that's the list I'm aware of)
