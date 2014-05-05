Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 779EE996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 03:10:07 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [119.145.14.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 703C42024F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 03:10:06 +0000 (UTC)
Message-ID: <536700DA.1060404@huawei.com>
Date: Mon, 5 May 2014 11:09:14 +0800
From: Li Zefan <lizefan@huawei.com>
MIME-Version: 1.0
To: Josh Boyer <jwboyer@fedoraproject.org>
References: <53662254.9060100@huawei.com>
	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
	<53664E31.6030706@roeck-us.net>
	<CA+5PVA4Apnr-V=a3g103RO2L8mRjzVzte_5GH9p0GKRpMC=4-Q@mail.gmail.com>
In-Reply-To: <CA+5PVA4Apnr-V=a3g103RO2L8mRjzVzte_5GH9p0GKRpMC=4-Q@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org, lizf.kern@gmail.com
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2014/5/5 8:37, Josh Boyer wrote:
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
> think it will result in a massive amount of issues found.

Of course, otherwise our stable trees can't really be called stable. ;)

> Trinity and
> 0day aren't going to have the same impact on stable kernels that they
> do upstream.  Simply setting expectations.
> 
