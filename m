Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B90D7ABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 04:59:47 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0088.hostedemail.com
	[216.40.44.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C0D497C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 04:59:45 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 8AF9CB1049
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 01:20:48 +0000 (UTC)
Date: Wed, 15 Jul 2015 21:20:43 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Message-ID: <20150715212043.775be5d2@gandalf.local.home>
In-Reply-To: <20150711055441.GA6316@sudip-PC>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710143641.GW4341@mwanda> <20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com> <20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com> <20150711055441.GA6316@sudip-PC>
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

On Sat, 11 Jul 2015 11:24:41 +0530
Sudip Mukherjee <sudipm.mukherjee@gmail.com> wrote:

> Another problem, when a newbie tries to move out of staging to some other
> subsystem he likes, the maintainer may not be that much responsive. Just
> for example, i submitted a patch on November, 2014 and I am yet to receive
> a reply or review to that and the patch was not a style correction patch.

BTW, it should always be OK to ping the maintainer if they ignore a
patch. I believe one week is a good time to wait. And again in another
week if they still do not reply. I know a few maintainers that think if
they get to a patch that is old and the author never pinged them, they
think the author doesn't think that patch is too important and they
just delete it.

I know I've been bad when patches are sent to me, especially if I'm
traveling and I don't have access to a real computer (read the patch on
my phone). I'll mark it with 'todo' and go on. By the time I get home,
I have 10 or 20 emails marked 'todo' and I could spend days on a few of
them before continuing. Finally, they just get buried, and lost in the
abyss of my INBOX. I never delete them, and after my inbox gets too
big, I'll actually try to purge it from oldest to newest, and I have
replied to patches that were over a year old, and even applied them!

I tell everyone, that if they do not hear from me within a week, please
send me a 'ping'. It will put that patch higher in the 'todo' stack.

I'm sure all maintainers are fine with a friendly ping after a week.
Don't send a ping before then, because maintainers are busy, and may
get annoyed by being too pushy.

-- Steve
