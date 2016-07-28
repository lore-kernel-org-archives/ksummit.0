Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9EB002C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 23:38:39 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F4A2A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 23:38:38 +0000 (UTC)
Date: Fri, 29 Jul 2016 01:38:36 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Fengguang Wu <fengguang.wu@intel.com>
In-Reply-To: <20160728230713.GB18980@wfg-t540p.sh.intel.com>
Message-ID: <alpine.LNX.2.00.1607290131390.24757@cbobk.fhfr.pm>
References: <20160725190125.GS5537@wotan.suse.de> <5486315.Z6uhQZYKqJ@avalon>
	<20160728205324.GB5642@wfg-t540p.sh.intel.com>
	<2443703.ScQNYO34Bz@avalon>
	<20160728230713.GB18980@wfg-t540p.sh.intel.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Nominating Fengguang Wu - 0-day
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 29 Jul 2016, Fengguang Wu wrote:

> I need your understand that there are severe limitations what useful
> contents we can provide due to the nature of merge-test-bisect. For
> example, there will be no build logs specific for your branches/commits
> because the extensive build tests are possible only because your code
> are tested together with a large number of random others. 

I think this'd be an interesting thing to discuss per se, as my personal 
feeling is that the expectations of maintainers / git tree owners might be 
slightly diverging from reality.

The reason I am bringing this up is a very recent example here:

	https://lkml.org/lkml/2016/7/28/212

The 0day bot identified my patch as a build-breaker, and it took me quite 
some time to figure out that this has been actually broken for years 
already (IOW yes, the treee fails to build with some configs after my 
patch has been applied, but I'm pretty sure it breaks with the same config 
even without my patch).

Hence, if you could explain in a little bit more detailed way how 
developers should interpret the reports, I'd be very grateful for such 
session.

Special focus should probably be put on regressions -- once reported by 
your bot, I'd love to know the last-known-good base to compare against.

Oh, and thanks a *lot* for all the 0day efforts, I am pretty sure that it 
increases the speed of development while maintaining the quality, and a 
status update from you should IMO always be a welcome KS topic,

-- 
Jiri Kosina
SUSE Labs
