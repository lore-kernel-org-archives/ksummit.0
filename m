Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84E90BCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 16:32:39 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E900517A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 16:32:38 +0000 (UTC)
Date: Fri, 10 Jul 2015 09:32:31 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150710163230.GA4778@x>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud> <20150709203830.GF7021@wotan.suse.de>
	<20150709210059.GA3720@cloud>
	<20150710113247.1ba1012d@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710113247.1ba1012d@gandalf.local.home>
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

On Fri, Jul 10, 2015 at 11:32:47AM -0400, Steven Rostedt wrote:
> On Thu, 9 Jul 2015 14:00:59 -0700
> josh@joshtriplett.org wrote:
> 
> > On Thu, Jul 09, 2015 at 10:38:30PM +0200, Luis R. Rodriguez wrote:
> > > On Thu, Jul 09, 2015 at 01:11:27PM -0700, josh@joshtriplett.org wrote:
> > > > Bonus if this is also wired into the 0day bot, so that you also find out
> > > > if you introduce a new warning or error.
> > > 
> > > No reason to make bots do stupid work, if we really wanted to consider
> > > this a bit more seriously the pipeline could be:
> > > 
> > >   mailing-list | coccinelle coccicheck| smatch | sparse | 0-day-bot
> > 
> > That would effectively make the bot duplicate part of 0-day.  Seems
> > easier to have some way to tell 0-day "if you see obvious procedural
> > issues, don't bother with full-scale testing, just reject".
> > 
> 
> Please don't! I use the 0day bot for testing various patches that I'm
> experimenting with. These patches are very much not in complete form.
> When they pass all my tests (and the 0day bot tests), I then start the
> formal process of turning them into submittable patches.

To clarify, I wasn't suggesting that 0-day do that in general; I was
suggesting that it *might* make sense for an automatic testing bot for
potentially malformed submissions to an automated test address might not
want to waste time running dozens of builds on something that doesn't
meet basic sanity checks.

Along the same lines, there's little point testing if something builds
on a dozen architectures if it doesn't even build on x86.

But perhaps the latter filter makes more sense than the former, and it'd
be more helpful to give people all the feedback at once, for the same
reason GCC doesn't stop at the first error.

- Josh Triplett
