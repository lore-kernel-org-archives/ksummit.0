Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E49F99FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:23:11 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0030.hostedemail.com
	[216.40.44.30])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 5E0AF1DCCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:23:11 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 95A9A173728
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:16:23 +0000 (UTC)
Date: Thu, 16 Jul 2015 12:16:20 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Tim Bird <tim.bird@sonymobile.com>
Message-ID: <20150716121620.65ce6daa@gandalf.local.home>
In-Reply-To: <55A7D73F.4020105@sonymobile.com>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<55A7D73F.4020105@sonymobile.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, 16 Jul 2015 09:09:35 -0700
Tim Bird <tim.bird@sonymobile.com> wrote:

> Here's just an anecdote to support this.  There's a highly qualified 
> developer at Sony I was talking to this week, who said that when he
> sees a bug in the mainline kernel, he usually just ignores it because
> the hassle-factor of submitting a patch is too high.

Ouch! But that's still no excuse to ignore it. There should be no
hassle factor in reporting a bug. Sending a patch along with it is a
plus. It at least demonstrates what is wrong. Now it may be a different
matter if you want your patch to make it into the kernel.

I've sent hundreds of patches to different subsystem maintainers (and
even Linus), where the patch was mostly used to show where the bug was,
and my version of the fix, but the final fix was authored by someone
else with just a Reported-by contributed to me. I'm fine with that, but
others may not be.

I heard that IBM once had a method where if you submitted a change, and
that change made it into kernel, even if the final change was not
authored by you, you still got credit for it. That's a fabulous way of
looking at contributions and giving credit to your employees.

-- Steve
