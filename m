Return-Path: <SRS0=mR8n=46=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61353C2BB1D
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 03:20:04 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 318DE20658
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 03:20:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 318DE20658
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=mit.edu
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D48E589422;
	Fri, 13 Mar 2020 03:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nl55A9l5b5XN; Fri, 13 Mar 2020 03:20:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8158189428;
	Fri, 13 Mar 2020 03:20:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3EF2AC089E;
	Fri, 13 Mar 2020 03:20:00 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 927F1C0177;
 Fri, 13 Mar 2020 03:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8138E87D1A;
 Fri, 13 Mar 2020 03:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FlUDMLophbsq; Fri, 13 Mar 2020 03:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4E75587A87;
 Fri, 13 Mar 2020 03:19:57 +0000 (UTC)
Received: from callcc.thunk.org (pool-72-93-95-157.bstnma.fios.verizon.net
 [72.93.95.157]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 02D3Jl1l001090
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Mar 2020 23:19:48 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 140EE420E5E; Thu, 12 Mar 2020 23:19:47 -0400 (EDT)
Date: Thu, 12 Mar 2020 23:19:47 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: "Bird, Tim" <Tim.Bird@sony.com>
Message-ID: <20200313031947.GC225435@mit.edu>
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
 <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
Cc: "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- Change to charter
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Thu, Mar 12, 2020 at 09:28:09PM +0000, Bird, Tim wrote:
> I agree with Laurent.  I'm not sure how to solve this problem, but
> I think you need something to indicate the voter approval policy
> besides "the TAB will decide it, and can change it when they like".
> 
> I suppose the pool of voters has been decided historically by the Kernel
> Summit invitation committee.  Some randomness was introduced by
> allowing voting by attendees from whatever event the Linux Foundation
> co-located with the Kernel Summit.  I think in practical terms,
> this means that recently the voting pool was self-selected (somewhat), but
> was skewed towards people who could travel, or had employer support.
> But in any event, the selection of the voting pool was done by people outside
> the TAB (or at least not necessarily inside the TAB), and without any eye towards
> skewing the election results.  That is, I don't think the kernel summit invitation
> committee, or the LF event staff, ever considered TAB voting in their KS attendee
> selection or event pairing choices.

(Speaking personally for myself)

The choice to include whatever LF event the Kernel Summit was
colocated with was a choice that was made by the TAB on an ad-hoc
basis.  There is nothing about that in the TAB charter at all.  So
we've *already* been doing things in a way that is not consistent with
TAB charter --- for years and years.

Starting last year, we experimented with electronic voting.  We didn't
change the composition of who could vote (it was anyone attending
Plumbers), but one of the reasons was that we didn't want to change
two variables at once.

We haven't made any final decisions yet about how the pool of voters
might be expanded.  But it might include (for example) people who have
user accounts on kernel.org.  Or historically, one of the pools from
which the kernel summitte attendee list would be drawn included
everyone who at least N Signed-off-by:, Reviewed-by:, etc.  Since
there was a Kernel Summit program committee filtering who got invites
(and there was non-trivial overlap between the program committee and
the TAB), in theory that very much could influence the TAB elections.
Expanding the pool to those who were interested and who were attending
the colocated event very much decreased that effect, but there has
always been a human filtering element.

One of the potential failures that having a human filtering element
prevents is the Sad/Rabid Puppies scenario:

https://slate.com/culture/2016/04/sad-and-rabid-puppies-are-trying-to-game-the-hugo-award-shortlists-again-in-2016.html

So for example, if we set some rule like, a single Signed-off-by: is
enough to get a vote, what would happen over a few months, a thousand
spelling/whitespace "trivial" patches, all from different sock puppet
accounts, show up and get absorbed into the tree?  With a human
program committee, it's easy for humans to say, "Ha, ha.  No."  But if
we use a mechnical rule, and badly chosen criteria, it might be really
easy for some mischief makers to carry out a Sad Puppies style attack
on the voting system.

On the flip side, having humans deciding who can and can't vote has
other really bad effects regarding the election's legitimacy.  It
worked 5+ years ago, because it was simpler times, and the formal
reason for the selection was attendance to a closed technical meeting,
and we later decided to hang the TAB elections off of it.

So that means we need to be smart about how we pick the criteria.
Using a kernel.org account might be a good approach, since it would be
a lot harder for a huge number of sock puppet accounts to meet that
criteria.  We don't have a final proposal for something which can be
objectively measured, but can't be easily gamed by someone who is
trying to subvert the system.  It is pretty clear, though, that we
need to have that clearly articulated, in writing, *before* we start
the nomination for the next round of TAB candidates.

I will also point out that we may not have much of a choice about
switching to something besides "people who attend the colocated event
where the Kernel Summit is held".  The program/organizing committees
for LPC, KS, and MS, are continuing to make plans in the hope that the
COVID-19 pandemic will have subsided enough that it will be safe to
hold an conference of 400-500 people in Halifax.  However, nobody
knows if that is the case.  If you look at this article from the
Lanclet medical journal article, "How will country-based mitigation
measures influence the course of the COVID-19 epidemic?":

https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(20)30567-5/fulltext

The takeaway is it's really not clear how long it will take for the
COVID-19 pandemic to run its course --- but some of their sample
curves extend out for of 5-6 months or longer.  So while we are
continuing to plan that LPC will take place, it's only responsible to
consider what we should do if in fact health and safety restrictions
are such that we might not be able to hold *any* Linux systems
conferences in 2020.

In that case, we might be forced to either keep TAB members in place
beyond their original elected term, or we might have to go to a pure
electronic voting for the upcoming TAB election.  I very much hope
that won't be the case, but we need to be prepared for that
eventuality.

(I'll keep silent about what I think of the current US
Administration's competence in steering us through this crisis, except
to note that in South Korea, they are testing 10,000 people a day,
using drive-through centers, and we haven't been able to test that
many *total* so far in the US, and there are Biogen employees in
Boston and Life Care Center employees in Kirkland, Washington, who are
still waiting for COVID-19 test availability....)

						- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
