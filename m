Return-Path: <amit.kucheria@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2F0444D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 06:28:47 +0000 (UTC)
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C3ACF1F940
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 06:28:46 +0000 (UTC)
Received: by mail-ve0-f182.google.com with SMTP id sa20so10076615veb.41
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 23:28:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53710132.60506@linux.vnet.ibm.com>
References: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
	<536B477B.2030800@linux.vnet.ibm.com>
	<20140512111407.GB5540@e103034-lin>
	<53710132.60506@linux.vnet.ibm.com>
Date: Tue, 13 May 2014 11:58:45 +0530
Message-ID: <CAP245DUZWbsEdkqVzYCZaVDO+nqjJrtaGiUh90asDHVhsmoPQw@mail.gmail.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>
Content-Type: text/plain; charset=UTF-8
Cc: "Brown, Len" <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH(CORE?) TOPIC] Energy conservation bias
	interfaces
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 10:43 PM, Preeti U Murthy
<preeti@linux.vnet.ibm.com> wrote:
> On 05/12/2014 04:44 PM, Morten Rasmussen wrote:
>> On Thu, May 08, 2014 at 09:59:39AM +0100, Preeti U Murthy wrote:
>>> On 05/07/2014 10:50 AM, Iyer, Sundar wrote:

<snip>

>>> Thats why I suggested the concept of profiles. If the user does not like
>>> the existing system profiles, he can derive from one of them that comes
>>> closes to his requirements and amend his preferences.
>>
>> IIUC, you are proposing to have profiles setting a lot of kernel
>> tunables rather than a single knob to control energy-awareness?
>>
>> My concern with profiles is that it basically exports most of the
>> energy-awareness decision problems to user-space. Maybe I'm missing
>> something? IMHO, it would be better to have more accurate energy related
>> topology information in the kernel so it would be able to take the
>> decisions.
>
> You are right. We shouldn't be exposing so many knobs to user-space and
> expect the kernel to make good decisions based on these knobs being
> tweaked by user space. How about a high level classification of profiles
> like balanced, performance, powersave? These alone can be chosen by the
> user and the lower end tunings left to the discretion of the kernel.

Hi Preeti,

In the other sub-thread, I'm arguing against such categorisation. :)

The optimisation techniques we have at our disposal don't neatly fit
into the "balanced", "performance", "powersave" baskets. And there
aren't really that many of them that we shouldn't directly expose
them, IMHO.

/Amit
