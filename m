Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 70A3DBC9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:36:48 +0000 (UTC)
Received: from pmta2.delivery3.ore.mailhop.org
	(pmta2.delivery3.ore.mailhop.org [54.213.22.21])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id E5E06136
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:36:47 +0000 (UTC)
Date: Wed, 8 Jul 2015 14:36:44 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20150708143644.GI23515@io.lakedaemon.net>
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

Ack.  Is there room for a convention here?  e.g. dev opts in, which
means that tree follows a certain branch naming convention.

> This leads to my second concern which is:
> 
> 2) Having shell scripts run on master.kernel.org can be a significant
> security concern; this is *especially* true if customization or
> configuration is required.

Is it worse for an attacker to execute code as a designated,
unprivileged user on the server, with access to copies of repos?  Or, to
execute code as a dev on a dev box?  The latter potentially giving
access to ssh and pgp keys.

I'd argue that it's Konstantin's and David's jobs to keep those servers
locked down and properly configured.  Devs and dev boxes are held to no
such standard, and yet contain much more critical resources.

We can easily detect and recover from an attacker changing a repo on the
server.  The PGP signed tag will fail.  How do we detect and recover
from, say, Greg or Linus' machine being compromised?

This threat model assumes an intentionally malicious attacker whose goal
is to get bad shit into the kernel and pass git tag verification.

thx,

Jason.
