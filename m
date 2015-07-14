Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 17909BAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 13:09:52 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6426A1CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 13:09:51 +0000 (UTC)
Date: Tue, 14 Jul 2015 21:07:45 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150714130745.GA24191@wfg-t540p.sh.intel.com>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
	<20150707225223.GG12491@dtor-ws> <20150708021619.GC3102@kroah.com>
	<alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
	<20150708093511.GL11162@sirena.org.uk>
	<20150708140155.GA20551@thunk.org>
	<20150712125552.GA12558@wfg-t540p.sh.intel.com>
	<20150713122257.16172169@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150713122257.16172169@gandalf.local.home>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
 infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 13, 2015 at 12:22:57PM -0400, Steven Rostedt wrote:
> On Sun, 12 Jul 2015 20:55:52 +0800
> Fengguang Wu <fengguang.wu@intel.com> wrote:
> 
> 
> > So the chances are that 0day infrastructure has the ready made setups
> > to run such service. We already have the commit-by-commit walker to
> > run checkpatch.pl (though I rarely send its report out due to it'd be
> > noisy and there is no clear criterion to answer "who would be glad to
> > receive such reports?").
> > 
> 
> Is there a web site available that would let us see what checkpatch
> errors the 0day bot found for our repo? I don't want an email, but

I'd expect checkpatch trivial to run locally for one's own patches.

> it would be nice to just go to some web page to look if anything new
> appeared.

Ah OK, you are interested in "new" checkpatch warnings. Actually I
run checkpatch against the patch file rather than source file. In
patch mode, there is no record of new/old error ids.

Thanks,
Fengguang
