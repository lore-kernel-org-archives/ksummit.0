Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E3A8FAE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 00:00:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F2623150
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 00:00:38 +0000 (UTC)
Date: Fri, 10 Jul 2015 17:00:34 -0700
From: Darren Hart <dvhart@infradead.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20150711000034.GU111846@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710143641.GW4341@mwanda> <20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710222351.GA28632@kroah.com>
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

On Fri, Jul 10, 2015 at 03:23:51PM -0700, Greg KH wrote:
> On Fri, Jul 10, 2015 at 09:07:14AM -0700, Darren Hart wrote:
> > On Fri, Jul 10, 2015 at 05:36:41PM +0300, Dan Carpenter wrote:
> > > Or you could just create a generic form letter like Greg does.
> > > 
> > 
> > OK, so this is precisely the kind of individually developed special purpose
> > wizardry that I think hinders recruitment. Rather than having every maintainer
> > reinvent this wheel in a subtly different a personal way (which gets back to the
> > issues raised about subtly different expectations per maintainer), it makes a
> > lot of sense to me to create a common infrastructure that we can all use.
> 
> Ok, feel free to use my "form letter" that I've created over the years
> and expand on it for more common problems if I've missed anything.  I
> just dump it into a response to the patch (3 keystrokes), and cut away
> anything that isn't relevant to this specific patch.  Seems to work
> pretty well in cutting down on me having to type the same thing all the
> time.

Do you have something that automates the scanning for basic errors and builds
and reports to you - or do you manually pull every patch out of your email
client and run those tests yourself to find that the patch-bot needs to be
deployed? That's the kind of thing that it seems like could be automated and
improve the quality level of patches that make it to the maintainers.

-- 
Darren Hart
Intel Open Source Technology Center
