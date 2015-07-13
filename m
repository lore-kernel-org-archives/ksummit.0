Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 911EEBCB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:23:00 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0214.hostedemail.com
	[216.40.44.214])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 26B031DCB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:23:00 +0000 (UTC)
Date: Mon, 13 Jul 2015 12:22:57 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Fengguang Wu <fengguang.wu@intel.com>
Message-ID: <20150713122257.16172169@gandalf.local.home>
In-Reply-To: <20150712125552.GA12558@wfg-t540p.sh.intel.com>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
	<20150707225223.GG12491@dtor-ws> <20150708021619.GC3102@kroah.com>
	<alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
	<20150708093511.GL11162@sirena.org.uk>
	<20150708140155.GA20551@thunk.org>
	<20150712125552.GA12558@wfg-t540p.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Sun, 12 Jul 2015 20:55:52 +0800
Fengguang Wu <fengguang.wu@intel.com> wrote:


> So the chances are that 0day infrastructure has the ready made setups
> to run such service. We already have the commit-by-commit walker to
> run checkpatch.pl (though I rarely send its report out due to it'd be
> noisy and there is no clear criterion to answer "who would be glad to
> receive such reports?").
> 

Is there a web site available that would let us see what checkpatch
errors the 0day bot found for our repo? I don't want an email, but
it would be nice to just go to some web page to look if anything new
appeared.

-- Steve
