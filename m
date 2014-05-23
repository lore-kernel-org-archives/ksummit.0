Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C7B429C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 16:35:26 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 345DA1FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 16:35:26 +0000 (UTC)
Message-ID: <537F78BE.9080100@roeck-us.net>
Date: Fri, 23 May 2014 09:35:10 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Olof Johansson <olof@lixom.net>, Jason Cooper <jason@lakedaemon.net>
References: <537F3551.2070104@hitachi.com>	<20140523133200.GY8664@titan.lakedaemon.net>
	<CAOesGMhZ-RNs0bQBTABOQhjk3R2EjiWsSBpJ5248Z5YS+RvrRA@mail.gmail.com>
In-Reply-To: <CAOesGMhZ-RNs0bQBTABOQhjk3R2EjiWsSBpJ5248Z5YS+RvrRA@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/23/2014 09:24 AM, Olof Johansson wrote:
> On Fri, May 23, 2014 at 6:32 AM, Jason Cooper <jason@lakedaemon.net> wrote:
>> Masami,
>>
>> On Fri, May 23, 2014 at 08:47:29PM +0900, Masami Hiramatsu wrote:
>>> Issue:
>>> There are many ways to test the kernel but it's neither well documented
>>> nor standardized/organized.
>>>
>>> As you may know, testing kernel is important on each phase of kernel
>>> life-cycle. For example, even at the designing phase, actual test-case
>>> shows us what the new feature/design does, how is will work, and how
>>> to use it. This can improve the quality of the discussion.
>>>
>>> Through the previous discussion I realized there are many different methods/
>>> tools/functions for testing kernel, LTP, trinity, tools/testing/selftest,
>>> in-kernel selftest etc. Each has good points and bad points.
>>
>> * automated boot testing (embedded platforms)
>> * runtime testing
>>
>> A lot of development that we see is embedded platforms using
>> cross-compilers.  That makes a whole lot of tests impossible to run on
>> the host.  Especially when it deals with hardware interaction.  So
>> run-time testing definitely needs to be a part of the discussion.
>>
>> The boot farms that Kevin and Olof run currently tests booting to a
>> command prompt.  We're catching a lot of regressions before they hit
>> mainline, which is great.  But I'd like to see how we can extend that.
>> And yes, I know those farms are saturated, and we need to bring
>> something else on line to do more functional testing,  Perhaps break up
>> the testing load:  boot-test linux-next, and runtime tests of the -rcX
>> tags and stable tags.
>
> I wouldn't call them saturated, but neither of us will be able to
> scale to 10x the current size. 2-3x should be doable.
>

A lot can be done with qemu. My tests run to boot prompt for several architectures,
but are very basic (no networking, for example). I would love to add more tests,
but time is a problem.

Guenter
