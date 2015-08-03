Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16185273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 08:33:38 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3FEA3161
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 08:33:33 +0000 (UTC)
Date: Mon, 3 Aug 2015 16:32:40 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150803083240.GA3978@wfg-t540p.sh.intel.com>
References: <55A53074.7040109@oracle.com>
	<20150714120225.65e489cc@gandalf.local.home>
	<55A5635D.1020600@oracle.com> <20150715114946.481f154d@noble>
	<55A5C0EE.3060803@oracle.com> <20150715122802.56ca2100@noble>
	<1436955234.31121.25.camel@HansenPartnership.com>
	<20150716092410.22d0af07@noble>
	<20150715212535.754da6eb@gandalf.local.home>
	<1437038344.25036.21.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1437038344.25036.21.camel@HansenPartnership.com>
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

On Thu, Jul 16, 2015 at 12:19:04PM +0300, James Bottomley wrote:
> On Wed, 2015-07-15 at 21:25 -0400, Steven Rostedt wrote:
> > On Thu, 16 Jul 2015 09:24:10 +1000
> > NeilBrown <neilb@suse.com> wrote:
> > 
> > > > I just use the rule of thumb: must be in -next for two days because then
> > > > I know 0day (and the other checkers) have also run.
> > > 
> > > Do you *really* know that?
> > > Given that there seems to be value in knowing "0day has run
> > > successfully", should we ask for an interface to do exactly that?
> > > 
> > 
> > There's an opt-in with Fengguang Wu's 0day tests to have it email you
> > when it finishes with "SUCCESS". I have that, as I don't do pushes for
> > any patches until I see that.
> 
> How?  Is there actually some sort of interface to 0day? (/me has been
> rather lazy and simply emails requests to Fengguang).  Detail would be
> great to share.

Just send me an email and say something like

        I'd like to get build completion notification for git URLs

            git://neil.brown.name/md
            git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git

Then I'll add them to the notification list.

The build completion notification will be private emails to the
committer of each branch's HEAD commit. It will typically be sent
out 1-2 hours after your git push.

But note the email only means the "quick" set of about 100 kconfigs
are finished and the build farm is in healthy state.

To improve coverage, we added 2 features in the past year to let
0day system run kind of endless more tests in machine idle time:

- hundreds more randconfig + all defconfigs in arch/*/configs/**
- commit by commit testing
 
So if you want to be reasonably safe, consider waiting for 1 day
before sending out your patch.

Thanks,
Fengguang
