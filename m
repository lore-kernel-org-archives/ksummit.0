Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 89E53A43
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Aug 2014 10:43:28 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0F5E71FA7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Aug 2014 10:43:28 +0000 (UTC)
Message-ID: <53FB134C.90203@roeck-us.net>
Date: Mon, 25 Aug 2014 03:43:24 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Grant Likely <grant.likely@secretlab.ca>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
	<20140823081245.GA16949@localhost>
	<CACxGe6s76N3eL5LK5HnLgMGHp3tJKsBBcsP-JYHFkCH+XjUWWg@mail.gmail.com>
	<53FA2B98.1050003@roeck-us.net>
	<CACxGe6t=Sj+OLVOyCYCa+r5kS4paxmXapTA0Xe43TX1rHtFJYA@mail.gmail.com>
In-Reply-To: <CACxGe6t=Sj+OLVOyCYCa+r5kS4paxmXapTA0Xe43TX1rHtFJYA@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Tony Breeds <tony@bakeyournoodle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Fwd: Rough notes from testing unconference
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/25/2014 02:23 AM, Grant Likely wrote:
> On 24 Aug 2014 19:14, "Guenter Roeck" <linux@roeck-us.net> wrote:
>>
>> On 08/24/2014 10:12 AM, Grant Likely wrote:
>>> ktest depends on a rootfs from elsewhere. I'm only mildly familiar
>>> with aiaiai, but it appears to be the same situation. The gap I see is
>>> the ability to cross compile the kselftest test cases and the ability
>>> to create a rootfs including the test cases for any architecture. A
>>> tool to solve that problem should be usable by both ktest and aiaiai.
>>>
>> Exactly.
>>
>> Wonder if it would be possible to publish prebuilt toolchains on kernel.org
>> which are suitable to create the root file system.
>
> I want to experiment with crosstool-ng, and yes I think the binaries
> should go on kernel.org. The current toolchains on kernel.org are
> built by Tony Breeds using Segher Boessenkool's buildall scripts (gcc
> only, no glibc). There are patches to buildall which will build a
> libc, but I haven't had much success with them.
>

Building toolchains with the latest version of buildroot is working
pretty well for me.

Guenter
