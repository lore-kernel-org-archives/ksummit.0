Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 60E90C58
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Jun 2019 07:10:01 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E947A2C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Jun 2019 07:10:00 +0000 (UTC)
Date: Sat, 29 Jun 2019 09:09:55 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5hzhm0q3p1.wl-tiwai@suse.de>
Message-ID: <alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
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

On Sat, 29 Jun 2019, Takashi Iwai wrote:
> On Fri, 28 Jun 2019 22:51:03 +0200,
> Luck, Tony wrote:
> > That captures for posterity the useful information without
> > bulking up the commit log with the blow-by-blow deltas of
> > how the patch series evolved across 27 versions submitted
> > to the mailing list.
> 
> Agreed.  And I'm thinking whether we may have come consistent tag
> for following the post discussions on ML archive.  Then the detailed
> descriptions can be dropped from the changelog, and readers can still
> follow easily.  e.g. the patch version change can be simply a
> reference URL.

This tag exists today:

     Link: https://lore.kernel.org/lkml/MESSAGE-ID

my 'grab patches from list' scripts insert that tag automatically and it's
part of the commit changelog in git. That allows you to just jump to the
mail archive of the merged submission.

As I said in the other reply when the submitter has a link to the previous
submission in the cover letter or for a single patch without cover letter
in the patch itself, then following a discussion/revision chain becomes
trivial.

We'd just need to make that mandatory and I'm all for it.

Thanks,

	tglx
