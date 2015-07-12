Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E6D7993E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 12:56:18 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 585791AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 12:56:18 +0000 (UTC)
Date: Sun, 12 Jul 2015 20:55:52 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20150712125552.GA12558@wfg-t540p.sh.intel.com>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
	<20150707225223.GG12491@dtor-ws> <20150708021619.GC3102@kroah.com>
	<alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
	<20150708093511.GL11162@sirena.org.uk>
	<20150708140155.GA20551@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150708140155.GA20551@thunk.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
 infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 08, 2015 at 10:01:55AM -0400, Theodore Ts'o wrote:
> On Wed, Jul 08, 2015 at 10:35:11AM +0100, Mark Brown wrote:
> > 
> > I think the only barrier here is someone writing some tooling that is
> > sufficiently useful and generic enough to work for people.  I know I
> > wrote my scripts mainly because none of the scripts I could find tie in
> > with my workflow (mainly around figuring out which branches in my local
> > tree correspond to branches on the server and syncing them up).  If
> > there'd been something I could just pick up I'd have happily done so.
> 
> Yeah, your concerns mirror mine:
> 
> 1) It will require a lot of configuration --- just because a commit
> shows up on a branch does not mean it is guaranteed that it will hit
> mainline.  In fact, a maintainer might push a commit onto a throwaway
> branch on kernel.org just so that the zero-day testing systems can
> give the commit a spin.  So that means it's not just enough to throw a
> bunch of git hook scripts on master.kernel.org, because maintainers
> will need to have to configure, if not customize, them.

Agreed. 0day also accumulated a complex set rules for deciding which
errors/trees should be auto reported, which should be manually checked,
and which can be silently ignored.

> This leads to my second concern which is:
> 
> 2) Having shell scripts run on master.kernel.org can be a significant
> security concern; this is *especially* true if customization or
> configuration is required.

0day has the same security concern. We end up running a dedicated git
mirror server for pulling 500 git trees and feeding them to the test
farm behind firewalls.

So the chances are that 0day infrastructure has the ready made setups
to run such service. We already have the commit-by-commit walker to
run checkpatch.pl (though I rarely send its report out due to it'd be
noisy and there is no clear criterion to answer "who would be glad to
receive such reports?").

If we are going to do it, the notification scripts may be hosted in

git://git.kernel.org/pub/scm/linux/kernel/git/wfg/lkp-tests.git

since there will be a copy of it in each build server.

> > > This would be caught immediately if it's properly maintained "project".
> > 
> > Or alternatively would allow people to quickly attack a large number of
> > developers :)
> 
> Indeed.
> 
> 						- Ted
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
