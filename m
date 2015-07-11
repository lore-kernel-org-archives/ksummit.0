Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8DF71B1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 04:35:08 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1257E190
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 04:35:07 +0000 (UTC)
Date: Sat, 11 Jul 2015 12:34:34 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: josh@joshtriplett.org
Message-ID: <20150711043434.GA24356@wfg-t540p.sh.intel.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud> <20150709203830.GF7021@wotan.suse.de>
	<20150709210059.GA3720@cloud>
	<alpine.DEB.2.10.1507091723380.2532@hadrien>
	<20150709231131.GA4516@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709231131.GA4516@cloud>
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

On Thu, Jul 09, 2015 at 04:11:31PM -0700, josh@joshtriplett.org wrote:
> On Thu, Jul 09, 2015 at 05:24:06PM -0400, Julia Lawall wrote:
> > On Thu, 9 Jul 2015, josh@joshtriplett.org wrote:
> > 
> > > On Thu, Jul 09, 2015 at 10:38:30PM +0200, Luis R. Rodriguez wrote:
> > > > On Thu, Jul 09, 2015 at 01:11:27PM -0700, josh@joshtriplett.org wrote:
> > > > > Bonus if this is also wired into the 0day bot, so that you also find out
> > > > > if you introduce a new warning or error.
> > > >
> > > > No reason to make bots do stupid work, if we really wanted to consider
> > > > this a bit more seriously the pipeline could be:
> > > >
> > > >   mailing-list | coccinelle coccicheck| smatch | sparse | 0-day-bot
> > >
> > > That would effectively make the bot duplicate part of 0-day.  Seems
> > > easier to have some way to tell 0-day "if you see obvious procedural
> > > issues, don't bother with full-scale testing, just reject".
> > 
> > Not sure to understand.  Isn't it better to have the most feedback
> > possible?
> 
> If 0-day has enough bandwidth, sure.

0-day has good enough bandwidth, now and future. :)

> However, if this is going to
> encourage a large number of new contributors to quickly iterate a pile
> of patches, many of which are likely to have basic procedural issues in
> the first few iterations, then that may waste quite a lot of build time
> in 0-day.

0-day can reasonably handle that kind of load. Feel free to push code
10 times per day. It'll run all build/boot tests on the latest branch
HEAD until test completion or new HEAD arrives.

Thanks,
Fengguang
