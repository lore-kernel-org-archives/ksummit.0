Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C73B413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 22:50:05 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 65DFC10E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 22:50:04 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Joerg Roedel <joro@8bytes.org>
Date: Wed, 10 Aug 2016 00:55:22 +0200
Message-ID: <1717921.V18WFsHkxD@vostro.rjw.lan>
In-Reply-To: <20160809223118.GG1437@8bytes.org>
References: <s5h60rs31z3.wl-tiwai@suse.de>
	<a9abc71f-7070-3f60-3f4c-16ac7a082fc9@leemhuis.info>
	<20160809223118.GG1437@8bytes.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Thorsten Leemhuis <regressions@leemhuis.info>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday, August 10, 2016 12:31:18 AM Joerg Roedel wrote:
> On Tue, Aug 09, 2016 at 09:02:22PM +0200, Thorsten Leemhuis wrote:
> > Yeah, definitely. One afaics important part that needs to be done in
> > this area: make bugzilla.kernel.org work better. At least some (or maybe
> > even quite a lot?) of the bugs reported there afaics seem to not get
> > proper attention from the right people. Due to that I'd assume some
> > testers will have come to conclusions like "testing for regressions and
> > bugs is not worth the trouble, as the kernel developers are not
> > interested in the bugs I file anyway".
> 
> In my case, I am only looking into the kernel.org bugzilla if someone
> pings me about it. Usually I get the upstream bug reports via email. And
> this is part of the problem, that we have multiple ways that we teach
> users how to report bugs/regressions. That really increases the effort
> needed for you to compile the regression list and keep track of
> everything in there.
> 
> So the right step here is to discuss how we want to get bugs reported
> and settle on a single way we tell the users and testers. From there it
> is much easier to get the reports dispatched to the right people.

I need to mention here that PM and ACPI regressions in bugzilla.kernel.org
are actually tracked by a team at Intel.  We track all of the PM and ACPI
bugs filed via the BZ, including regressions, and we're going to be doing
that.

Thanks,
Rafael
