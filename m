Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2BC7413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 22:31:22 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9511F1D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 22:31:21 +0000 (UTC)
Date: Wed, 10 Aug 2016 00:31:18 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Thorsten Leemhuis <regressions@leemhuis.info>
Message-ID: <20160809223118.GG1437@8bytes.org>
References: <s5h60rs31z3.wl-tiwai@suse.de> <1560409.5vnWShrmDy@vostro.rjw.lan>
	<4b6ef14c-cea6-b51d-62db-ba3e708916ea@leemhuis.info>
	<20160809094046.GA1437@8bytes.org>
	<a9abc71f-7070-3f60-3f4c-16ac7a082fc9@leemhuis.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a9abc71f-7070-3f60-3f4c-16ac7a082fc9@leemhuis.info>
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

On Tue, Aug 09, 2016 at 09:02:22PM +0200, Thorsten Leemhuis wrote:
> Yeah, definitely. One afaics important part that needs to be done in
> this area: make bugzilla.kernel.org work better. At least some (or maybe
> even quite a lot?) of the bugs reported there afaics seem to not get
> proper attention from the right people. Due to that I'd assume some
> testers will have come to conclusions like "testing for regressions and
> bugs is not worth the trouble, as the kernel developers are not
> interested in the bugs I file anyway".

In my case, I am only looking into the kernel.org bugzilla if someone
pings me about it. Usually I get the upstream bug reports via email. And
this is part of the problem, that we have multiple ways that we teach
users how to report bugs/regressions. That really increases the effort
needed for you to compile the regression list and keep track of
everything in there.

So the right step here is to discuss how we want to get bugs reported
and settle on a single way we tell the users and testers. From there it
is much easier to get the reports dispatched to the right people.

> Ugh, what's the latest status of it? I just saw
> http://www.kerneloops.org/ is kind of alive again as
> http://oops.kernel.org/ (I had missed that) and has data from recent
> kernel versions. But it seems the code behind it hasn't seen much
> changes in the last two years:
> https://github.com/oops-kernel-org/kerneloops/commits/master

Interesting, I wasn't aware of that either. From a first look it seems
that the reporting tool is probably not widely used, at least not like
the Fedora tool.

> Anyway: ABRT is quite Fedora/RH specific and quite heavy. IOW: it is not
> something other distros can easily integrate like it happened with the
> original kerneloops tool years ago.

Well, but maybe parts of that software could be re-used for our
regression tracking. The oops-parser is really cool, as it extracts the
stack-traces and finds the source-files the symbols belong to.

You can extract the same information from LKML bug-reports and use the
file-names together with the MAINTAINERS file to automatically compile
an initial list of potential developers who might look at the report.

To further automate this, it could be put into a mail-filter which is
called by a procmail rule against LKML mails and that spits out
potential bug/regression reports.

Certainly a few heuristics are needed too to improve the signal-to-noise
ratio, but over time this might become a helpful automation step.


	Joerg
