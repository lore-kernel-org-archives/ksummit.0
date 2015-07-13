Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AC14EBCB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:29:05 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B0C512D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:29:05 +0000 (UTC)
Date: Mon, 13 Jul 2015 19:28:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jan Kara <jack@suse.cz>
Message-ID: <20150713162439.GI4289@mwanda>
References: <1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<20150710181409.GA30145@treble.redhat.com>
	<1436576450.27924.59.camel@stgolabs.net>
	<20150712034824.GA4236@treble.hsd1.ky.comcast.net>
	<20150712052317.GB15346@x>
	<20150712122823.GA4366@treble.redhat.com>
	<20150713140113.GB4341@mwanda>
	<20150713143331.GA21079@quack.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150713143331.GA21079@quack.suse.cz>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Mon, Jul 13, 2015 at 04:33:31PM +0200, Jan Kara wrote:
> On Mon 13-07-15 17:20:47, Dan Carpenter wrote:
> > On Sun, Jul 12, 2015 at 07:28:23AM -0500, Josh Poimboeuf wrote:
> > > I agree that the Reviewed-by tag doesn't apply here.  It communicates
> > > patch approval, rather than review helpfulness.  That's why I proposed a
> > > new tag from the patch author and/or maintainer.
> > 
> > I've lobbied for:
> > 
> > With-Fixes-from: xxx
> > 
> > It would only be given for actual bug fixes and not for complaining
> > about the subject line, white space or spelling mistakes.
> 
> This seems like overengineering to me. I usually give a credit in the changelog
> if I find someone's contribution big enough. Also a persistent reviewer will
> eventually get his credit via Reviewed-by :). So I don't think yet another
> tag is really necessary.

I could get as many reviewed-by tags as I wanted...  I basically only
write reviewed-by tags as a way of being nice to people sending patches.

Lots of people give credit for fixes in the changlog like but it's more
common to leave it out.  Also it's not searchable.

This happened hours ago in staging.  Someone sent a buggy patch and
reviewers spotted the bug but no one got credit.

http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2015-July/072662.html
http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2015-July/072668.html

Imagine how special Patrick would feel if we gave him a nice
"With-fix-from: Patrick Farrell <paf@cray.com>" tag.  :)  Also the other
rule would be that only the first person to report the bug gets the
credit (Sorry, Sudip).  The next version of the patch had a process
problem which Sudip noticed as well but that still doesn't earn a
with-fix-from tag.

regards,
dan carpenter
