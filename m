Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C69069BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 19:46:39 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C8965143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 19:46:38 +0000 (UTC)
Date: Wed, 14 Sep 2016 12:46:32 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Joe Perches <joe@perches.com>
Message-ID: <20160914194632.GA16397@roeck-us.net>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<20160914115456.GB22341@kroah.com>
	<1473863028.32273.28.camel@perches.com>
	<77a6ad59-9fdc-7d2b-0186-49016e05a403@roeck-us.net>
	<1473865997.32273.36.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1473865997.32273.36.camel@perches.com>
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

On Wed, Sep 14, 2016 at 08:13:17AM -0700, Joe Perches wrote:
> On Wed, 2016-09-14 at 07:45 -0700, Guenter Roeck wrote:
> > On 09/14/2016 07:23 AM, Joe Perches wrote:
> > > So what would use propose instead?
> > Introduce .checkpatch ?
> 
> A generic .checkpatch.conf option already exists which is
> looked for in . then $HOME
> 
That isn't kept in the repository as far as I can see.

> Do you mean a directory based hierarchy of .checkpatch.conf
> files in the git tree so a maintainer could add something like:
> 
> $ cat include/trace/events/.checkpatch.conf
> --ignore=spacing
> 
> and that applies only to that directory?
> 
That might solve the problem. However,

> That might get confusing and have conflicting options
> on the command line.

... it currently has a different scope: It is expected to be used in a
local setting, not delivered as part of the repository. So it would not
help to declare that per-directory settings override global settings
since people expect the global settings to work.

But, yes, something like that might help.

Guenter
