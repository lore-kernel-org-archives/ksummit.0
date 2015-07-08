Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A6314B68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 15:00:59 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 207DAEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 15:00:59 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 503CA20A6F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 11:00:58 -0400 (EDT)
Date: Wed, 8 Jul 2015 08:00:56 -0700
From: Greg KH <greg@kroah.com>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20150708150056.GB11945@kroah.com>
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
> 
> This leads to my second concern which is:
> 
> 2) Having shell scripts run on master.kernel.org can be a significant
> security concern; this is *especially* true if customization or
> configuration is required.

Yeah, I really don't want to see shell access return to any kernel.org
systems, and that includes git hooks.  Using local git hooks to send
emails out seems to work well given that people here are already doing
it for their workflows.

thanks,

greg k-h
