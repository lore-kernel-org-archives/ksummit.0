Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2B2DAAE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 13:57:35 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C2C4E1A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 13:57:34 +0000 (UTC)
Message-ID: <55A51548.4040502@oracle.com>
Date: Tue, 14 Jul 2015 09:57:28 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150714104623.GQ11162@sirena.org.uk>
In-Reply-To: <20150714104623.GQ11162@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252
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

On 07/14/2015 06:46 AM, Mark Brown wrote:
> On Mon, Jul 13, 2015 at 09:02:26PM -0400, Steven Rostedt wrote:
> 
>>> But I highly doubt that having them sit in next for two weeks would change that. Again, the code that the patches fix was already in next, and the original bug was never found there. What makes you think bugs in the fix patches will be any different?
> Two weeks seems excessive but having them there for a -next build means the automated stuff has a chance to kick in which is 90% of what -next gives us in terms of quality.  The benefit does depend on how likely the change is to be affected by system/platform/config specific issues.
> 
> Indeed depending on the bug having things forced to sit in -next for too long can be a real problem - I've had people refusing to fix build errors in Linus' tree for a week as they wanted things to cook in -next which took out automated testing of Linus' tree (and anything that merged it) for the duration.

I don't agree that letting things cook in -next is hurting anyone: if it's
a critical bug then Linus should probably delay releasing a final before
it's been resolved, and if it's not then there's no harm for letting it
sit outside for a bit.

It seems that the current process is to just release at rc7/8 and deal with
breakage during the next window, consider that 4.1-rc6..4.1-rc7 had 128
non-merge commits, and 4.1-rc7..4.1-rc8 had 98. While it's a decrease, it's
not a significant one, and I don't think that anyone would claim that if
there would have been an -rc9 it would have an insignificant amount of commits.

In summary: if there's a critical bug, hold on releasing a final version If not,
leave it alone to cook in -next.


Thanks,
Sasha
