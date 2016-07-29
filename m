Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DAC5C71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 07:50:46 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5A48E192
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 07:50:46 +0000 (UTC)
Received: from mfilter19-d.gandi.net (mfilter19-d.gandi.net [217.70.178.147])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id 486CA1720F0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 09:50:44 +0200 (CEST)
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter19-d.gandi.net (mfilter19-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024) with ESMTP id 8Xrp_8IF6v50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 09:50:42 +0200 (CEST)
Received: from x (50-39-163-18.bvtn.or.frontiernet.net [50.39.163.18])
	(Authenticated sender: josh@joshtriplett.org)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id BFED01720D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 09:50:41 +0200 (CEST)
Date: Fri, 29 Jul 2016 00:50:39 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20160729075039.GA26402@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a patch
	series over time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I'd like to announce a project I've been working on for a while.  I sent
this announcement to LKML, but since many people don't subscribe to LKML
directly, and since ksummit-discuss has had several discussions
specifically about patch workflow and development processes, I thought
I'd send the announcement here as well, in case anyone found it useful
for their workflow.

git-series provides a tool for managing patch series with git, tracking
the "history of history". git series tracks changes to the patch series
over time, including rebases and other non-fast-forwarding changes. git
series also tracks a cover letter for the patch series, formats the
series for email, and prepares pull requests.

This makes it easier to collaborate on a patch series, distribution
package, backport, or any other development process that includes
rebasing or non-fast-forward development.

A patch series typically goes through multiple iterations before
submission; the path from idea to RFC to [PATCHv12 1/8] includes many
invocations of git rebase -i. However, while Git tracks and organizes
commits quite well, it doesn't actually track changes to a patch series
at all, outside of the ephemeral reflog. This makes it a challenge to
collaborate on a patch series, distribution package, backport, or any
other development process that includes rebasing or non-fast-forward
development.

Typically, tracking the evolution of a patch series over time involves
moving part of the version control outside of git. You can move the
patch series from git into quilt or a distribution package, and then
version the patch files with git, losing the power of git's tools. Or,
you can keep the patch series in git, and version it via multiple named
branches; however, names like feature-v2, feature-v3-typofix, and
feature-v8-rebased-4.6-alice-fix sound like filenames from corporate
email, not modern version control. And either way, git doesn't track
your cover letter at all.

git-series tracks both a patch series and its evolution within the same
git repository. git-series works entirely with existing git features,
allowing git to push and pull a series to any git repository along with
other branches and tags. Each time you change the patch series, whether
fast-forwarding or not, you can "git series commit" a new version of the
patch series, complete with commit message.

You can rebase a patch series with "git series rebase -i", format it for
submission with "git series format", or send a "please pull" request with
"git series req".  git-series knows the base of your series, so you
don't need to count patches or find a commit hash to run rebase or
format.

If you're interested in trying git-series, see
https://github.com/git-series/git-series for installation instructions
and a "getting started" guide.

I've also documented the internal storage format of git-series at
https://github.com/git-series/git-series/blob/master/INTERNALS.md ,
including the details for how git-series ensures git can always reach,
push, and pull a series.

I'd welcome any feedback, whether on the interface and workflow, the
internals and collaboration, ideas on presenting diffs of patch series,
or anything else.

- Josh Triplett
