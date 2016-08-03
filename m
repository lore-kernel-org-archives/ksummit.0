Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2ADF07AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:21:18 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B8E26115
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:21:17 +0000 (UTC)
Date: Wed, 3 Aug 2016 15:21:15 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
In-Reply-To: <1600610.QIejSIJ3WK@vostro.rjw.lan>
Message-ID: <alpine.LNX.2.00.1608031517191.22028@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<87oa5aqjmq.fsf@intel.com> <20160803110935.GA26270@kroah.com>
	<1600610.QIejSIJ3WK@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Wed, 3 Aug 2016, Rafael J. Wysocki wrote:

> Now, I understand why there are regressions in -stable and to me it would
> be just fine to say that they will be there occasionally, so as to prevent
> supporting the "no regressions in -stable at all" expectation that (a) is
> unrealistic today and (b) seems to be quite widespread.
> 
> Or do we really want to meet that expectation?

My primary goal when I was starting this thread (and I certainly didn't 
expect it to become such a gigantic monster :) ) was to try to figure out 
how to do better on this front. Of course, perfect is the enemy of good, 
but *trying* to find ways how to improve the regression rate seems like a 
reasoneble thing to attempt at least.

That's where some of my proposals in this thread some time ago were coming 
from.

Thanks,

-- 
Jiri Kosina
SUSE Labs
