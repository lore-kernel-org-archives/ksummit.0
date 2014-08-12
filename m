Return-Path: <glikely@secretlab.ca>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 021394D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 16:23:50 +0000 (UTC)
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F0AA20279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 16:23:49 +0000 (UTC)
Received: by mail-oa0-f43.google.com with SMTP id i7so7480229oag.30
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 09:23:48 -0700 (PDT)
MIME-Version: 1.0
Sender: glikely@secretlab.ca
In-Reply-To: <53EA3DA0.2070407@roeck-us.net>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<53EA3DA0.2070407@roeck-us.net>
From: Grant Likely <grant.likely@secretlab.ca>
Date: Tue, 12 Aug 2014 17:23:28 +0100
Message-ID: <CACxGe6vYNjEAZT6YhB5WNyh40urSEVRbmVaWjEt6nQNUbgMbPw@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset=ISO-8859-1
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

On Tue, Aug 12, 2014 at 5:15 PM, Guenter Roeck <linux@roeck-us.net> wrote:
> On 08/12/2014 06:00 AM, Grant Likely wrote:
>>
>> On Tue, 12 Aug 2014 01:13:07 +0900, Masami Hiramatsu
>> <masami.hiramatsu.pt@hitachi.com> wrote:
>>>
>>> (2014/08/11 23:11), Shuah Khan wrote:
>>>>>
>>>>> (2014/08/07 23:36), Shuah Khan wrote:> As a first step towards a larger
>>>>> goal to enable developer
>>>>>>
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
>>>>>
>>>>> Instead of running the selftests, can we build the testcases and
>>>>> install it as a tool? I think running tests on the tree is not a
>>>>> good idea...
>>>>
>>>>
>>>> One of the goals is to leverage developer tests that we already have.
>>>> When a developer makes a kernel change and wants to see if that change
>>>> lead to any regression, having the ability to buidl and run selftests on
>>>> the newly installed kernel withe the same source tree is very useful.
>>>> That is the reason behind adding this new target.
>>>
>>>
>>> I see, for that purpose, installing testcase may not fit.
>>> BTW, how would it cover cross-build?
>>
>>
>> I'm interested in this as well. I'm working on a tool that crossbuilds a
>> very simple busybox rootfs and boots in QEMU for as many architectures
>> as possible. I want to make it easy to sanity test all the major
>> architectures. Right now it does little more than boot to a login
>> prompt, but I'd like to get the kselftests into it also.
>>
>
> Do you have that public yet ? I might want to use that for my -stable sanity
> tests.

Nothing yet. It's currently hacked into my build environment script.
I'm working on getting it into a form usable by others. Ideally I
think it should go into the kernel tools/testing directory.

g.
