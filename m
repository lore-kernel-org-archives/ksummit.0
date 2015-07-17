Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 58CCA41C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 16:11:59 +0000 (UTC)
Received: from vena.lwn.net (tex.lwn.net [70.33.254.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 503CA11E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 16:11:58 +0000 (UTC)
Date: Fri, 17 Jul 2015 10:11:51 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150717101151.5d5bc86d@lwn.net>
In-Reply-To: <1437063875.18768.59.camel@HansenPartnership.com>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Thu, 16 Jul 2015 19:24:35 +0300
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> Seriously, what is the actual problem?  Who bites the heads off newbies
> for sport?  I ask because the first patch submission is usually treated
> with helpfulness and tolerance, at least where I've been on the cc list.

So, obviously, I was going for dramatic effect in my other posting.
"Biting the heads off newbies" doesn't ordinarily happen.  I think the
whole Nick episode has shown how tolerant we can be, actually.  The point
I was trying to make is that there isn't one way to submit a patch to the
kernel, there's a hundred ways to submit to various subsystems.

Over on linux-kernel, I just saw a newish developer being politely told
that a patch was unacceptable because the local variable declarations
were not in reverse-Christmas-tree order.  That's not in CodingStyle, and
it's certainly not a universal rule in the kernel; it's just one of those
things you have to know if you wander into certain scary neighborhoods.

I don't know if there's anything to be done about it, but I do think that
this thicket of weird local rules is intimidating to new developers, even
if missteps are dealt with politely.

jon
