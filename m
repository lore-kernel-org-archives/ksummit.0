Received: from relay.yourmailgateway.de (relay.yourmailgateway.de [188.68.63.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7913A9D9D
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 15:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.68.63.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784734464; cv=none; b=jXUTEW3OCXQ6wN1imnx4bRCek0+8nz+gxOX2x0nOxKhmYF1IqQzRuWpjrsJN6lVEbfzhcj9nCqRDzeCoPIrM5+mH7eUPsHrbgtvZanQ+FGOWSSyZZX1LuMdDJIFCfCxkM5Pdv0zZxxRTxXEMFwCPUibnau8BPS5fAi/3y8ppRC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784734464; c=relaxed/simple;
	bh=5A88oSsZ4R9HMTK9UT3pYvyT6rSMhQSbSdVfe3GLk/8=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=HcmCgi9BFzpBZXrrOV9e68xcN1Bu5CPHAyuQOrqbkqsbT1OwG2CwAoCMuD1p0MAX+LFCkOrdCSifOrUV0IdHqhYSNGylDEMHiI8u7SKQRgvX4/nqno0M4IJ/M8Zc7Dh8TakyDnvFFW9vVqXnek5jTWAWR1Lt00bbnADG0v5/74A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info; spf=pass smtp.mailfrom=leemhuis.info; dkim=pass (2048-bit key) header.d=leemhuis.info header.i=@leemhuis.info header.b=CoLQTrz2; arc=none smtp.client-ip=188.68.63.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=leemhuis.info
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=leemhuis.info header.i=@leemhuis.info header.b="CoLQTrz2"
Received: from mors-relay8204.netcup.net (localhost [127.0.0.1])
	by mors-relay8204.netcup.net (Postfix) with ESMTPS id 4h4ymr5KPvz8jl8
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 15:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=leemhuis.info;
	s=key2; t=1784734060;
	bh=5A88oSsZ4R9HMTK9UT3pYvyT6rSMhQSbSdVfe3GLk/8=;
	h=Date:To:From:Subject:From;
	b=CoLQTrz29s2OteRJMav9lhW4KDj3vG4OVc9W9Qd+vSSVH/gIwfIkodsjXt1KNOeh5
	 GRvT8JEAiYwJV8PMJHfJcfTAReJkn76WclmPo2kLGvy7E3AaUm8eOETPUR0zqJQUE3
	 921XjzjZ/QZ9xiGiydZJs9mu4kDlE/jlrSMHjpDpJZ1NX6SIA6lg1wIsO+lxk+9M7l
	 IeN/QqidpztTk/ive9BEUgdnAJa1ZRLC4IMmNASIReig8Sa9UTujEy3jpAXI6FUZ2/
	 iRSmAAHbyuynbOKwI0P9pn447oThrHTNseIW8vPLKqwPf6AXSi2iJhcPdzzWOG0QIk
	 15FxoVwGIGrlw==
Received: from policy02-mors.netcup.net (unknown [46.38.225.35])
	by mors-relay8204.netcup.net (Postfix) with ESMTPS id 4h4ymr4cQPz8jh6
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 15:27:40 +0000 (UTC)
Received: from mxe9fb.netcup.net (unknown [10.243.12.53])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by policy02-mors.netcup.net (Postfix) with ESMTPS id 4h4ymr2nnJz8svk
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 17:27:40 +0200 (CEST)
Received: from [IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f] (unknown [IPv6:2a02:8108:8984:1d00:a0cf:1912:4be:477f])
	by mxe9fb.netcup.net (Postfix) with ESMTPSA id E3A6B5FC64
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 17:27:37 +0200 (CEST)
Authentication-Results: mxe9fb;
        spf=pass (sender IP is 2a02:8108:8984:1d00:a0cf:1912:4be:477f) smtp.mailfrom=linux@leemhuis.info smtp.helo=[IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f]
Received-SPF: pass (mxe9fb: connection is authenticated)
Message-ID: <75dc0e2d-2deb-4776-977c-1de7c33465e1@leemhuis.info>
Date: Wed, 22 Jul 2026 17:27:37 +0200
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: ksummit@lists.linux.dev
From: Thorsten Leemhuis <linux@leemhuis.info>
Content-Language: de-DE, en-US
Subject: [MAINTAINERS SUMMIT] Satisfied with the time it takes regressions to
 be fixed?
Autocrypt: addr=linux@leemhuis.info; keydata=
 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 MEK4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-PPP-Message-ID: <178473405815.2338949.3718284651378308215@mxe9fb.netcup.net>
X-Rspamd-Server: rspamd-worker-8404
X-Rspamd-Queue-Id: E3A6B5FC64
X-NC-CID: KYzCZ0frpBjjw4a5Q21b0cKGjygeGW6hUW9/Rz4Ve3yLBJlWxGs=

Linus' rule of thumb with regards to fixing regressions that have a
known culprit and were reported by a user afaics is: "within a week,
preferably before the next rc". He wrote that in January, for the exact
words and links to the full mails on lore from January see:
https://www.kernel.org/doc/html/latest/process/handling-regressions.html#on-how-quickly-regressions-should-be-fixed


I got the impression that most regressions I track take much longer to
get fixed. Which turned out to be the case when looked closer at a
recent development cycle, as more that half took more then two weeks to
get fixed; the analysis furthermore showed that fixes had usually been
available quickly, it just took them some time to get reviewed,
committed, and sent to Linus -- among others due to lack of maintainer
resources. More details on that below, let me first propose what we
might want to discuss the following here and later at the summit:


Is Linus asking too much here? If not, what can we do to improve the
time it typically takes to fix regressions -- without causing more
trouble for already overloaded maintainers?


Back to the analyses briefly mentioned above, which is based on a closer
look at 39 regressions I tracked during the 7.1 cycle that were reported
against either 7.1-rc or 7.0.

First I looked at how long it took to resolve those regressions once at
least a rough fix was known; the latter usually was the case right with
the report, as many stated that a revert helped. For 4 of the 39
regressions I tracked, a proper fix hit the next -rc that followed;
fixes for 8 in total (this thus included the 4 from before) hit mainline
within a week. 14 in total reached the second -rc within two weeks; 18
in total reached mainline within two weeks. The overall median time was
20 days; in 19 cases it took more than three weeks till a fix hit a -rc,
in 5 of those even more than five weeks.

Then I looked at how long it had taken the committed fixes for those 39
regressions from submission for review till hitting mainline: 6 of the
fixes managed to reach the first -rc within a week of the submission,
and 12 in total reached mainline within a week. 15 in total reached the
second -rc and 20 in total hit mainline in two weeks. The median was 18
days; 14 fixes took more than three weeks from the submission till
hitting a mainline -rc.

Occasionally it took longer than Linus' rule of thumb due to cases like
"mistakes happen" or "subsystem with single maintainer temporarily busy
or unavailable". There were also a few cases where things were delayed
by "developer/maintainer tried hard to avoid a revert". But the main
reason why it often took longer than one or two weeks, afaics, lies
somewhere else: only some subsystems regularly manage to review, commit,
and mainline regression fixes within a week. This assessment is based
less on the analyzed time frame and more on what I've seen in the last
two or three years of tracking regressions.

Quick reminder for those that might not have been aware of Linus' rule
of thumb mentioned initially: I brought "time it takes to fix
regressions" up two and four years ago at the maintainers summit (and
each time before that on this list). That two years ago led to a
reworked "Expectations and best practices for fixing regressions"
section in Documentation/process/handling-regressions.rst. What's
outlined there is somewhat similar to what Linus' expects -- albeit it's
a bit more nuanced and even a little laxer in some cases:
https://www.kernel.org/doc/html/latest/process/handling-regressions.html#expectations-and-best-practices-for-fixing-regressions


Also be aware that my tracking (and thus the numbers here) only cover a
subset of regressions. Among others, because I never become aware of
some and focus on those users reported. So more than the 39 regressions
got fixed during that timeframe, some of which might have been fixed
quicker. At the same time, me prodding maintainers in a few cases
prevented some regressions from taking even longer to get fixed.

With that out of the way back to the "only some subsystems regularly
manage to [...] mainline regression fixes within a week" aspect.
Mistakes occasionally happen in those that as well; but their
maintainers overall handle regressions better by doing the following
things (in order of importance based on subsystems where things don't
work that well from what I've seen over the years):

* They have the motivation and the resources (aka time) to handle
regressions well; the latter is apparently usually thanks to an employer
backing fully those efforts and/or by spreading the load among enough
maintainers.

* They regularly send all committed fixes to Linus shortly before a new
-rc, e.g., between Friday and Sunday -- even if that means sending a
second PR in a week (if all subsystems did that, the numbers above would
look quite a bit better).

* They review and commit regression fixes quickly, e.g., usually within
two or three workdays.

* They submit and apply reverts if no proper fix gets into reach within
a few days, e.g., usually within something like two or three workdays.

* Those that have them ensure all their downstream maintainers handle
regressions and fixes for them well (e.g. like outlined here, esp. the
three points above), too -- and step in to handle things themselves when
their downstream maintainers temporarily or generally are unable to do
so (for example due to a lack of resources -- which from what I see in
my tracking efforts is the case in a few popular sub-subsystems that
frequently show up on my radar due to unfixed regressions).

* They have multiple maintainers and are thus responsive, even if some
of them are unavailable due to vacation or something.

* If they have internal QA queues, it usually takes them no more than
about a day or two to chew on regression fixes.

* They ensure their developers handle regressions like Linus wants them
to be handled -- and when they fail to do that, step in to handle things
themselves.

* They enforce tags like "current" and "next" in the subject of patch
submissions for their subsystem; this forces developers to think about
where patches should head to, while also allowing reviewers and
maintainers to easily filter regression fixes to prioritize them over
feature work.

* They maintain separate -fixes and -next branches that are in
linux-next independently; they furthermore send "your patch was applied
to <branch>" mails when patches are applied. That way everyone
(developers, me, affected users, ...) can easily check the status and
speak up when a fix is on the wrong track or suddenly becomes more urgent.

* They expedite fixing regressions that affect a lot of people, for
example if the culprit made it to a proper (non-rc) mainline release or
to a stable-series through a backport. Linus to directly pick up a fix
directly from the list is one way to do that.

* They do not put an unnecessary burden on reporters (I see it more
often these days that developers or maintainers ask reporters to submit
reverts or improve POC regression fixes, even if the person has never or
rarely contributed to the kernel before and in no way indicated any
interest in getting their name into the kernel history).

* They generally prioritize dealing with reports about regression and
fixes over other kernel work.

* They know the lesser-known aspects about handling regression fixes,
for example, that -next can often be skipped or that most fixes for
recent regression (e.g., introduced in a recent or the current cycle)
are fine to mainline even post -rc7. Note, be aware of the "usually" and
"most" above, as that in the end needs to be a case by case decision
depending on the risk of the particular change.


I tried to keep things generic and mostly positive up to this point, but
sometimes concrete examples are helpful to properly understand problem
points. So here are the commit-ids of a few, all of them from the
analyzed 7.1 cycle introduced in either 7.1 or 7.0 (note, some commits
are in this list multiple times; getting the full picture sometimes also
requires following Link: tags or a search on lore):

* Fixes for regressions that could have been fixed way earlier by opting
for a revert: 2914709c914101 f78073e84c80 7495adaa0e45e1 f23bf992d65a42

* Fixes that took more than a week to get committed: 629279e2e798cd
2914709c914101 2eeb342aff6647 ed831e7ea1a860 c0c6ccd9828c3a
522567362b6340 f78073e84c80 4867cef03b58ca 71f42b2149a1 ec78a85d95e9c3
5772f6535227eb

* Fixes that took more than 9 days from committing till reaching -rc:
a39f0ce0c9da20 426e5846eba75f 635b5c6622f317 629279e2e798cd
e3ac0d9f1a205f 54cf41c969da66 5629eec1a28298 12f58a6caad3be
e4e9b7b38d5db2 c0c6ccd9828c3a 63d2059cd665c4 a8878e19d2f520 71f42b2149a1
7495adaa0e45e1 f23bf992d65a42 754d60ad1c9189

* Fixes that were delayed because they first were scheduled to be merged
in the next merge window by accident or by not thinking about it:
2914709c914101 593889c4014260

* Fixes that missed the 7.1 release where the regression could have
easily been fixed already by 7.1-rc7: a39f0ce0c9da20 426e5846eba75f
635b5c6622f317 12f58a6caad3be 7495adaa0e45e1

* Fixes for regressions that affected many users but nevertheless took
some time to fix despite available fixes: 12f58a6caad3be e3ac0d9f1a205f

As mentioned earlier, in some cases I prodded developers or maintainers,
otherwise it would have taken some even longer to get the regressions
fixed. Occasionally it works and I sometimes even get a "thanks" for
that. Most often is does not, among others because I get answers along
the lines of "this can wait till the end of the development cycle" (even
for regressions that made it into a stable release), "you are asking too
much here", "please leave us alone, we handle this already the best we
can". Sometimes I then point to to the "Expectations and best practices
for fixing regressions" or the rule of thumb from Linus initially
mentioned -- often without much luck. Which is why I think it might be
worth discussing this again on the summit.

Ciao, Thorsten

P.S.: Here is the table I used to generate the numbers:
https://docs.google.com/spreadsheets/d/1lp5bgLf8T4TRcAVqUmRviIAWxol8tQFUQ963HS0xscw/edit?usp=sharing
