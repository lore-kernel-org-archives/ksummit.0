Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3C52BBC8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:49:39 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A825312C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:49:38 +0000 (UTC)
Date: Thu, 9 Jul 2015 16:49:35 -0700
From: josh@joshtriplett.org
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20150709234935.GA4789@cloud>
References: <559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud> <20150709203830.GF7021@wotan.suse.de>
	<20150709210059.GA3720@cloud>
	<alpine.DEB.2.10.1507091723380.2532@hadrien>
	<20150709231131.GA4516@cloud>
	<alpine.DEB.2.10.1507091933550.2532@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1507091933550.2532@hadrien>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 09, 2015 at 07:35:39PM -0400, Julia Lawall wrote:
> 
> 
> On Thu, 9 Jul 2015, josh@joshtriplett.org wrote:
> 
> > On Thu, Jul 09, 2015 at 05:24:06PM -0400, Julia Lawall wrote:
> > > On Thu, 9 Jul 2015, josh@joshtriplett.org wrote:
> > >
> > > > On Thu, Jul 09, 2015 at 10:38:30PM +0200, Luis R. Rodriguez wrote:
> > > > > On Thu, Jul 09, 2015 at 01:11:27PM -0700, josh@joshtriplett.org wrote:
> > > > > > Bonus if this is also wired into the 0day bot, so that you also find out
> > > > > > if you introduce a new warning or error.
> > > > >
> > > > > No reason to make bots do stupid work, if we really wanted to consider
> > > > > this a bit more seriously the pipeline could be:
> > > > >
> > > > >   mailing-list | coccinelle coccicheck| smatch | sparse | 0-day-bot
> > > >
> > > > That would effectively make the bot duplicate part of 0-day.  Seems
> > > > easier to have some way to tell 0-day "if you see obvious procedural
> > > > issues, don't bother with full-scale testing, just reject".
> > >
> > > Not sure to understand.  Isn't it better to have the most feedback
> > > possible?
> >
> > If 0-day has enough bandwidth, sure.  However, if this is going to
> > encourage a large number of new contributors to quickly iterate a pile
> > of patches, many of which are likely to have basic procedural issues in
> > the first few iterations, then that may waste quite a lot of build time
> > in 0-day.
> 
> My understanding was that there were plenty of computational resources
> available.  I would think that a new contributor would like the most
> assurance possible that his next attempt would be successful, and thus
> would prefer to have all the information at once.

Fair enough.  Might as well go ahead with the full battery unless it
becomes a problem.

- Josh Triplett
