Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 100E5C00
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Jul 2019 14:22:20 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4768881
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Jul 2019 14:22:19 +0000 (UTC)
Message-ID: <1562250136.3187.3.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner
	<tglx@linutronix.de>,  Takashi Iwai <tiwai@suse.de>
Date: Thu, 04 Jul 2019 07:22:16 -0700
In-Reply-To: <87y31eov1l.fsf@concordia.ellerman.id.au>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<87y31eov1l.fsf@concordia.ellerman.id.au>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Thu, 2019-07-04 at 22:15 +1000, Michael Ellerman wrote:
> Thomas Gleixner <tglx@linutronix.de> writes:
> > On Sat, 29 Jun 2019, Takashi Iwai wrote:
> > > On Fri, 28 Jun 2019 22:51:03 +0200,
> > > Luck, Tony wrote:
> > > > That captures for posterity the useful information without
> > > > bulking up the commit log with the blow-by-blow deltas of
> > > > how the patch series evolved across 27 versions submitted
> > > > to the mailing list.
> > > 
> > > Agreed.  And I'm thinking whether we may have come consistent tag
> > > for following the post discussions on ML archive.  Then the
> > > detailed
> > > descriptions can be dropped from the changelog, and readers can
> > > still
> > > follow easily.  e.g. the patch version change can be simply a
> > > reference URL.
> > 
> > This tag exists today:
> > 
> >      Link: https://lore.kernel.org/lkml/MESSAGE-ID
> > 
> > my 'grab patches from list' scripts insert that tag automatically
> > and it's part of the commit changelog in git. That allows you to
> > just jump to the mail archive of the merged submission.
> 
> If you've got the link back to the mailing list archive, do you also
> need Cc: tags in the change log?

Cc: tags are another git artefact.  They're how you tell git-send-email 
where to send copies of the patch for review or notice, but they don't
really provide any intrinsic historical value.

Perhaps we should alter the convention and say that if you're using
git-send-email and need a cc: list, then you should put all the cc tags
below the cutoff, say always at the bottom.  That way the version
information would be first, which is more important for the review, the
sender would preserve and show the cc list and it would be eliminated
on git-am.  Any cc tags that were necessary (like cc: stable) could go
above the cutoff.

James
