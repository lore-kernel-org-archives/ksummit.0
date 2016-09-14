Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD929904
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:23:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0045.hostedemail.com
	[216.40.44.45])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 9CF5B1DAB9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:23:54 +0000 (UTC)
Message-ID: <1473863028.32273.28.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Greg KH <greg@kroah.com>
Date: Wed, 14 Sep 2016 07:23:48 -0700
In-Reply-To: <20160914115456.GB22341@kroah.com>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<20160914115456.GB22341@kroah.com>
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

On Wed, 2016-09-14 at 13:54 +0200, Greg KH wrote:
> On Tue, Sep 13, 2016 at 07:24:22PM -0700, Joe Perches wrote:
> > On Tue, 2016-09-13 at 19:03 -0700, Josh Triplett wrote:
> > > "Do
> > > not mass-reformat existing code, even if it doesn't follow these
> > > guidelines; doing so creates noise in version control history and makes
> > > patches fail to apply."
> > Or maybe add something like a new entry for what types of changes
> > are acceptable with a default of "none"
> > C:	Whitespace and Style
> Ick, no, we have way too many things in the MAINTAINERS file as it is...

So what would use propose instead?

I think the primary issue is people using "scripts/checkpatch.pl -f"

I think that shouldn't be done without an understanding of when
it is useful and when it is not useful to use that -f option.

I have proposed adding an undocumented --force option to checkpatch
which would disallow -f unless --force is also used.

https://lkml.org/lkml/2015/2/11/433

Does anyone object to this?
