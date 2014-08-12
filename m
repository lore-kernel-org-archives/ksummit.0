Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 27F64523
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 16:22:02 +0000 (UTC)
Received: from mail4.hitachi.co.jp (mail4.hitachi.co.jp [133.145.228.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5E90320327
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 16:22:01 +0000 (UTC)
Message-ID: <53EA3F22.8080607@hitachi.com>
Date: Wed, 13 Aug 2014 01:21:54 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: Guenter Roeck <linux@roeck-us.net>
References: <53E38ED5.9000300@samsung.com>
	<53E43365.50809@hitachi.com>	<53E8CF03.6020308@samsung.com>
	<53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<53EA3DA0.2070407@roeck-us.net>
In-Reply-To: <53EA3DA0.2070407@roeck-us.net>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: shuah.kh@samsung.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

(2014/08/13 1:15), Guenter Roeck wrote:
> On 08/12/2014 06:00 AM, Grant Likely wrote:
>> On Tue, 12 Aug 2014 01:13:07 +0900, Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:
>>> (2014/08/11 23:11), Shuah Khan wrote:
>>>>> (2014/08/07 23:36), Shuah Khan wrote:> As a first step towards a larger goal to enable developer
>>>>>> friendly kernel testing framework, a new make target is
>>>>>> planned for 3.17. In addition, 3.17 includes work done to
>>>>>> fix tools/testing/sefltests to run without failures.
>>>>>>
>>>>>> Short summary of work done so far for 3.17:
>>>>>>
>>>>>> - fix compile errors and warnings in various tests
>>>>>> - fix run-time errors when tests aren't run as root
>>>>>> - enhance and improve cpu and memory hot-plug tests
>>>>>>      to run in limited scope mode by default. A new make
>>>>>>      target to select full-scope testing. Prior to this
>>>>>>      change, cpu and memory hot-plug tests hung trying to
>>>>>>      hot-plug all but cpu0 and a large portion of the memory.
>>>>>> - add a new kselftest target to run existing selftests
>>>>>>      to start with.
>>>>>
>>>>> Instead of running the selftests, can we build the testcases and
>>>>> install it as a tool? I think running tests on the tree is not a
>>>>> good idea...
>>>>
>>>> One of the goals is to leverage developer tests that we already have.
>>>> When a developer makes a kernel change and wants to see if that change
>>>> lead to any regression, having the ability to buidl and run selftests on
>>>> the newly installed kernel withe the same source tree is very useful.
>>>> That is the reason behind adding this new target.
>>>
>>> I see, for that purpose, installing testcase may not fit.
>>> BTW, how would it cover cross-build?
>>
>> I'm interested in this as well. I'm working on a tool that crossbuilds a
>> very simple busybox rootfs and boots in QEMU for as many architectures
>> as possible. I want to make it easy to sanity test all the major
>> architectures. Right now it does little more than boot to a login
>> prompt, but I'd like to get the kselftests into it also.
>>
> 
> Do you have that public yet ? I might want to use that for my -stable sanity tests.

IMHO, We'd better share those testing tools/environments as much as
possible so that each developer can ensure no regressions in their
patches before sending it.

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
