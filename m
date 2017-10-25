Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8B8528DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 06:05:30 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 65C15271
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 06:05:29 +0000 (UTC)
To: Kees Cook <keescook@chromium.org>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<CAGXu5jJAUbhEZPFYSU1ExON49LqQMTgjmRSszp6eMuaDuSimsA@mail.gmail.com>
	<1508888508.1955.16.camel@perches.com>
	<CAGXu5jJYCRVr5DpRfVD0NNuJ0yzNTeKrDOo8u1tXeSw8GxjyBQ@mail.gmail.com>
Date: Wed, 25 Oct 2017 02:05:20 -0400
In-Reply-To: <CAGXu5jJYCRVr5DpRfVD0NNuJ0yzNTeKrDOo8u1tXeSw8GxjyBQ@mail.gmail.com>
	(Kees Cook's message of "Tue, 24 Oct 2017 17:54:47 -0700")
Message-ID: <yq11slrkbj3.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


Kees,

> 3) Maintainers (sanely) balk at getting a massive dump of patches all
> at once. It would be nice to document "batch limits" in the
> MAINTAINERS file too. (For example, davem asked me after I sent him 60
> patches in a single day if I could please limit the batch size to 12
> between commits (i.e. only send the next batch after the prior batch
> has been applied/processed). "H:"ow many at once, maybe?

I generally think 10-15 patches are reasonable. But it also depends on
the patch size and the nature of the changes.

For me, the deciding factors are:

1. What's the point of this series?

2. Can I complete review of this series within 30 minutes before my next
   concall.

3. Can I complete review of this series without my brain turning into
   complete mush.

> 5) When sending a large series, it's infeasible to either repeat the
> massive cover letter [...] My understanding was that everyone should
> be subscribed to lkml, and it acts as the common thread archive, so
> when a maintainer gets a few patches out of a /N series, they can
> trivially go look at the 0/N patch for more context.

First of all, as a subsystem maintainer I rely heavily on other people
to review patches. Either individual driver maintainers or people with a
vested interest in SCSI (enterprise distro developers).

It's virtually impossible to entice people to review patches in the
first place. Forcing people to go switch from their email context to go
peruse the lkml archives in a web browser to decide whether a patch
series is worth reviewing in the first place is a non-starter.

People have really short attention spans. Realistically, reviews only
happen when people see the mail in their inbox and they have N minutes
to spare. After that point, your opportunity is essentially lost.

If a reviewer has a particular interest in a file or area, they may tag
it for later review. And then after a few days of working on something
else they come back and realize they have no time this week and delete
the series from their inbox so they don't feel bad about it over the
weekend.

As a subsystem maintainer, the burden then falls upon me. And if
something has been collecting dust in patchwork for several weeks, there
is absolutely no chance that I or anybody else will get to it. I'm
reasonably sure that I'm the only person that ever visits the SCSI
patchwork with the intent to clear out the queue.

Consequently, the only way to revive interest is to resubmit. With a
comprehensive cover letter (which, incidentally, it would be nice if
patchwork would capture).

-- 
Martin K. Petersen	Oracle Linux Engineering
