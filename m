Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 06DAEAAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 00:52:21 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7531916B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 00:52:19 +0000 (UTC)
Date: Mon, 13 Jul 2015 10:52:10 +1000
From: NeilBrown <neilb@suse.com>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150713105210.6e367f4b@noble>
In-Reply-To: <55A26C5B.8060007@oracle.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


I've been bitten by this a couple of times too.  At least two fairly
serious md bugs *never* got into a release from Linus, but did get into
-stable and at least one into a vendor kernel.


On Sun, 12 Jul 2015 09:32:11 -0400 Sasha Levin <sasha.levin@oracle.com>
wrote:


> > So it boils down to: "How soon to apply fixes to -stable?", and the trade-off
> > between applying fixes early, but risking to break something unknown and new,
> > vs. applying fixes late (after more validation), causing more breakage from a
> > known issue.
> 
> That's just one solution, but there are a few more (which is why it's worth discussing
> it :) ).
> 
> Consider also:
> 
>  - Aligning the stable release process with the kernel where we'd do a few release
> candidates for the stable kernel before releasing it.
> 
>  - Tightening what is allowed to go in as -rc patches, requiring some time in -next
> before it even gets into Linus's hands. Even for "serious" things (does it matter if
> a fix for a privesc gets in -rc2 or -rc6, beyond that it would be pulled to stable
> earlier?)
> 
>  - Differentiate the type of patches going into "regular" -stable, and LTS?
> 

My proposal would be to change the default timing.
Currently patches tagged for 'stable' go into the next -stable release
after they get into Linus's tree.  You can ask for an exception
(sooner, later, different patch) and Greg (or any other stable
maintainer) tries to be accommodating.  But you have to remember to ask.

I would rather that the default was that patches don't go into -stable
until they have
  - been in a full release from Linus and
  - been in a Linus's tree for at least 2 weeks.
    (or 1 week times the age of the target in releases.
     So a fix in 4.4 get to 4.3-stable after a week, 4.2-stable
     after 2 weeks etc .... maybe I'm going over-board here).

Many fixes are important but simply aren't that urgent so the two or
more weeks is no great cost.

If a developer/maintainer thinks a fix is urgent, then they need to
explicitly ask for a quick release, and that could be as easy as saying:

  Cc: stable@vger.kernel.org (URGENT v3.0 and later)

An 'URGENT' fix *should* come with an independent
"Reviewed-by:"  (well ... everything should of course, but if URGENT
stable patches with no Reviewed-by got some push-back, I think that
would be a "very good thing" all around).

I don't think that tightening the criteria for going into any
particular tree will really help.  I'm not sure there is even real
agreement on what is or is not allowed in -stable (we have clearly
written rules, but the practice is really whatever a maintainer
chooses).
-rc prereleases for -stable would only help if people tested them.
Given that the same bugs are in -linus, the testing done there should
be sufficient providing it is given enough time.

Thanks,
NeilBrown
