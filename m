Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9AD19413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 15:47:41 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 353FC1F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 15:47:41 +0000 (UTC)
Date: Thu, 4 Aug 2016 17:47:38 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5hh9b07dnj.wl-tiwai@suse.de>
Message-ID: <alpine.LNX.2.00.1608041746120.22028@cbobk.fhfr.pm>
References: <3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
	<20160804093355.30096bbe@gandalf.local.home>
	<s5hh9b07dnj.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Thu, 4 Aug 2016, Takashi Iwai wrote:

> Agreed that it's a good practice.  But what if a fix isn't a
> regression fix?  Many stable patches are trivial ones like PCI ID
> additions.

If it's not a bugfix, the applicability to -stable is very questionable in 
my eyes.

Device IDs might be made the same exception as post-merge window PCI ID 
additions to Linus' tree. Even there, post -rc1, everything should be 
bugfix, but device ID additions are allowed.

-- 
Jiri Kosina
SUSE Labs
