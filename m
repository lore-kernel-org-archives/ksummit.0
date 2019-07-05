Return-Path: <mpe@ellerman.id.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EF89EC21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 03:25:03 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 23DC887B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 03:25:02 +0000 (UTC)
From: Michael Ellerman <mpe@ellerman.id.au>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Takashi Iwai <tiwai@suse.de>, corbet@lwn.net
In-Reply-To: <1562250136.3187.3.camel@HansenPartnership.com>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<87y31eov1l.fsf@concordia.ellerman.id.au>
	<1562250136.3187.3.camel@HansenPartnership.com>
Date: Fri, 05 Jul 2019 13:24:57 +1000
Message-ID: <87zhlt17ue.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
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

James Bottomley <James.Bottomley@HansenPartnership.com> writes:
> On Thu, 2019-07-04 at 22:15 +1000, Michael Ellerman wrote:
>> Thomas Gleixner <tglx@linutronix.de> writes:
>> > On Sat, 29 Jun 2019, Takashi Iwai wrote:
>> > > On Fri, 28 Jun 2019 22:51:03 +0200,
>> > > Luck, Tony wrote:
>> > > > That captures for posterity the useful information without
>> > > > bulking up the commit log with the blow-by-blow deltas of
>> > > > how the patch series evolved across 27 versions submitted
>> > > > to the mailing list.
>> > > 
>> > > Agreed.  And I'm thinking whether we may have come consistent tag
>> > > for following the post discussions on ML archive.  Then the
>> > > detailed
>> > > descriptions can be dropped from the changelog, and readers can
>> > > still
>> > > follow easily.  e.g. the patch version change can be simply a
>> > > reference URL.
>> > 
>> > This tag exists today:
>> > 
>> >      Link: https://lore.kernel.org/lkml/MESSAGE-ID
>> > 
>> > my 'grab patches from list' scripts insert that tag automatically
>> > and it's part of the commit changelog in git. That allows you to
>> > just jump to the mail archive of the merged submission.
>> 
>> If you've got the link back to the mailing list archive, do you also
>> need Cc: tags in the change log?
>
> Cc: tags are another git artefact.  They're how you tell git-send-email 
> where to send copies of the patch for review or notice, but they don't
> really provide any intrinsic historical value.

Right, but it wasn't clear to me if anyone felt that they *do* have
historical value. Seems not.

> Perhaps we should alter the convention and say that if you're using
> git-send-email and need a cc: list, then you should put all the cc tags
> below the cutoff, say always at the bottom.  That way the version
> information would be first, which is more important for the review, the
> sender would preserve and show the cc list and it would be eliminated
> on git-am.  Any cc tags that were necessary (like cc: stable) could go
> above the cutoff.

Yeah that would be good. I'm not sure where the handling of Cc: tags is
really definitively documented.

There's some mention of Cc: here:

  https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by

  If a person has had the opportunity to comment on a patch, but has not
  provided such comments, you may optionally add a Cc: tag to the patch.
  This is the only tag which might be added without an explicit action by
  the person it names - but it should indicate that this person was copied
  on the patch. This tag documents that potentially interested parties
  have been included in the discussion.

That does imply there is historical value in having the Cc: tags
committed, which I kind of disagree with.

So that maybe that needs a rewrite.

But lots of people aren't going to re-read the doc even if we update it,
so the immediate solution is for maintainers to strip superfluous Cc:
tags when committing.

Does anyone object to maintainers doing that?

cheers
