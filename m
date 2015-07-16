Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 62E68AC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 01:25:39 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0109.hostedemail.com
	[216.40.44.109])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id DAEB31DB09
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 01:25:38 +0000 (UTC)
Date: Wed, 15 Jul 2015 21:25:35 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: NeilBrown <neilb@suse.com>
Message-ID: <20150715212535.754da6eb@gandalf.local.home>
In-Reply-To: <20150716092410.22d0af07@noble>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150714104623.GQ11162@sirena.org.uk>
	<55A51548.4040502@oracle.com>
	<20150714152515.GX11162@sirena.org.uk>
	<55A52B8B.5060606@oracle.com>
	<20150714113829.4b618d9a@gandalf.local.home>
	<55A53074.7040109@oracle.com>
	<20150714120225.65e489cc@gandalf.local.home>
	<55A5635D.1020600@oracle.com> <20150715114946.481f154d@noble>
	<55A5C0EE.3060803@oracle.com> <20150715122802.56ca2100@noble>
	<1436955234.31121.25.camel@HansenPartnership.com>
	<20150716092410.22d0af07@noble>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Sasha Levin <sasha.levin@oracle.com>,
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

On Thu, 16 Jul 2015 09:24:10 +1000
NeilBrown <neilb@suse.com> wrote:

> > I just use the rule of thumb: must be in -next for two days because then
> > I know 0day (and the other checkers) have also run.
> 
> Do you *really* know that?
> Given that there seems to be value in knowing "0day has run
> successfully", should we ask for an interface to do exactly that?
> 

There's an opt-in with Fengguang Wu's 0day tests to have it email you
when it finishes with "SUCCESS". I have that, as I don't do pushes for
any patches until I see that.

-- Steve
