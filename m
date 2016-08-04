Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 46E5171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 01:00:31 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 960761CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 01:00:30 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Jiri Kosina <jikos@kernel.org>
Date: Thu, 04 Aug 2016 03:05:43 +0200
Message-ID: <1754001.FoBt1O55rC@vostro.rjw.lan>
In-Reply-To: <alpine.LNX.2.00.1608031517191.22028@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<1600610.QIejSIJ3WK@vostro.rjw.lan>
	<alpine.LNX.2.00.1608031517191.22028@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Wednesday, August 03, 2016 03:21:15 PM Jiri Kosina wrote:
> On Wed, 3 Aug 2016, Rafael J. Wysocki wrote:
> 
> > Now, I understand why there are regressions in -stable and to me it would
> > be just fine to say that they will be there occasionally, so as to prevent
> > supporting the "no regressions in -stable at all" expectation that (a) is
> > unrealistic today and (b) seems to be quite widespread.
> > 
> > Or do we really want to meet that expectation?
> 
> My primary goal when I was starting this thread (and I certainly didn't 
> expect it to become such a gigantic monster :) ) was to try to figure out 
> how to do better on this front. Of course, perfect is the enemy of good, 
> but *trying* to find ways how to improve the regression rate seems like a 
> reasoneble thing to attempt at least.

I tend to agree with Greg that it would be good to measure the problem
quantitatively for this purpose.

How many regressions are introduced into -stable?  How long do they live on the
average (from the report to the fix)?

It really would be good to know the answers to these questions for the
discussion to be productive IMO.

> That's where some of my proposals in this thread some time ago were coming 
> from.

OTOH, there are some things about the current process that may potentially
become problematic at least occasionally.  For example:

(a) It heavily depends on subsystem mainteiners to DTRT when they tag mainline
    commits for -stable (and the more aggressively they do that, the more likely
    they are to overlook something potentially problematic).

(b) Non-maintainers who send -stable inclusion requests may not be aware of
    some potentially problematic side-effects of the commits they would like
    to see in -stable.

So question is whether or not the above need to be addressed somehow and that's
quite independent of the numbers (the fact that we have been doing quite well
so far doesn't mean that there won't be any problems in the future due to those
things and the other way around).

Thanks,
Rafael
