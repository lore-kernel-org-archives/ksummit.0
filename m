Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 016AF3C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 22:32:45 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 73619115
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 22:32:44 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 7BD5220DA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 18:32:43 -0400 (EDT)
Date: Mon, 20 Jul 2015 15:32:42 -0700
From: Greg KH <greg@kroah.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20150720223242.GB23638@kroah.com>
References: <20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<alpine.DEB.2.10.1507201022370.2408@hadrien>
	<20150720203007.GA7797@kroah.com> <55AD7263.8050605@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55AD7263.8050605@roeck-us.net>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Mon, Jul 20, 2015 at 03:12:51PM -0700, Guenter Roeck wrote:
> On 07/20/2015 01:30 PM, Greg KH wrote:
> 
> >>If there really is a problem that some maintainer is getting inundated
> >>with patches addressing unimportant cosmetic issues, could it be a good
> >>idea to:
> >>
> >>* Fix the code and get it over with,
> >>* Drop the code from the kernel, if no one uses it, or
> >>* Put a comment in the file saying that the file is no longer being
> >>actively developed and only bug fixes will be accepted.
> >
> >I agree with this.  If your subsystem is constantly getting hit with
> >coding style cleanups that you don't want (i.e. SCSI), put something in
> >the top of the file that says "don't clean up the style".
> >
> 
> How about a cleanup tag in MAINTAINERS ? Then checkpatch could warn
> if it is used on a file tagged as do-not-clean, and every maintainer
> could set preferences as desired.
> 
> Something like
> 
> C: yes
> C: limited (prior to functional changes only)
> C: no
> 
> Either limited or yes could be the default.
> 
> The "Obsolete" status presumably implies that cleanups are not desired,
> and checkpatch could issue a warning if it is run on an obsolete file
> or subsystem.

Ugh, let's stop trying to add more flags to MAINTAINERS that no one will
notice and will get out of date and be a pain to maintain over time.

Is this really such a major issue?  If you don't want cleanup patches,
just politely refuse them and point people at drivers/staging/ where I
will gladly take them.  It's not tough at all.

Or better yet, take Julia's advice, and just fix up your subsystem to
not need these patches at all.  That should take all of an afternoon's
worth of effort at most, drivers/scsi/ notwithstanding, that beast is
horrid...

thanks,

greg k-h
