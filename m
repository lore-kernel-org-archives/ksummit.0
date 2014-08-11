Return-Path: <shuah.kh@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 360787B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Aug 2014 14:11:31 +0000 (UTC)
Received: from usmailout3.samsung.com (mailout3.w2.samsung.com
	[211.189.100.13])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 70277201F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Aug 2014 14:11:30 +0000 (UTC)
Received: from uscpsbgex3.samsung.com
	(u124.gpu85.samsung.co.kr [203.254.195.124]) by usmailout3.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0NA500FCBBEZ3Y40@usmailout3.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Mon,
	11 Aug 2014 10:11:23 -0400 (EDT)
Message-id: <53E8CF03.6020308@samsung.com>
Date: Mon, 11 Aug 2014 08:11:15 -0600
From: Shuah Khan <shuah.kh@samsung.com>
MIME-version: 1.0
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
In-reply-to: <53E43365.50809@hitachi.com>
Content-type: text/plain; charset=windows-1252; format=flowed
Content-transfer-encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	shuah Khan <shuah.kh@samsung.com>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
Reply-To: shuah.kh@samsung.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/07/2014 08:18 PM, Masami Hiramatsu wrote:
> Hello,
>
> I'm also interested in the selftests, especially its
> framework (top-level script).
>
> http://article.gmane.org/gmane.linux.kernel/1763766

Great.

>
> (2014/08/07 23:36), Shuah Khan wrote:> As a first step towards a larger goal to enable developer
>> friendly kernel testing framework, a new make target is
>> planned for 3.17. In addition, 3.17 includes work done to
>> fix tools/testing/sefltests to run without failures.
>>
>> Short summary of work done so far for 3.17:
>>
>> - fix compile errors and warnings in various tests
>> - fix run-time errors when tests aren't run as root
>> - enhance and improve cpu and memory hot-plug tests
>>     to run in limited scope mode by default. A new make
>>     target to select full-scope testing. Prior to this
>>     change, cpu and memory hot-plug tests hung trying to
>>     hot-plug all but cpu0 and a large portion of the memory.
>> - add a new kselftest target to run existing selftests
>>     to start with.
>
> Instead of running the selftests, can we build the testcases and
> install it as a tool? I think running tests on the tree is not a
> good idea...

One of the goals is to leverage developer tests that we already have.
When a developer makes a kernel change and wants to see if that change
lead to any regression, having the ability to buidl and run selftests on 
the newly installed kernel withe the same source tree is very useful.
That is the reason behind adding this new target.

Existing selfests are a collection of tools that exercise several
testcases that are specific each area they target. This is a good
start and we can definitely start enhancing the tools and build
testcases.

> Also, as I said in above mail, I'd like to suggest to add at least
> log management and statistics to the test. Those are good to automate
> regression tests. :)
>

Right. Some existing selftests do that, but not all. It would be
helpful to add that to all.

-- Shuah


-- 
Shuah Khan
Senior Linux Kernel Developer - Open Source Group
Samsung Research America(Silicon Valley)
shuah.kh@samsung.com | (970) 672-0658
