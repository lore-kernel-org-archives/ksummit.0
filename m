Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3142CBCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:02:00 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 295B432
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:01:59 +0000 (UTC)
Date: Wed, 8 Jul 2015 10:01:55 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150708140155.GA20551@thunk.org>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
	<20150707225223.GG12491@dtor-ws> <20150708021619.GC3102@kroah.com>
	<alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
	<20150708093511.GL11162@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150708093511.GL11162@sirena.org.uk>
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

On Wed, Jul 08, 2015 at 10:35:11AM +0100, Mark Brown wrote:
> 
> I think the only barrier here is someone writing some tooling that is
> sufficiently useful and generic enough to work for people.  I know I
> wrote my scripts mainly because none of the scripts I could find tie in
> with my workflow (mainly around figuring out which branches in my local
> tree correspond to branches on the server and syncing them up).  If
> there'd been something I could just pick up I'd have happily done so.

Yeah, your concerns mirror mine:

1) It will require a lot of configuration --- just because a commit
shows up on a branch does not mean it is guaranteed that it will hit
mainline.  In fact, a maintainer might push a commit onto a throwaway
branch on kernel.org just so that the zero-day testing systems can
give the commit a spin.  So that means it's not just enough to throw a
bunch of git hook scripts on master.kernel.org, because maintainers
will need to have to configure, if not customize, them.

This leads to my second concern which is:

2) Having shell scripts run on master.kernel.org can be a significant
security concern; this is *especially* true if customization or
configuration is required.

> > This would be caught immediately if it's properly maintained "project".
> 
> Or alternatively would allow people to quickly attack a large number of
> developers :)

Indeed.

						- Ted
