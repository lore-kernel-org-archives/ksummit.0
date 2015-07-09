Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CBE66ABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 21:01:03 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 42B40192
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 21:01:03 +0000 (UTC)
Date: Thu, 9 Jul 2015 14:00:59 -0700
From: josh@joshtriplett.org
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20150709210059.GA3720@cloud>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud> <20150709203830.GF7021@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709203830.GF7021@wotan.suse.de>
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

On Thu, Jul 09, 2015 at 10:38:30PM +0200, Luis R. Rodriguez wrote:
> On Thu, Jul 09, 2015 at 01:11:27PM -0700, josh@joshtriplett.org wrote:
> > Bonus if this is also wired into the 0day bot, so that you also find out
> > if you introduce a new warning or error.
> 
> No reason to make bots do stupid work, if we really wanted to consider
> this a bit more seriously the pipeline could be:
> 
>   mailing-list | coccinelle coccicheck| smatch | sparse | 0-day-bot

That would effectively make the bot duplicate part of 0-day.  Seems
easier to have some way to tell 0-day "if you see obvious procedural
issues, don't bother with full-scale testing, just reject".

- Josh Triplett
