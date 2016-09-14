Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 35490950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:35:10 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4DEE149
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:35:08 +0000 (UTC)
Date: Wed, 14 Sep 2016 16:35:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20160914143205.GA11149@kroah.com>
Message-ID: <alpine.DEB.2.10.1609141633470.3033@hadrien>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<20160914115456.GB22341@kroah.com>
	<1473863028.32273.28.camel@perches.com>
	<20160914143205.GA11149@kroah.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Joe Perches <joe@perches.com>, ksummit-discuss@lists.linux-foundation.org,
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



On Wed, 14 Sep 2016, Greg KH wrote:

> On Wed, Sep 14, 2016 at 07:23:48AM -0700, Joe Perches wrote:
> > On Wed, 2016-09-14 at 13:54 +0200, Greg KH wrote:
> > > On Tue, Sep 13, 2016 at 07:24:22PM -0700, Joe Perches wrote:
> > > > On Tue, 2016-09-13 at 19:03 -0700, Josh Triplett wrote:
> > > > > "Do
> > > > > not mass-reformat existing code, even if it doesn't follow these
> > > > > guidelines; doing so creates noise in version control history and makes
> > > > > patches fail to apply."
> > > > Or maybe add something like a new entry for what types of changes
> > > > are acceptable with a default of "none"
> > > > C:	Whitespace and Style
> > > Ick, no, we have way too many things in the MAINTAINERS file as it is...
> >
> > So what would use propose instead?
> >
> > I think the primary issue is people using "scripts/checkpatch.pl -f"
> >
> > I think that shouldn't be done without an understanding of when
> > it is useful and when it is not useful to use that -f option.
>
> I agree, people get annoyed by this.  I personally think that anyone who
> does get annoyed by it should just ignore them, or fix up the code to
> not get triggered by the reports.
>
> But who am I to complain :)
>
> > I have proposed adding an undocumented --force option to checkpatch
> > which would disallow -f unless --force is also used.
> >
> > https://lkml.org/lkml/2015/2/11/433
> >
> > Does anyone object to this?

The --force is only required for non-staging code?  If it is required for
staging code, then we will have to document it in the outreachy tutorial,
and then all the (non-outreachy) newbies who look at the tutorial will
know about it...

julia
