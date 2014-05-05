Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C761B995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 03:47:17 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3A1802026B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 03:47:17 +0000 (UTC)
Message-ID: <536709BA.7070809@roeck-us.net>
Date: Sun, 04 May 2014 20:47:06 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Josh Boyer <jwboyer@fedoraproject.org>
References: <53662254.9060100@huawei.com>	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>	<53664E31.6030706@roeck-us.net>
	<CA+5PVA4Apnr-V=a3g103RO2L8mRjzVzte_5GH9p0GKRpMC=4-Q@mail.gmail.com>
In-Reply-To: <CA+5PVA4Apnr-V=a3g103RO2L8mRjzVzte_5GH9p0GKRpMC=4-Q@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: lizf.kern@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/04/2014 05:37 PM, Josh Boyer wrote:
> On Sun, May 4, 2014 at 10:26 AM, Guenter Roeck <linux@roeck-us.net> wrote:
>> On 05/04/2014 05:54 AM, Josh Boyer wrote:>
>>>> - Testing stable kernels
>>>>
>>>> The testing of stable kernels when a new version is under review seems
>>>> quite limited. We have Dave's Trinity and Fengguang's 0day, but they
>>>> are run on mainline/for-next only. Would be useful to also have them
>>>> run on stable kernels?
>>>
>>>
>>> Yes, but I don't think that's the main problem.  The regressions we
>>> see in stable releases tend to come from patches that trinity and 0day
>>> don't cover.  Things like backlights not working, or specific devices
>>> acting strangely, etc.
>>>
>>> Put another way, if trinity and 0day are running on mainline and
>>> linux-next already, and we still see those issues introduced into a
>>> stable kernel later, then trinity and 0day didn't find the original
>>> problem to being with.
>>>
>>
>> Not necessarily. Sometimes bugs are introduced by missing patches or
>> bad/incoomplete backports. Sure, I catch the compile errors, and others
>> run basic real-system testing, at least with x86, but we could use more
>> run-time testing, especially on non-x86 architectures.
>
> Right, I agreed we should run more testing on stable.  I just don't
> think it will result in a massive amount of issues found.  Trinity and
> 0day aren't going to have the same impact on stable kernels that they
> do upstream.  Simply setting expectations.
>

Correct, it depends on expectations, and my expectations for stable releases
are substantially higher than those for baseline releases. I do find quite a
number of compile errors, most of the time even before a stable release is
sent out for review. I would consider each of those critical. I don't find
many runtime errors, simply because my qemu tests are simply along the line
of "it boots". But each runtime error found would, in my opinion, be critical
by definition; stable releases simply should not introduce new bugs, period.

This may be seen as somewhat strong definition of the term "severe",
but in my work environment the attitude is to never update the kernel under
any circumstances. Or, in other words, it is quite hostile to someone who
advocates following upstream kernel releases. Each new bug, as minor as it
may be in a practical sense, is seen as argument (or ammunition) against
kernel updates. Note that this specifically includes performance regressions,
as minor as they may be. Given that, I would love to see Fengguang's
performance tests run on stable releases, simply because that would give me
confidence (and proof) that no performance regressions were introduced.

Guenter
