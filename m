Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 433BABB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 09:19:11 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B575D168
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 09:19:10 +0000 (UTC)
Message-ID: <1437038344.25036.21.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Thu, 16 Jul 2015 12:19:04 +0300
In-Reply-To: <20150715212535.754da6eb@gandalf.local.home>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150714104623.GQ11162@sirena.org.uk> <55A51548.4040502@oracle.com>
	<20150714152515.GX11162@sirena.org.uk> <55A52B8B.5060606@oracle.com>
	<20150714113829.4b618d9a@gandalf.local.home>
	<55A53074.7040109@oracle.com>
	<20150714120225.65e489cc@gandalf.local.home>
	<55A5635D.1020600@oracle.com>
	<20150715114946.481f154d@noble> <55A5C0EE.3060803@oracle.com>
	<20150715122802.56ca2100@noble>
	<1436955234.31121.25.camel@HansenPartnership.com>
	<20150716092410.22d0af07@noble>
	<20150715212535.754da6eb@gandalf.local.home>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Sasha Levin <sasha.levin@oracle.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2015-07-15 at 21:25 -0400, Steven Rostedt wrote:
> On Thu, 16 Jul 2015 09:24:10 +1000
> NeilBrown <neilb@suse.com> wrote:
> 
> > > I just use the rule of thumb: must be in -next for two days because then
> > > I know 0day (and the other checkers) have also run.
> > 
> > Do you *really* know that?
> > Given that there seems to be value in knowing "0day has run
> > successfully", should we ask for an interface to do exactly that?
> > 
> 
> There's an opt-in with Fengguang Wu's 0day tests to have it email you
> when it finishes with "SUCCESS". I have that, as I don't do pushes for
> any patches until I see that.

How?  Is there actually some sort of interface to 0day? (/me has been
rather lazy and simply emails requests to Fengguang).  Detail would be
great to share.

James
