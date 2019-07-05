Return-Path: <mpe@ellerman.id.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3518B86D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 03:40:58 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 537A287B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 03:40:57 +0000 (UTC)
From: Michael Ellerman <mpe@ellerman.id.au>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Thomas Gleixner <tglx@linutronix.de>, Takashi Iwai <tiwai@suse.de>
In-Reply-To: <1562250136.3187.3.camel@HansenPartnership.com>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<87y31eov1l.fsf@concordia.ellerman.id.au>
	<1562250136.3187.3.camel@HansenPartnership.com>
Date: Fri, 05 Jul 2019 13:40:54 +1000
Message-ID: <87tvc1173t.fsf@concordia.ellerman.id.au>
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
>
> Perhaps we should alter the convention and say that if you're using
> git-send-email and need a cc: list, then you should put all the cc tags
> below the cutoff, say always at the bottom.  That way the version
> information would be first, which is more important for the review, the
> sender would preserve and show the cc list and it would be eliminated
> on git-am.  Any cc tags that were necessary (like cc: stable) could go
> above the cutoff.

I just checked that this works with git send-email and it does. eg given:

  commit 7dcbcaee15ac44c8d62cfbaea2e5c8b7061fd29e
  Author:     Michael Ellerman <mpe@ellerman.id.au>
  AuthorDate: Fri Jul 5 13:32:47 2019 +1000
  
      Test commit
      
      Cc: above@somewhere.com
      Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
      ---
      Cc: below@somewhere.com


Then git send email works fine:

  $ git send-email --suppress-cc=self --to nowhere HEAD^
  /tmp/zxkuesD7QB/0001-Test-commit.patch
  (body) Adding cc: above@somewhere.com from line 'Cc: above@somewhere.com'
  (body) Adding cc: below@somewhere.com from line 'Cc: below@somewhere.com'
  
  From: Michael Ellerman <mpe@ellerman.id.au>
  To: nowhere
  Cc: above@somewhere.com,
          below@somewhere.com
  Subject: [PATCH] Test commit
  Date: Fri,  5 Jul 2019 13:39:40 +1000
  Message-Id: <20190705033940.32084-1-mpe@ellerman.id.au>
  X-Mailer: git-send-email 2.20.1


cheers
