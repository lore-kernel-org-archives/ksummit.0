Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AC3BB997
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:51:48 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0128.hostedemail.com
	[216.40.44.128])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id CE29B1DB0D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:51:46 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 436EAB133B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:51:45 +0000 (UTC)
Message-ID: <1473864700.32273.33.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Greg KH <greg@kroah.com>
Date: Wed, 14 Sep 2016 07:51:40 -0700
In-Reply-To: <20160914143205.GA11149@kroah.com>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<20160914115456.GB22341@kroah.com>
	<1473863028.32273.28.camel@perches.com>
	<20160914143205.GA11149@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linux-foundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] checkpatch/Codingstyle and
 trivial patch spam
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2016-09-14 at 16:32 +0200, Greg KH wrote:
> On Wed, Sep 14, 2016 at 07:23:48AM -0700, Joe Perches wrote:
> > I think the primary issue is people using "scripts/checkpatch.pl -f"
> > I think that shouldn't be done without an understanding of when
> > it is useful and when it is not useful to use that -f option.
> I agree, people get annoyed by this.  I personally think that anyone who
> does get annoyed by it should just ignore them, or fix up the code to
> not get triggered by the reports.
> 
> But who am I to complain :)

Sure, but there really are old and crufty drivers that
shouldn't ever be touched as the hardware is obsolete
and churning that stuff really is almost pointless,
prone to defect insertion, and the result is untested.

Marking those drivers as obsolete or completed in
MAINTAINERS might help.

And there are maintainers that shall remain nameless
that think their code is especially good 'as-is' and
don't want it dusted off as code with cobwebs isn't
worth the bother cleaning to them.

> > I have proposed adding an undocumented --force option to checkpatch
> > which would disallow -f unless --force is also used.
> > https://lkml.org/lkml/2015/2/11/433
> > Does anyone object to this?
> None from me.

Going once...
