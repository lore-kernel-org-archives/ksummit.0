Return-Path: <daniel.lezcano@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 77D0A48E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 09:15:23 +0000 (UTC)
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF8F31F940
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 09:15:22 +0000 (UTC)
Received: by mail-we0-f175.google.com with SMTP id t61so1626077wes.34
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 02:15:21 -0700 (PDT)
Message-ID: <53733432.5050106@linaro.org>
Date: Wed, 14 May 2014 11:15:30 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
MIME-Version: 1.0
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Preeti U Murthy <preeti@linux.vnet.ibm.com>
References: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
	<20140512111407.GB5540@e103034-lin>
	<53710132.60506@linux.vnet.ibm.com>
	<4212156.95Ek3E3WsK@vostro.rjw.lan>
In-Reply-To: <4212156.95Ek3E3WsK@vostro.rjw.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Cc: "Brown, Len" <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>
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

On 05/14/2014 01:41 AM, Rafael J. Wysocki wrote:
> On Monday, May 12, 2014 10:43:22 PM Preeti U Murthy wrote:
>> On 05/12/2014 04:44 PM, Morten Rasmussen wrote:
>>> On Thu, May 08, 2014 at 09:59:39AM +0100, Preeti U Murthy wrote:
>>>> On 05/07/2014 10:50 AM, Iyer, Sundar wrote:
>
> [cut]
>
>>> While I agree that there are mechanisms to deal with thermal throttling
>>> already, I think it is somewhat related to energy-awareness. If you need
>>> throttling due to thermal constraints you are burning too much power in
>>> your system. If you factor in energy-effiency and the requirements for
>>> the current use-case you might be able to stay within the power budget
>>> with a smaller performance impact than blindly throttling all
>>> subsystems.
>>
>> True. I was intending to distinguish the who and the why in the above
>> two situations. My only point was that thermal throttling is undertaken
>> by platform and is a safety mechanism whereas switching to energy saving
>> mode when battery is low is undertaken by the kernel and will lead to
>> better end-user experience i.e.battery longevity. Yes the kernel is
>> expected to prevent the system from being throttled as much as possible.
>
> The kernel may very well be responsible for thermal throttling in some cases.
> At least it needs to be able to respond to "do not draw more power than this"
> type of requests.
>
> [cut]
>
>>>
>>> IIUC, you are proposing to have profiles setting a lot of kernel
>>> tunables rather than a single knob to control energy-awareness?
>>>
>>> My concern with profiles is that it basically exports most of the
>>> energy-awareness decision problems to user-space. Maybe I'm missing
>>> something? IMHO, it would be better to have more accurate energy related
>>> topology information in the kernel so it would be able to take the
>>> decisions.
>>
>> You are right. We shouldn't be exposing so many knobs to user-space and
>> expect the kernel to make good decisions based on these knobs being
>> tweaked by user space. How about a high level classification of profiles
>> like balanced, performance, powersave? These alone can be chosen by the
>> user and the lower end tunings left to the discretion of the kernel.
>
> Well, so we're actually back to a central knob with three levels effectively. :-)

May be we can consider adding the large number of knobs with debugfs ?


-- 
  <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
