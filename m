Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 12633997
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 11:54:51 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8336AA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 11:54:50 +0000 (UTC)
Date: Wed, 14 Sep 2016 13:54:56 +0200
From: Greg KH <greg@kroah.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20160914115456.GB22341@kroah.com>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1473819862.32273.16.camel@perches.com>
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

On Tue, Sep 13, 2016 at 07:24:22PM -0700, Joe Perches wrote:
> On Tue, 2016-09-13 at 19:03 -0700, Josh Triplett wrote:
> > "Do
> > not mass-reformat existing code, even if it doesn't follow these
> > guidelines; doing so creates noise in version control history and makes
> > patches fail to apply."
> 
> It also could be useful to somehow separate newer, more actively
> developed code from the old stuff that should remain more static.
> 
> Old code should really only get code improvements like API changes,
> size reductions, constifications, performance improvements and bug
> fixes.
> 
> Maybe change the MAINTAINERS sections S: entries to have more
> comprehensive descriptions of what types of changes are acceptable
> for each section.
> 
> Right now it's
> 
> S:	Supported
> or
> S:	Maintained
> 
> Or maybe add something like a new entry for what types of changes
> are acceptable with a default of "none"
> 
> C:	Whitespace and Style	

Ick, no, we have way too many things in the MAINTAINERS file as it is...

thanks,

greg k-h
