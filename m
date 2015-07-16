Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD42783D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 14:57:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0129.hostedemail.com
	[216.40.44.129])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A8DEAEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 14:57:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 01C35184069
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 14:57:54 +0000 (UTC)
Date: Thu, 16 Jul 2015 10:57:51 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150716105751.6efc15b6@gandalf.local.home>
In-Reply-To: <20150716144155.GM4039@sirena.org.uk>
References: <20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<20150716144155.GM4039@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
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

On Thu, 16 Jul 2015 15:41:55 +0100
Mark Brown <broonie@kernel.org> wrote:

> On Thu, Jul 16, 2015 at 09:47:20AM -0400, Steven Rostedt wrote:
> 
> > Well, then to each their own. I prefer the content free ping, because in
> > my mail client (claws), it brings the original patch up to the front
> > (my threading is to sort by latest email in the thread). A simple ping
> > will move their patch ahead of other patches that may have been sent
> > later, but are still in the abyss.
> 
> Interesting, not noticed a mail client with that sorting scheme before.
> 

Both claws and evolution do this. I believe it's default for evolution,
and I kind of remember having to select this sorting style with claws.

> > A resend will just be a duplicate in my inbox and it will confuse me
> > about why I have more than one of the same patch.
> 
> That happens often enough anyway due to people sending new versions in
> response to other review comments or similar so I find I need to cope
> with discarding old copies of things anyway.

Oh, I expect a new version. Usually they are marked with v2, and that
lets me know to ignore the old one.

> > One of the issues with newcomers coming to development of the Linux
> > kernel, is that every maintainer is different. We should be trying
> > harder to let people know what we prefer. Every maintainer expects
> > something different, but it's up to the maintainer to explicitly let
> > others know what they want. You can't expect everyone to read your
> > mind.
> 
> I basically agree with that, what I'm saying on the response time is
> that I don't think you're setting realistic baselines for people.  A
> week is just not what's actually happening in large parts of the kernel.
> There are some people I'd expect to respond within a week in the normal
> course of affairs but there are more where I wouldn't worry about it and
> even the more responsive people are often slower on larger changes like
> new driver submissions.

And a lot of what maintainers prefer has to deal with the types of
changes they handle. I don't handle new devices. I usually handle new
features for tracing or bug fixes. Sometimes its updates for different
archs.

I especially prefer the ping if its for a patch series, as sending out
a new patch series that didn't change anything will definitely waste my
time, as I usually compare the old with the new to see what changed.

-- Steve
