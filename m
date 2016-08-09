Return-Path: <regressions@leemhuis.info>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 12953724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 19:02:27 +0000 (UTC)
Received: from basicbox7.server-home.net (basicbox7.server-home.net
	[195.137.212.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C7FC41CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 19:02:25 +0000 (UTC)
To: Joerg Roedel <joro@8bytes.org>
References: <s5h60rs31z3.wl-tiwai@suse.de> <1560409.5vnWShrmDy@vostro.rjw.lan>
	<4b6ef14c-cea6-b51d-62db-ba3e708916ea@leemhuis.info>
	<20160809094046.GA1437@8bytes.org>
From: Thorsten Leemhuis <regressions@leemhuis.info>
Message-ID: <a9abc71f-7070-3f60-3f4c-16ac7a082fc9@leemhuis.info>
Date: Tue, 9 Aug 2016 21:02:22 +0200
MIME-Version: 1.0
In-Reply-To: <20160809094046.GA1437@8bytes.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
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

On 09.08.2016 11:40, Joerg Roedel wrote:
> On Wed, Jul 27, 2016 at 02:28:26PM +0200, Thorsten Leemhuis wrote:
>> On 26.07.2016 22:36, Rafael J. Wysocki wrote:
> 
>>>> There were other people trying to do that when I had stopped doing it, but
>>>> they gave up eventually.
>> Yeah, I guess that can easily happen sooner or later, because from what
>> I can see it's a lot of manual and boring work that only now and then
>> feels rewarding :-/
> […] But I think
> this will also involve teaching our testers/users on how to best report
> regressions.

Yeah, definitely. One afaics important part that needs to be done in
this area: make bugzilla.kernel.org work better. At least some (or maybe
even quite a lot?) of the bugs reported there afaics seem to not get
proper attention from the right people. Due to that I'd assume some
testers will have come to conclusions like "testing for regressions and
bugs is not worth the trouble, as the kernel developers are not
interested in the bugs I file anyway".

> Part of the discussion should also be on automation, for
> example if we could/should revive the kerneloops tool?

Ugh, what's the latest status of it? I just saw
http://www.kerneloops.org/ is kind of alive again as
http://oops.kernel.org/ (I had missed that) and has data from recent
kernel versions. But it seems the code behind it hasn't seen much
changes in the last two years:
https://github.com/oops-kernel-org/kerneloops/commits/master

Side note: kernelopps and error reporting was talked about on KS2013:
https://lwn.net/Articles/571997/ ABRT was mentioned there. Fedora these
days by default installs abrt-addon-kerneloops (see
https://abrt.readthedocs.io/en/latest/supported_langs.html#linux-kernel
for a very brief intro). Things it picks up can be seen on
https://retrace.fedoraproject.org/faf/summary/ The Fedora kernel package
maintainers use the data afaik, but I don't know any more details.
Anyway: ABRT is quite Fedora/RH specific and quite heavy. IOW: it is not
something other distros can easily integrate like it happened with the
original kerneloops tool years ago.

>[...]

Ciao, Thorsten
