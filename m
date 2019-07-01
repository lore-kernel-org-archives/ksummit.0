Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9778C7204
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 09:05:36 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 50D4D834
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 09:05:36 +0000 (UTC)
Date: Mon, 1 Jul 2019 11:05:23 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
Message-ID: <nycvar.YFH.7.76.1907011104330.3207@cbobk.fhfr.pm>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 29 Jun 2019, Thomas Gleixner wrote:

> This tag exists today:
> 
>      Link: https://lore.kernel.org/lkml/MESSAGE-ID
> 
> my 'grab patches from list' scripts insert that tag automatically and it's
> part of the commit changelog in git. That allows you to just jump to the
> mail archive of the merged submission.

Agreed, this tag is super-userful.

> As I said in the other reply when the submitter has a link to the previous
> submission in the cover letter or for a single patch without cover letter
> in the patch itself, then following a discussion/revision chain becomes
> trivial.
> 
> We'd just need to make that mandatory and I'm all for it.

Is anyone aware of a simple way how to let 'git-am' generate is 
automatically?

If not, I'll try to look into git sources and add an option for that.

Thanks,

-- 
Jiri Kosina
SUSE Labs
