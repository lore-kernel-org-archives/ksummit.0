Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 10FFF279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:49:15 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9E6A0258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:49:14 +0000 (UTC)
Message-ID: <55BBB514.7060509@oracle.com>
Date: Fri, 31 Jul 2015 13:49:08 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Julia Lawall <julia.lawall@lip6.fr>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
References: <55BAE39F.9060705@oracle.com>
	<alpine.DEB.2.02.1507310650220.2218@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1507310650220.2218@localhost6.localdomain6>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/31/2015 12:51 AM, Julia Lawall wrote:
>> I'd like to nominate myself to this year's kernel summit.
>> > 
>> > Mainly I'd like to talk about improving testing around the kernel, both by catching bugs
>> > and by improving the quality of debug output that comes out of the kernel.
> Improving it in what way?  We are doing some research related to logging 
> at the moment, and so I would be interested to hear what you think are the 
> problems.

>From my perspective the biggest issue is making a given error state more reproducible. Quite
often I am able to trigger a bug on my testing box, but the information the kernel spits out
(backtrace + registers) aren't too useful if the problem is complicated.

The result is that finding out what happens depends on few people who are able to "magically"
trigger bugs and result in a long and inefficient back and forth while the bug manages to
sneak in upstream and to users hands.

To sum it up, I think we need to figure out a way to produce enough information to make bugs
more reproducible, but not too much to avoid a needle in a haystack situation.

In this regard, the new Intel PT technology is interesting and it's also worth figuring out
a good way to integrate it with our current infrastructure/tools.


Among other, less urgent ideas I'd like to discuss are:

 - Using KASan for poison fields. Quite a few structures have embedded poison fields. Rather
than detecting a corruption after it happens we are able to detect it as it happens - making
bugs more obvious.

 - Encouraging folks who add new sysctls (or features to existing sysctls) to contribute
testing code to the various testing projects around (trinity and such).

 - Improving userspace tooling to make transfer of information simpler (along the lines of
scripts/decode_stacktrace.sh that no one seems to be using).

I suppose it'll be interesting to discuss the idea of making the kernel dump a "black box"
on panic. Not just the core memory, but also various parameters regarding configuration and
such, to enable folks to provide us with more than just backtraces.


Thanks,
Sasha
