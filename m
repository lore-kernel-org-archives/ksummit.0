Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6F89E83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 08:17:00 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C134019B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 08:16:59 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Steven Rostedt <rostedt@goodmis.org>, Mark Brown <broonie@kernel.org>
In-Reply-To: <20160804131146.2136a189@gandalf.local.home>
References: <20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
	<20160804093355.30096bbe@gandalf.local.home>
	<20160804154444.GA10323@sirena.org.uk>
	<1470326213.2411.26.camel@HansenPartnership.com>
	<20160804170126.GC10383@sirena.org.uk>
	<20160804131146.2136a189@gandalf.local.home>
Date: Fri, 05 Aug 2016 11:16:57 +0300
Message-ID: <87invfocjq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 04 Aug 2016, Steven Rostedt <rostedt@goodmis.org> wrote:
> Perhaps we should document what people should strive to achieve, and
> state if you really don't have the time, then one may do without. But
> the more one has a clear change log and information showing where a bug
> happened, makes maintenance of the code in the future a little bit
> easier.

You can usually tell from the patch and the commit message whether the
author has ever had to dig through git history, desperately looking for
clues why the code was written the way it was, and why it broke. People
burned in the past tend to leave helpful breadcrumbs for their future
selves and others in the commit messages, and keep their patches so
small that identifying why the bisect landed there is trivial.

I am all for improving documentation. However, sadly it seems you can
preach about this all you want, but it is ultimately the personal
banging of the head to the wall that leads to enlightenment.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Technology Center
