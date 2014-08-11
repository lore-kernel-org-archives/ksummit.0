Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CA67B4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Aug 2014 16:13:15 +0000 (UTC)
Received: from mail4.hitachi.co.jp (mail4.hitachi.co.jp [133.145.228.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7E1422025C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Aug 2014 16:13:14 +0000 (UTC)
Message-ID: <53E8EB93.8030301@hitachi.com>
Date: Tue, 12 Aug 2014 01:13:07 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: shuah.kh@samsung.com
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com>
In-Reply-To: <53E8CF03.6020308@samsung.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/08/11 23:11), Shuah Khan wrote:
>> (2014/08/07 23:36), Shuah Khan wrote:> As a first step towards a larger goal to enable developer
>>> friendly kernel testing framework, a new make target is
>>> planned for 3.17. In addition, 3.17 includes work done to
>>> fix tools/testing/sefltests to run without failures.
>>>
>>> Short summary of work done so far for 3.17:
>>>
>>> - fix compile errors and warnings in various tests
>>> - fix run-time errors when tests aren't run as root
>>> - enhance and improve cpu and memory hot-plug tests
>>>     to run in limited scope mode by default. A new make
>>>     target to select full-scope testing. Prior to this
>>>     change, cpu and memory hot-plug tests hung trying to
>>>     hot-plug all but cpu0 and a large portion of the memory.
>>> - add a new kselftest target to run existing selftests
>>>     to start with.
>>
>> Instead of running the selftests, can we build the testcases and
>> install it as a tool? I think running tests on the tree is not a
>> good idea...
> 
> One of the goals is to leverage developer tests that we already have.
> When a developer makes a kernel change and wants to see if that change
> lead to any regression, having the ability to buidl and run selftests on 
> the newly installed kernel withe the same source tree is very useful.
> That is the reason behind adding this new target.

I see, for that purpose, installing testcase may not fit.
BTW, how would it cover cross-build?

> Existing selfests are a collection of tools that exercise several
> testcases that are specific each area they target. This is a good
> start and we can definitely start enhancing the tools and build
> testcases.

Agreed.

> 
>> Also, as I said in above mail, I'd like to suggest to add at least
>> log management and statistics to the test. Those are good to automate
>> regression tests. :)
>>
> 
> Right. Some existing selftests do that, but not all. It would be
> helpful to add that to all.

Yeah, and I hope the selftest top-level script to provide such
functions to each test, because those should be common, and easy
to manage.

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
