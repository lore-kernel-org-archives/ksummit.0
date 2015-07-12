Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 290F8BBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 01:17:01 +0000 (UTC)
Received: from pmta2.delivery3.ore.mailhop.org
	(pmta2.delivery3.ore.mailhop.org [54.213.22.21])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id A75A5E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 01:17:00 +0000 (UTC)
Date: Sun, 12 Jul 2015 01:16:57 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Greg KH <greg@kroah.com>
Message-ID: <20150712011657.GH23515@io.lakedaemon.net>
References: <20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<alpine.DEB.2.10.1507110923220.2551@hadrien>
	<20150711151844.GB23515@io.lakedaemon.net>
	<20150711164535.GB8411@kroah.com>
	<20150711193539.GF23515@io.lakedaemon.net>
	<20150711224508.GA25449@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150711224508.GA25449@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
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

On Sat, Jul 11, 2015 at 03:45:08PM -0700, Greg KH wrote:
> On Sat, Jul 11, 2015 at 07:35:39PM +0000, Jason Cooper wrote:
> > We could address new users not knowing about it with a script.  Any
> > [PATCH] posts to a mailing list where the sender is a miss in the git
> > history bounces the email to the kernel-mentor list.
> > 
> > In case it wasn't obvious, I'd be willing to be one of those mentors if
> > I had a few others to rotate lead with.
> 
> Great, feel free to join the kernel-mentors list and be amazed at the
> silence :)

Subscribed.

> The fact that it's not well known might be one of the problems, but it
> has been tried, just pointing out that this isn't a new idea, not that
> it is an invalid one.

Ack, I'll hack together a script to spot first-time patch submitters and
flag them for Cc/Fwd to kernel-mentors.

thx,

Jason.
