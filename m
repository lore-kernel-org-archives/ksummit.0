Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C4DFAAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 21:24:14 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 09E1C165
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 21:24:12 +0000 (UTC)
Date: Thu, 9 Jul 2015 17:24:06 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
To: josh@joshtriplett.org
In-Reply-To: <20150709210059.GA3720@cloud>
Message-ID: <alpine.DEB.2.10.1507091723380.2532@hadrien>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud> <20150709203830.GF7021@wotan.suse.de>
	<20150709210059.GA3720@cloud>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Thu, 9 Jul 2015, josh@joshtriplett.org wrote:

> On Thu, Jul 09, 2015 at 10:38:30PM +0200, Luis R. Rodriguez wrote:
> > On Thu, Jul 09, 2015 at 01:11:27PM -0700, josh@joshtriplett.org wrote:
> > > Bonus if this is also wired into the 0day bot, so that you also find out
> > > if you introduce a new warning or error.
> >
> > No reason to make bots do stupid work, if we really wanted to consider
> > this a bit more seriously the pipeline could be:
> >
> >   mailing-list | coccinelle coccicheck| smatch | sparse | 0-day-bot
>
> That would effectively make the bot duplicate part of 0-day.  Seems
> easier to have some way to tell 0-day "if you see obvious procedural
> issues, don't bother with full-scale testing, just reject".

Not sure to understand.  Isn't it better to have the most feedback
possible?

julia
