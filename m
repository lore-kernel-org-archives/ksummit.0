Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55A22483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 09:40:50 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AB2F7212
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 09:40:49 +0000 (UTC)
Date: Tue, 9 Aug 2016 11:40:46 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Thorsten Leemhuis <regressions@leemhuis.info>
Message-ID: <20160809094046.GA1437@8bytes.org>
References: <s5h60rs31z3.wl-tiwai@suse.de> <1560409.5vnWShrmDy@vostro.rjw.lan>
	<4b6ef14c-cea6-b51d-62db-ba3e708916ea@leemhuis.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4b6ef14c-cea6-b51d-62db-ba3e708916ea@leemhuis.info>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 27, 2016 at 02:28:26PM +0200, Thorsten Leemhuis wrote:
> On 26.07.2016 22:36, Rafael J. Wysocki wrote:

> > > There were other people trying to do that when I had stopped doing it, but
> > > they gave up eventually.
> 
> Yeah, I guess that can easily happen sooner or later, because from what
> I can see it's a lot of manual and boring work that only now and then
> feels rewarding :-/

I am also interested in this one. Regression tracking is a very time
consuming task and we should discuss how that can be improved, so that
we get a sustainable solution that works for the kernel.

As Thorsten already pointed out, better tooling would help. But I think
this will also involve teaching our testers/users on how to best report
regressions. Part of the discussion should also be on automation, for
example if we could/should revive the kerneloops tool?

Just my few thoughts, but if this is goind to be discussed, I'd like to
particpate.


	Joerg
