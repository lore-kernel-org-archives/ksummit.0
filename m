Return-Path: <a.hajda@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6828E956
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 18:34:10 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
	[210.118.77.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AB3121C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 18:34:09 +0000 (UTC)
Received: from eucpsbgm1.samsung.com (unknown [203.254.199.244])
	by mailout1.w1.samsung.com
	(Oracle Communications Messaging Server 7.0.5.31.0 64bit (built May 5
	2014)) with ESMTP id <0OB8000EYU8UJI40@mailout1.w1.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Mon,
	01 Aug 2016 19:34:06 +0100 (BST)
To: Mark Brown <broonie@kernel.org>
References: <20160729111303.GA10376@sirena.org.uk> <2525670.QGOuaEkzC4@avalon>
	<93f7ce34-c2e9-583f-2e6f-1f23ae76a761@xs4all.nl>
	<a4640467-d916-d52c-a905-152a53251f94@metafoo.de>
	<20160801105531.2687069a@recife.lan> <579F6049.9030408@samsung.com>
	<63f6e3b4-3a48-182f-e8d5-87e720b60d5d@metafoo.de>
	<579F6C00.502@samsung.com>
	<f612af4e-ddd1-44e3-9d0a-c7540636351c@metafoo.de>
	<579F766F.1000605@samsung.com> <20160801170613.GV10376@sirena.org.uk>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-id: <579F9613.4020805@samsung.com>
Date: Mon, 01 Aug 2016 20:33:55 +0200
MIME-version: 1.0
In-reply-to: <20160801170613.GV10376@sirena.org.uk>
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
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

On 08/01/2016 07:06 PM, Mark Brown wrote:
> On Mon, Aug 01, 2016 at 06:18:55PM +0200, Andrzej Hajda wrote:
>> On 08/01/2016 05:43 PM, Lars-Peter Clausen wrote:
>>> On 08/01/2016 05:34 PM, Andrzej Hajda wrote:
>>>> On 08/01/2016 04:54 PM, Lars-Peter Clausen wrote:
>>>>> One option, which I think is currently the most used option in the kernel,
>>>>> is to unregister the resource when the provider is removed, but keep the
>>>>> resource object alive as long as there are users. Any further operation on
>>>>> such object will fail with an error. This works to the point where things
>>>>> don't crash, but it wont function in any meaningful way. There is no way to
>>>>> automatically recover if the resource reappears.
>>>> For me it is not a real solution, it is just dirty workaround to just avoid
>>>> invalid pointers. It 'works' only because unbinding is rarely used.
>>>> For example, how the device is supposed to work if its regulator or clock
>>>> disappeared?
> The device isn't supposed to work, just not crash - this is mainly used
> for things that are exposed to userspace where we need to keep returning
> errors to userspace until they free their reference.  I'm not sure we
> can get out of that one.

Could you give some examples? I suppose this is slightly different issue
than unbinding provider of working resource.

>
>>>>> Other options are as you pointed out notifier callbacks that allows the
>>>>> resource use to be aware that a resource has disappeared and it might adjust
>>>>> and continue to function with limited functionality.
>>>>> Another option is to teach the device core about critical resource
>>>>> dependencies so that a consumer is automatically unbound by the core if any
>>>>> of its resource dependencies are unregistered. The device can also
>>>>> automatically be re-bound once the critical resources re-appear.
>>>>> The most likely solution is probably a mixture of all of them.
>>>> If we implement callbacks, we do not need other two 'options'.
>>> Having to manually register callbacks for every resource in every driver
>>> will result in a massive amount of boilerplate code. I'd rather avoid that.
>> You can use helper to monitor multiple resources in one callback - it
>> should not increase the code significantly. As I wrote in other e-mail I
>> send already RFC in which the code in the driver was even shorter
>> than before. See [1].
> I think a lot of the difference between the two cases above is just
> about where the default callback comes from and how it's presented to
> users - having the driver core able to handle critical resources doesn't
> seem hugely different to providing a list of resources and offsets into
> driver_data in the struct driver and having a default callback that
> calls probe() and remove() with an already allocated and initialized
> driver_data.  That'd definitely cut down a lot on bolilerplate code,

If you want to driver core handle critical resources you should teach
it how to get description of these resources (DT/ACPI properties, platform
data in case of older systems, ...anything else?) and to distinguish
between critical and optional resources (this info is not available in DT).
If you leave this task to the device driver it has already this knowledge,
so you just need to create some helpers.

> but
> there's problems with the driver trying to clean up when removing (eg,
> disabling things) when some of the resources it used are in the process
> of being removed themselves.
Serialization of this process should solve it (as I proposed in RFC),
ie. all tasks below:
- registering callback monitoring given resource,
- unregistering the callback,
- registering the resource,
- unregistering the resource,
should be serialized.
There is still a question about granulation of serialization:
it could be done at framework level but it could be done
also per resource.

Regards
Andrzej
