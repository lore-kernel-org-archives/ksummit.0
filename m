Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A3E0AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 23:24:21 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9B7EB32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 23:24:20 +0000 (UTC)
Date: Thu, 16 Jul 2015 09:24:10 +1000
From: NeilBrown <neilb@suse.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150716092410.22d0af07@noble>
In-Reply-To: <1436955234.31121.25.camel@HansenPartnership.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Wed, 15 Jul 2015 13:13:54 +0300 James Bottomley
<James.Bottomley@HansenPartnership.com> wrote:

> On Wed, 2015-07-15 at 12:28 +1000, NeilBrown wrote:

> > I want bugfixes to go quickly though automated tests (and 0-day is
> > delightfully quick - no need to wait for morning in .au for -next), and
> > then to Linus to sit for an extended time to be tested by the army of
> > beta-testers (who try things that no automated test would ever think
> > of).
> 
> OK, granted 0day runs on all branches, not just for-next; but how do you
> know it's run?  If all tests passed, you don't get a success report.
> I'd be happy skipping linux-next for 0day if I knew it had run.
> 
> I just use the rule of thumb: must be in -next for two days because then
> I know 0day (and the other checkers) have also run.

Do you *really* know that?
Given that there seems to be value in knowing "0day has run
successfully", should we ask for an interface to do exactly that?

Hey .. we could even have a bot which watches lkml for pull requests,
grabs the git hash, and checks that 0day has run on it.  If not -
automatic public shaming ensues :-)


>  Effectively this
> means that all -rc fixes have to be in by Thursday for the Sunday -rc
> release.  Anything after Thursday goes in the next -rc.  Even if I'm
> waiting only for 0day, the rule means I know it's run.
> 
> I don't consider this to be an onerous delay and it has, on occasion,
> caught bogus fixes.

I agree - not particularly onerous (though I'd really like the timing
to work so that pull requests can be sent on Friday and get into the
next rc - but that is just me being fussy).
My point was really about using 'the right tool for the job', and I
don't think -next is the 'right tool for the job' for validating bug
fixes.

Thanks,
NeilBrown
