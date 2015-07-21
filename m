Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 58C6C67
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 05:57:23 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3607FED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 05:57:21 +0000 (UTC)
Date: Tue, 21 Jul 2015 07:57:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <55AD7263.8050605@roeck-us.net>
Message-ID: <alpine.DEB.2.02.1507210753560.2065@localhost6.localdomain6>
References: <20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<alpine.DEB.2.10.1507201022370.2408@hadrien>
	<20150720203007.GA7797@kroah.com> <55AD7263.8050605@roeck-us.net>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
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

On Mon, 20 Jul 2015, Guenter Roeck wrote:

> On 07/20/2015 01:30 PM, Greg KH wrote:
> 
> > > If there really is a problem that some maintainer is getting inundated
> > > with patches addressing unimportant cosmetic issues, could it be a good
> > > idea to:
> > > 
> > > * Fix the code and get it over with,
> > > * Drop the code from the kernel, if no one uses it, or
> > > * Put a comment in the file saying that the file is no longer being
> > > actively developed and only bug fixes will be accepted.
> > 
> > I agree with this.  If your subsystem is constantly getting hit with
> > coding style cleanups that you don't want (i.e. SCSI), put something in
> > the top of the file that says "don't clean up the style".
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

This seems like a good idea.  Maybe get_maintainers could add a line about 
this somehow too for people who do cleanups that are not inspired by 
checkpatch.

This does assume that the decision is mostly by maintainer rather than by 
file.

julia
