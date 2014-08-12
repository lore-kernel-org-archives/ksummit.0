Return-Path: <shuah.kh@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A26D4D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 16:34:50 +0000 (UTC)
Received: from usmailout1.samsung.com (mailout1.w2.samsung.com
	[211.189.100.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CB17820328
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 16:34:49 +0000 (UTC)
Received: from uscpsbgex2.samsung.com
	(u123.gpu85.samsung.co.kr [203.254.195.123]) by mailout1.w2.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0NA700GYICPU6V20@mailout1.w2.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Tue,
	12 Aug 2014 12:34:42 -0400 (EDT)
Message-id: <53EA4220.4020509@samsung.com>
Date: Tue, 12 Aug 2014 10:34:40 -0600
From: Shuah Khan <shuah.kh@samsung.com>
MIME-version: 1.0
To: Grant Likely <grant.likely@secretlab.ca>,
	Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
In-reply-to: <20140812130043.4894DC40C5C@trevor.secretlab.ca>
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

On 08/12/2014 07:00 AM, Grant Likely wrote:
> On Tue, 12 Aug 2014 01:13:07 +0900, Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:
>> (2014/08/11 23:11), Shuah Khan wrote:
>>>> (2014/08/07 23:36), Shuah Khan wrote:> As a first step towards a larger goal to enable developer
>>>>> friendly kernel testing framework, a new make target is
>>>>> planned for 3.17. In addition, 3.17 includes work done to
>>>>> fix tools/testing/sefltests to run without failures.
>>>>>
>>>>> Short summary of work done so far for 3.17:
>>>>>
>>>>> - fix compile errors and warnings in various tests
>>>>> - fix run-time errors when tests aren't run as root
>>>>> - enhance and improve cpu and memory hot-plug tests
>>>>>      to run in limited scope mode by default. A new make
>>>>>      target to select full-scope testing. Prior to this
>>>>>      change, cpu and memory hot-plug tests hung trying to
>>>>>      hot-plug all but cpu0 and a large portion of the memory.
>>>>> - add a new kselftest target to run existing selftests
>>>>>      to start with.
>>>>
>>>> Instead of running the selftests, can we build the testcases and
>>>> install it as a tool? I think running tests on the tree is not a
>>>> good idea...
>>>
>>> One of the goals is to leverage developer tests that we already have.
>>> When a developer makes a kernel change and wants to see if that change
>>> lead to any regression, having the ability to buidl and run selftests on
>>> the newly installed kernel withe the same source tree is very useful.
>>> That is the reason behind adding this new target.
>>
>> I see, for that purpose, installing testcase may not fit.
>> BTW, how would it cover cross-build?

I haven't given this too much thought yet. It is at the back on
my mind. A couple of issues that will need to be worked to get
kselftest working in cross-build env.:

- tests (Makefiles especially) probably need work to pick the right
   compiler and so on. This would be first step.
- some tests probably aren't suited for all cross env. The goal
   should be though to keep this set to minimum.

>
> I'm interested in this as well. I'm working on a tool that crossbuilds a
> very simple busybox rootfs and boots in QEMU for as many architectures
> as possible. I want to make it easy to sanity test all the major
> architectures. Right now it does little more than boot to a login
> prompt, but I'd like to get the kselftests into it also.
>

Great. Why not? The first step would be get kselftest compiling in
cross-builds. I haven't tried it yet, however in a private
response to this thread, one developer mentioned that some tests
don't pick the correct compiler result of hard-coded gcc instead
of using $(CC) and assumptions on libraries. So as we go forward
we have to get these things fixed along the way.

-- Shuah



-- 
Shuah Khan
Senior Linux Kernel Developer - Open Source Group
Samsung Research America(Silicon Valley)
shuah.kh@samsung.com | (970) 672-0658
