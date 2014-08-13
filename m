Return-Path: <aneesh.kumar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 45C88523
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 15:06:37 +0000 (UTC)
Received: from e23smtp06.au.ibm.com (e23smtp06.au.ibm.com [202.81.31.148])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3F400201CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 15:06:36 +0000 (UTC)
Received: from /spool/local
	by e23smtp06.au.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<aneesh.kumar@linux.vnet.ibm.com>; Thu, 14 Aug 2014 01:06:33 +1000
Received: from d23relay08.au.ibm.com (d23relay08.au.ibm.com [9.185.71.33])
	by d23dlp02.au.ibm.com (Postfix) with ESMTP id E88212BB002D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 01:06:29 +1000 (EST)
Received: from d23av01.au.ibm.com (d23av01.au.ibm.com [9.190.234.96])
	by d23relay08.au.ibm.com (8.13.8/8.13.8/NCO v10.0) with ESMTP id
	s7DF7BKl8716432 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 01:07:12 +1000
Received: from d23av01.au.ibm.com (localhost [127.0.0.1])
	by d23av01.au.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	s7DF6SMv015874 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 01:06:28 +1000
From: "Aneesh Kumar K.V" <aneesh.kumar@linux.vnet.ibm.com>
To: Grant Likely <grant.likely@secretlab.ca>,
	Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>, shuah.kh@samsung.com
In-Reply-To: <20140812130043.4894DC40C5C@trevor.secretlab.ca>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
Date: Wed, 13 Aug 2014 20:36:25 +0530
Message-ID: <87ha1g5szy.fsf@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain
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

Grant Likely <grant.likely@secretlab.ca> writes:

> On Tue, 12 Aug 2014 01:13:07 +0900, Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:
>> (2014/08/11 23:11), Shuah Khan wrote:
>> >> (2014/08/07 23:36), Shuah Khan wrote:> As a first step towards a larger goal to enable developer
>> >>> friendly kernel testing framework, a new make target is
>> >>> planned for 3.17. In addition, 3.17 includes work done to
>> >>> fix tools/testing/sefltests to run without failures.
>> >>>
>> >>> Short summary of work done so far for 3.17:
>> >>>
>> >>> - fix compile errors and warnings in various tests
>> >>> - fix run-time errors when tests aren't run as root
>> >>> - enhance and improve cpu and memory hot-plug tests
>> >>>     to run in limited scope mode by default. A new make
>> >>>     target to select full-scope testing. Prior to this
>> >>>     change, cpu and memory hot-plug tests hung trying to
>> >>>     hot-plug all but cpu0 and a large portion of the memory.
>> >>> - add a new kselftest target to run existing selftests
>> >>>     to start with.
>> >>
>> >> Instead of running the selftests, can we build the testcases and
>> >> install it as a tool? I think running tests on the tree is not a
>> >> good idea...
>> > 
>> > One of the goals is to leverage developer tests that we already have.
>> > When a developer makes a kernel change and wants to see if that change
>> > lead to any regression, having the ability to buidl and run selftests on 
>> > the newly installed kernel withe the same source tree is very useful.
>> > That is the reason behind adding this new target.
>> 
>> I see, for that purpose, installing testcase may not fit.
>> BTW, how would it cover cross-build?
>
> I'm interested in this as well. I'm working on a tool that crossbuilds a
> very simple busybox rootfs and boots in QEMU for as many architectures
> as possible. I want to make it easy to sanity test all the major
> architectures. Right now it does little more than boot to a login
> prompt, but I'd like to get the kselftests into it also.
>

I am interested in this as well, I will reach Chicago only on 18th
afternoon (due to flight availability issues). I have been using
https://github.com/autotest/autotest-client-tests for running sanity
tests on different kernel versions. It can be driven with sandboxed setup
using https://github.com/autotest/virt-test

-aneesh
