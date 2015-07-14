Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DDD74B5A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:32:38 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7BB19177
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:32:38 +0000 (UTC)
Message-ID: <55A52B8B.5060606@oracle.com>
Date: Tue, 14 Jul 2015 11:32:27 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150714104623.GQ11162@sirena.org.uk>
	<55A51548.4040502@oracle.com>
	<20150714152515.GX11162@sirena.org.uk>
In-Reply-To: <20150714152515.GX11162@sirena.org.uk>
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

On 07/14/2015 11:25 AM, Mark Brown wrote:
> On Tue, Jul 14, 2015 at 09:57:28AM -0400, Sasha Levin wrote:
> 
> Re-wrapped the text, it looks like something joined all the paragraphs up into single lines.
> 
>> On 07/14/2015 06:46 AM, Mark Brown wrote:
> 
>>> Indeed depending on the bug having things forced to sit in -next for too long can be a real problem - I've had people refusing to fix build errors in Linus' tree for a week as they wanted things to cook in -next which took out automated testing of Linus' tree (and anything that merged it) for the duration.
> 
>> I don't agree that letting things cook in -next is hurting anyone: if it's a critical bug then Linus should probably delay releasing a final before it's been resolved, and if it's not then there's no harm for letting it sit outside for a bit.
> 
> If the issue being fixed is serious enough to take out substantial portion of our test coverage or affect a lot of other development usage then that's really disruptive to other work, it impacts things like bisection for example.  A strong rule does nobody any good, it's overkill for the problem.

If there's an issue that causes that effect then the original commit that
caused it should be reverted rather than introducing an untested fix right
away.

Obviously not a hard rule, but it should be the case in general.


Thanks,
Sasha
