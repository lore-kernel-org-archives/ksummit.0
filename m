Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 96E76B3D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 01:25:36 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D174F118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 01:25:35 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 2CF0920BDE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:25:35 -0400 (EDT)
Date: Fri, 10 Jul 2015 17:13:48 -0700
From: Greg KH <greg@kroah.com>
To: Darren Hart <dvhart@infradead.org>
Message-ID: <20150711001348.GA30675@kroah.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710143641.GW4341@mwanda> <20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com> <20150711000034.GU111846@vmdeb7>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150711000034.GU111846@vmdeb7>
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

On Fri, Jul 10, 2015 at 05:00:34PM -0700, Darren Hart wrote:
> On Fri, Jul 10, 2015 at 03:23:51PM -0700, Greg KH wrote:
> > On Fri, Jul 10, 2015 at 09:07:14AM -0700, Darren Hart wrote:
> > > On Fri, Jul 10, 2015 at 05:36:41PM +0300, Dan Carpenter wrote:
> > > > Or you could just create a generic form letter like Greg does.
> > > > 
> > > 
> > > OK, so this is precisely the kind of individually developed special purpose
> > > wizardry that I think hinders recruitment. Rather than having every maintainer
> > > reinvent this wheel in a subtly different a personal way (which gets back to the
> > > issues raised about subtly different expectations per maintainer), it makes a
> > > lot of sense to me to create a common infrastructure that we can all use.
> > 
> > Ok, feel free to use my "form letter" that I've created over the years
> > and expand on it for more common problems if I've missed anything.  I
> > just dump it into a response to the patch (3 keystrokes), and cut away
> > anything that isn't relevant to this specific patch.  Seems to work
> > pretty well in cutting down on me having to type the same thing all the
> > time.
> 
> Do you have something that automates the scanning for basic errors and builds
> and reports to you - or do you manually pull every patch out of your email
> client and run those tests yourself to find that the patch-bot needs to be
> deployed?

Almost all of the issues I list in that response I find just by looking
at the patch, they jump out instantly.  The ones for when the build is
broken or the patch doesn't apply get found when I do my "apply this
mbox of patches" work, which I usually do in chunks of 5 patches at a
time.

So no, I don't have anything automated, so yes almost all of these could
be found by a tool.  Oh look, we have that tool, which no one uses,
checkpatch.pl.

Ok, checkpatch will not catch the issue where your email client is
messed up, or when you send a series of patches with no numbering on
them, but that's way down the list of errors that I see by quantity.
And I think I review more "first timer" patches than anyone else in the
community.  If people actually ran checkpatch it would resolve almost
all of the issues I see.

> That's the kind of thing that it seems like could be automated and
> improve the quality level of patches that make it to the maintainers.

All of these are the "simple" issues that really don't take long to
resolve.  We have it documented in great detail on how to set up an
email client, how to format the patch, and how to get everything right
on the kernelnewbies.org site.  I also teach a class on this, one hour
max is all it takes, unless you are at a company with a broken email
system.  And then all bets are off, you better just install a Linux
email server in the corner to resolve your email issues, just like all
the major companies did (IBM, Intel, Microsoft, etc.)

I applaud your attempt here, and don't want to stop you from working on
it, but I think the real issue is having people actually look for the
documentation and tools we already have created to do this.  If you make
yet-another-tool, how are you going to advertise it any better than the
existing tools/documentation are?

good luck,

greg k-h
