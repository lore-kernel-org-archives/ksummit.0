Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 99DA6273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 19:33:13 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0199.hostedemail.com
	[216.40.44.199])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 87A40A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 19:33:12 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 41B8C29039B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 17:06:08 +0000 (UTC)
Date: Fri, 17 Jul 2015 13:06:04 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20150717130604.04c25272@gandalf.local.home>
In-Reply-To: <20150717165925.GA1424@x>
References: <20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
	<20150717101151.5d5bc86d@lwn.net> <20150717165925.GA1424@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Fri, 17 Jul 2015 09:59:26 -0700
Josh Triplett <josh@joshtriplett.org> wrote:


> That's the kind of thing that ought to be raised, politely, in response
> to such a mail, pointing out that the kernel's coding style should be
> universal to avoid making people deal with maintainer-specific
> idiosyncrasies.  A few reminders of that from other kernel maintainers
> couldn't hurt.

Well, sometimes its maintainers that are telling other maintainers what
to do. It's not just newbies that get this treatment.


> 
> Such additional requirements don't seem onerous to the maintainer making
> them, but add them up across all maintainers and you have a horrendous
> mess.
> 

Perhaps if someone is sending you a one time patch, and you have your
own idiosyncrasy outside of CodingStyle, then it should be the
maintainer that makes the clean up. If someone starts sending you patch
series and may become a new player in your subsystem, then you can have
them start submitting such stylized formatting. But those types of
comments really shouldn't be made to the fly by patcher.

-- Steve
