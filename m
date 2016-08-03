Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8E2E383D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 22:16:29 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1C447E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 22:16:29 +0000 (UTC)
Date: Wed, 3 Aug 2016 15:16:21 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20160803221621.GA17248@roeck-us.net>
References: <20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net> <20160803161234.GA32965@dtor-ws>
	<57A21F88.7000504@roeck-us.net>
	<alpine.LNX.2.00.1608032052430.22028@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1608032052430.22028@cbobk.fhfr.pm>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 03, 2016 at 08:57:26PM +0200, Jiri Kosina wrote:
> On Wed, 3 Aug 2016, Guenter Roeck wrote:
> 
> > How can one reasonable expect a stable maintainer to determine if a 
> > patch for an oddball architecture applies, or one for a random subsystem?
> 
> So *who* is supposed to be *the* responsible person for cherry-picking the 
> patch and verifying that it is applicable to particular -stable?
> 

Cherry-picking and verifying applicability are two separate tasks, so mixing
them together makes it a bit difficult to answer the question. I'll focus
on verifying applicability.

> The statement above suggests that it's definitely not a responsibility of 
> stable branch maintainer.
> 

Question is if it _can_ reasonably be the responsibility of a stable branch
maintainer to verify if a patch is applicable. I don't think it is, beyond
"It is tagged for this release". Of course, I may be wrong, and both
stable branch maintainers and the community may have a different opinion.

> OTOH Greg (and not only him) argues that maintainers are already 
> overloaded, so asking them to actually prepare patches for particular 
> stable trees (at least the ones they care about) is too much to ask.
> 

That is a bit different, though. I don't think I (or anyone else) suggested
that subsystem maintainers should start _preparing_ patches for stable trees.
The question is who can make the call if a patch applies to a specific stable
tree or not, especially if it is only marked with a generic "Cc: stable".

Guenter
