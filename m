Return-Path: <a.hajda@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4103E87A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 16:19:10 +0000 (UTC)
Received: from mailout3.w1.samsung.com (mailout3.w1.samsung.com
	[210.118.77.13])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC6F7B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 16:19:08 +0000 (UTC)
Received: from eucpsbgm2.samsung.com (unknown [203.254.199.245])
	by mailout3.w1.samsung.com
	(Oracle Communications Messaging Server 7.0.5.31.0 64bit (built May 5
	2014)) with ESMTP id <0OB80065CNZUV230@mailout3.w1.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Mon,
	01 Aug 2016 17:19:06 +0100 (BST)
To: Lars-Peter Clausen <lars@metafoo.de>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
	<20160729111303.GA10376@sirena.org.uk> <2525670.QGOuaEkzC4@avalon>
	<93f7ce34-c2e9-583f-2e6f-1f23ae76a761@xs4all.nl>
	<a4640467-d916-d52c-a905-152a53251f94@metafoo.de>
	<20160801105531.2687069a@recife.lan> <579F6049.9030408@samsung.com>
	<63f6e3b4-3a48-182f-e8d5-87e720b60d5d@metafoo.de>
	<579F6C00.502@samsung.com>
	<f612af4e-ddd1-44e3-9d0a-c7540636351c@metafoo.de>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-id: <579F766F.1000605@samsung.com>
Date: Mon, 01 Aug 2016 18:18:55 +0200
MIME-version: 1.0
In-reply-to: <f612af4e-ddd1-44e3-9d0a-c7540636351c@metafoo.de>
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: 7bit
Cc: "vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Valentin Rothberg <valentinrothberg@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/01/2016 05:43 PM, Lars-Peter Clausen wrote:
> On 08/01/2016 05:34 PM, Andrzej Hajda wrote:
>> On 08/01/2016 04:54 PM, Lars-Peter Clausen wrote:
>>> On 08/01/2016 04:44 PM, Andrzej Hajda wrote:
>>>> On 08/01/2016 03:55 PM, Mauro Carvalho Chehab wrote:
>>>>> Em Mon, 1 Aug 2016 15:33:22 +0200
>>>>> Lars-Peter Clausen <lars@metafoo.de> escreveu:
>>>>>
>>>>>> On 08/01/2016 03:21 PM, Hans Verkuil wrote:
>>>>>>> On 08/01/2016 03:09 PM, Laurent Pinchart wrote:  
>>>>>>>> On Friday 29 Jul 2016 12:13:03 Mark Brown wrote:  
>>>>>>>>> On Fri, Jul 29, 2016 at 09:45:55AM +0200, Hans Verkuil wrote:  
>>>>>>>>>> My main problem is not so much with deferred probe (esp. for cyclic
>>>>>>>>>> dependencies it is a simple method of solving this, and simple is good).
>>>>>>>>>> My main problem is that you can't tell the system that driver A needs to
>>>>>>>>>> be probed after drivers B, C and D are probed first.
>>>>>>>>>>
>>>>>>>>>> That would allow us to get rid of v4l2-async.c which is a horrible hack.
>>>>>>>>>>
>>>>>>>>>> That code allows a bridge driver to wait until all dependent drivers are
>>>>>>>>>> probed. This really should be core functionality.
>>>>>>>>>>
>>>>>>>>>> Do other subsystems do something similar like
>>>>>>>>>> drivers/media/v4l2-core/v4l2-async.c? Does anyone know?  
>>>>>>>>> ASoC does, it has an explicit card driver to join things together and
>>>>>>>>> that just defers probe until everything it needs is present.  This was
>>>>>>>>> originally open coded in ASoC but once deferred probe was implemented we
>>>>>>>>> converted to that.  
>>>>>>>> Asynchronous bindings of components, as done in ASoC, DRM and V4L2, is a 
>>>>>>>> problem largely solved (or rather hacked around), but I'm curious to know how 
>>>>>>>> ASoC handles device unbinding (due to device removal or manual unbinding 
>>>>>>>> through sysfs). With asynchronous binding we can more or less easily wait for 
>>>>>>>> all components to be present before creating circular dependencies, but 
>>>>>>>> breaking them to implement unbinding is an unsolved problem at least in V4L2.
>>>>>>>>  
>>>>>>> We need to prevent subdevice drivers from being unbound. It's easy enough to
>>>>>>> do that (set suppress_bind_attrs to true), we just never did that. It's been
>>>>>>> on my TODO list for ages to make a patch adding that flag...
>>>>>>>
>>>>>>> You can only unbind bridge drivers. Unbinding subdevs is pointless in general
>>>>>>> and should be prohibited. Perhaps in the future with dynamically reconfigurable
>>>>>>> video pipelines (FPGA) you want that, but then you need to do a lot of
>>>>>>> additional work. For everything we have today we should just set
>>>>>>> suppress_bind_attrs to true.  
>>>>>> suppress_bind_attrs is the lazy solution and as you pointed out does not
>>>>>> work too well for all cases.
>>>>> Agreed. 
>>>>>
>>>>> What we really need is a kind of "usage count" behavior to suppress
>>>>> unbinds, e. g. a device driver can be unbound only if any other driver
>>>>> using resources on it gets unbind first.
>>>>>
>>>>> That will solve most of unbind issues at the media subsystem.
>>>> When I was investigating issues with unbind sysfs attribute I have found
>>>> claim by Greg KH that unbind should be rather unavoidable, like in case
>>>> of hw removal - kernel is not able to prevent users from removing usb
>>>> device, even if it is in use.
>>>>
>>>> Assuming the claim is still valid, the only solution I see are callbacks
>>>> notifying resource consumers about removal of the resources.
>>> There are multiple options.
>>>
>>> One option, which I think is currently the most used option in the kernel,
>>> is to unregister the resource when the provider is removed, but keep the
>>> resource object alive as long as there are users. Any further operation on
>>> such object will fail with an error. This works to the point where things
>>> don't crash, but it wont function in any meaningful way. There is no way to
>>> automatically recover if the resource reappears.
>> For me it is not a real solution, it is just dirty workaround to just avoid
>> invalid pointers. It 'works' only because unbinding is rarely used.
>> For example, how the device is supposed to work if its regulator or clock
>> disappeared?
>>
>>> Other options are as you pointed out notifier callbacks that allows the
>>> resource use to be aware that a resource has disappeared and it might adjust
>>> and continue to function with limited functionality.
>>>
>>> Another option is to teach the device core about critical resource
>>> dependencies so that a consumer is automatically unbound by the core if any
>>> of its resource dependencies are unregistered. The device can also
>>> automatically be re-bound once the critical resources re-appear.
>> That would be OK only for critical resources.
>>
>>> The most likely solution is probably a mixture of all of them.
>> If we implement callbacks, we do not need other two 'options'.
> Having to manually register callbacks for every resource in every driver
> will result in a massive amount of boilerplate code. I'd rather avoid that.

You can use helper to monitor multiple resources in one callback - it
should not increase the code significantly. As I wrote in other e-mail I
send already RFC in which the code in the driver was even shorter
than before. See [1].

[1]: http://www.spinics.net/lists/dri-devel/msg73500.html
> In addition to that doing resource tracking at the framework level will help
> with probe ordering.
>
>

Could you elaborate more?


Regards
Andrzej
