Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 063AF723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 17:24:43 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9FB3B241
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 17:24:42 +0000 (UTC)
Date: Sun, 31 Jul 2016 23:02:15 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Fengguang Wu <fengguang.wu@intel.com>
Message-ID: <20160731173214.GO9681@localhost>
References: <20160725190125.GS5537@wotan.suse.de> <5486315.Z6uhQZYKqJ@avalon>
	<20160728205324.GB5642@wfg-t540p.sh.intel.com>
	<2443703.ScQNYO34Bz@avalon>
	<20160728230713.GB18980@wfg-t540p.sh.intel.com>
	<20160728233327.GC3296@wotan.suse.de>
	<20160729000912.GA17232@wfg-t540p.sh.intel.com>
	<20160730170556.GR3296@wotan.suse.de>
	<20160731063558.GA3493@wfg-t540p.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160731063558.GA3493@wfg-t540p.sh.intel.com>
Cc: Vegard Nossum <vegard.nossum@gmail.com>,
	Wenzhong Sun <wenzhong.sun@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Nominating Fengguang Wu - 0-day
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 31, 2016 at 02:35:58PM +0800, Fengguang Wu wrote:
> >
> >How about linux-next ?
> 
> linux-next could be perfectly supported, however in a different
> "rebase" way than the "merges" for RC kernels.
> 
> Suppose there are 100 branches based on -rc2 and another 100 branches
> on -rc3. We can typically merge most of the 200 branches onto -rc3,
> since there are relatively few changes between -rc2 and -rc3.

Since linux-next already contains all maintainer branches slated for -next,
merging that won't help much and seems tedious. I think 0day should just
runs tests on top of linux-next everyday and report, if not done already.

-- 
~Vinod
