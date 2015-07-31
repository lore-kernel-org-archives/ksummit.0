Return-Path: <Nicolas.FERRE@atmel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9EC70268
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 13:16:19 +0000 (UTC)
Received: from eusmtp01.atmel.com (eusmtp01.atmel.com [212.144.249.242])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 088D815A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 13:16:17 +0000 (UTC)
Message-ID: <55BB7397.3090407@atmel.com>
Date: Fri, 31 Jul 2015 15:09:43 +0200
From: Nicolas Ferre <nicolas.ferre@atmel.com>
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>, Tim Bird <tim.bird@sonymobile.com>,
	NeilBrown <neilb@suse.com>
References: <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon>	<20150709193718.GD9169@vmdeb7>
	<20150710143641.GW4341@mwanda>	<20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com>	<20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com>	<20150711055441.GA6316@sudip-PC>	<20150715212043.775be5d2@gandalf.local.home>	<20150716132551.GH4039@sirena.org.uk>	<20150716094720.2bf9f5ac@gandalf.local.home>	<55A7C7FE.6000604@sonymobile.com>
	<20150716094125.16cdda73@lwn.net>	<55A7D73F.4020105@sonymobile.com>	<20150716121620.65ce6daa@gandalf.local.home>	<55A7DAD8.2080902@sonymobile.com>
	<20150716125216.0d457104@gandalf.local.home>
In-Reply-To: <20150716125216.0d457104@gandalf.local.home>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>,
	Dan Carpenter <dan.carpenter@oracle.com>
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

Le 16/07/2015 18:52, Steven Rostedt a écrit :
> On Thu, 16 Jul 2015 09:24:56 -0700
> Tim Bird <tim.bird@sonymobile.com> wrote:
> 
> 
>> That's really good feedback.  I've often assumed that if you saw something
>> that needed fixing, you had a responsibility to properly format a patch
>> so as not to burden the maintainer.  I've labeled my own "best-effort,
>> but-probably-not-mainlinable" patches as [RFC PATCH..].  Would it be
>> worth having a convention for that sort of thing?
> 
> At a minimum, the patch should not be html, an attachment, nor have
> broken whitespace where the patch doesn't apply. But other than that,

Le me just react on the "no attachment" statement:

As a maintainer, I accept patches as attachments, rework them and
properly submit them.
For a newcomer, it's sometimes very difficult to find a way to send
patches with git or using a "patch/plain-text-friendly" SMTP server.

This mostly apply for company employees and breaking this barrier could
allow us to have more "gifts" in Neil Brown words.

When I recall how difficult it can be to gain a properly configured SMTP
server for my Mainline activities in a former company, I completely
measure the barrier for contribution it can be.

> just report the bug and say "this fixes it for me". And if it is a real
> bug, the maintainer should take it.

[..]

-- 
Nicolas Ferre
