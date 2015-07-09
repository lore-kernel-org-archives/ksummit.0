Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 74ED3982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 21:03:02 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D024D126
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 21:03:01 +0000 (UTC)
Date: Thu, 9 Jul 2015 23:03:00 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: josh@joshtriplett.org, Fengguang Wu <fengguang.wu@intel.com>
Message-ID: <20150709210300.GG7021@wotan.suse.de>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud> <20150709203830.GF7021@wotan.suse.de>
	<20150709210059.GA3720@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709210059.GA3720@cloud>
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

On Thu, Jul 09, 2015 at 02:00:59PM -0700, josh@joshtriplett.org wrote:
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

Yeah true, Fengguang, is that an option?

  Luis
