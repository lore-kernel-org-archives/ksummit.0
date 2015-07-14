Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 32CF593E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:56:57 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0211.hostedemail.com
	[216.40.44.211])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C27B2110
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:56:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id AD009213367
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 13:29:58 +0000 (UTC)
Date: Tue, 14 Jul 2015 09:29:55 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150714092955.2d28984b@gandalf.local.home>
In-Reply-To: <1436871795.2445.8.camel@HansenPartnership.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
	<1436871795.2445.8.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
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

On Tue, 14 Jul 2015 12:03:15 +0100
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> No harm comes to us from running regression fixes into -next and thus in
> the 0day tests because they eventually get into the correct kernel and
> the benefit is that bogus fixes may be picked up by the tests.  Why
> would we not incubate for a while in -next when there's no down side and
> plenty of upside?

Mark Brown mentioned the down side. Depending on what the bug is,
especially if it breaks Linus's build, or causes some other major
breakage, to wait in next means that Linus's tree (that everyone is
based on) will be broken for that long too. Which could stop other
types of testing of Linus's tree.

In fact, I have a series of tests I run before pushing any patch to
Linus. If my tests break because of other breakage in Linus's tree, I
have to stop what I'm doing and find those bugs before I can proceed.
With v4.2-rc1, I found 3 bugs that I had to fix or find workarounds
before I could push my fixes to Linus.

I've been trying to get time to test against -next before the merge
window opens, because my tests usually discover these there. But I
don't always have time to do so.

-- Steve
