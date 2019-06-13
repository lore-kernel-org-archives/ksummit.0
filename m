Return-Path: <bart.vanassche@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 424D1D4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 15:39:27 +0000 (UTC)
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3335184C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 15:39:26 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id l19so8567106pgh.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 08:39:26 -0700 (PDT)
To: Guenter Roeck <linux@roeck-us.net>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	James Bottomley <James.Bottomley@HansenPartnership.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<yq18su51q92.fsf@oracle.com>
	<3418df99-ff2b-9a9f-7702-1e272d1cb783@acm.org>
	<9623aa32-31f2-0053-d3bc-64bfb151865a@roeck-us.net>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <fa4e430c-3356-0ee5-3c47-8d4b6fcf19fe@acm.org>
Date: Thu, 13 Jun 2019 08:39:22 -0700
MIME-Version: 1.0
In-Reply-To: <9623aa32-31f2-0053-d3bc-64bfb151865a@roeck-us.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 6/13/19 8:35 AM, Guenter Roeck wrote:
> On 6/13/19 8:21 AM, Bart Van Assche wrote:
>> On 6/13/19 8:03 AM, Martin K. Petersen wrote:
>>>
>>> James,
>>>
>>>> It depends: every patch you do to an old driver comes with a risk of
>>>> breakage.  What we've found is even apparently sane patches cause
>>>> breakage which isn't discovered until months later when someone with
>>>> the hardware actually tests.
>>>
>>> My pet peeve is with the constant stream of seemingly innocuous
>>> helper-interface-of-the-week changes. Such as "Use kzfoobar() instead of
>>> kfoobar() + memset()". And then a year later somebody decides kzfoobar()
>>> had a subtle adverse side-effect and now we all need to switch to
>>> kpzfoobar().
>>>
>>> I appreciate that some of these helpers may have merit in terms of
>>> facilitating static code checkers, etc. But other than that, I really
>>> fail to see the value of this constant churn.
>>>
>>> The devil is always in the details. It's almost inevitably these obvious
>>> five-liners that cause regressions down the line.
>>>
>>> So why do we keep doing this?
>>
>> How about discussing at the kernel summit whether or not patches that 
>> have not been tested on actual hardware should be ignored?
>>
> 
> A while ago I spent some time writing unit tests for various i2c based
> hwmon drivers (https://github.com/groeck/module-tests). With those,
> I found a substantial number of overflow conditions and other problems
> in various drivers.
> 
> Similar, my qemu boot tests have identified several problems over time,
> by nature of qemu often on hardware which is difficult if not almost
> impossible to find nowadays (ohci-sm501 is a current example).
> 
> Are you saying that such problems should not be fixed unless they can be
> verified on real hardware ?

How about leaving out "on actual hardware" from my e-mail? What you 
described sounds like valuable work to me. I think testing with qemu is 
sufficient.

Bart.
