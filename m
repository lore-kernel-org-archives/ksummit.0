Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30D958B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 16:11:13 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0252.hostedemail.com
	[216.40.44.252])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id BBB001DCA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 16:11:12 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id B7FA6183F9A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 15:32:50 +0000 (UTC)
Date: Fri, 10 Jul 2015 11:32:47 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: josh@joshtriplett.org
Message-ID: <20150710113247.1ba1012d@gandalf.local.home>
In-Reply-To: <20150709210059.GA3720@cloud>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud> <20150709203830.GF7021@wotan.suse.de>
	<20150709210059.GA3720@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Thu, 9 Jul 2015 14:00:59 -0700
josh@joshtriplett.org wrote:

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
> 

Please don't! I use the 0day bot for testing various patches that I'm
experimenting with. These patches are very much not in complete form.
When they pass all my tests (and the 0day bot tests), I then start the
formal process of turning them into submittable patches.

-- Steve
