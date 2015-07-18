Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E535F305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 18 Jul 2015 22:58:40 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.225])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 4580D12D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 18 Jul 2015 22:58:39 +0000 (UTC)
Date: Sat, 18 Jul 2015 18:59:15 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150718185915.146bcc23@grimm.local.home>
In-Reply-To: <20150718212932.GA11162@sirena.org.uk>
References: <20150710143641.GW4341@mwanda> <20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com> <20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com> <20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150718105055.GE5422@mwanda>
	<20150718081914.7d904bfa@gandalf.local.home>
	<20150718212932.GA11162@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>,
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

On Sat, 18 Jul 2015 22:29:32 +0100
Mark Brown <broonie@kernel.org> wrote:


> Two weeks feels like a better lower bound to me for the point between
> people being "normally" busy and there being some kind of problem.

Like I have previously said. I (and others) suggest one week as a
minimum. It's a general rule that we came up as the minimum (for us)
that it wouldn't bother us, because we were getting pings after a day
or two. This happened a number of times, and we finally ended up telling
people that if you send pings less than a week we are going to ignore
the patch.

If we are going to make any general rule (for adding to
SubittingPatches), it should say something like "If you don't hear from
a maintainer after sending a patch, it probably means they are busy.
Wait at least a week (and if you don't want to annoy the maintainer too
much, wait two weeks), before asking about it".

-- Steve
