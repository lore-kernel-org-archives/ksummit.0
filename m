Return-Path: <a.hajda@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AE88C899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 19:42:56 +0000 (UTC)
Received: from mailout3.w1.samsung.com (mailout3.w1.samsung.com
	[210.118.77.13])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8A235178
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 19:42:55 +0000 (UTC)
Received: from eucpsbgm2.samsung.com (unknown [203.254.199.245])
	by mailout3.w1.samsung.com
	(Oracle Communications Messaging Server 7.0.5.31.0 64bit (built May 5
	2014)) with ESMTP id <0OB8007XSXFHVZ40@mailout3.w1.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Mon,
	01 Aug 2016 20:42:53 +0100 (BST)
To: Mark Brown <broonie@kernel.org>
References: <93f7ce34-c2e9-583f-2e6f-1f23ae76a761@xs4all.nl>
	<a4640467-d916-d52c-a905-152a53251f94@metafoo.de>
	<20160801105531.2687069a@recife.lan> <579F6049.9030408@samsung.com>
	<63f6e3b4-3a48-182f-e8d5-87e720b60d5d@metafoo.de>
	<579F6C00.502@samsung.com>
	<f612af4e-ddd1-44e3-9d0a-c7540636351c@metafoo.de>
	<579F766F.1000605@samsung.com> <20160801170613.GV10376@sirena.org.uk>
	<579F9613.4020805@samsung.com> <20160801184832.GA10376@sirena.org.uk>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-id: <579FA631.9050702@samsung.com>
Date: Mon, 01 Aug 2016 21:42:41 +0200
MIME-version: 1.0
In-reply-to: <20160801184832.GA10376@sirena.org.uk>
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

On 08/01/2016 08:48 PM, Mark Brown wrote:
> On Mon, Aug 01, 2016 at 08:33:55PM +0200, Andrzej Hajda wrote:
>> On 08/01/2016 07:06 PM, Mark Brown wrote:
>>> The device isn't supposed to work, just not crash - this is mainly used
>>> for things that are exposed to userspace where we need to keep returning
>>> errors to userspace until they free their reference.  I'm not sure we
>>> can get out of that one.
>> Could you give some examples? I suppose this is slightly different issue
>> than unbinding provider of working resource.
> Anything where you have a resource open from userspace pretty much - a
> file stored on media that got removed for example.  The struct
> representing the open file handle needs to be valid as long as the file
> is open.

It seems to be not related directly to the subject - file handle is
something
created/controlled by userspace, as well as it's life-time.
I see no real device dependency here. I guess Lars though rather about
ghost resources like in clock framework, when after removing provider,
clock ops are replaced by phony ops.

>
>>> I think a lot of the difference between the two cases above is just
>>> about where the default callback comes from and how it's presented to
>>> users - having the driver core able to handle critical resources doesn't
>>> seem hugely different to providing a list of resources and offsets into
>>> driver_data in the struct driver and having a default callback that
>>> calls probe() and remove() with an already allocated and initialized
>>> driver_data.  That'd definitely cut down a lot on bolilerplate code,
>> If you want to driver core handle critical resources you should teach
>> it how to get description of these resources (DT/ACPI properties, platform
>> data in case of older systems, ...anything else?) and to distinguish
>> between critical and optional resources (this info is not available in DT).
>> If you leave this task to the device driver it has already this knowledge,
>> so you just need to create some helpers.
> You don't need to do one or the other, you can do both (though as Lars
> pointed out if there's things the core doesn't know about that means it
> can do less, like with suspend/resume).
>
>>> but
>>> there's problems with the driver trying to clean up when removing (eg,
>>> disabling things) when some of the resources it used are in the process
>>> of being removed themselves.
>> Serialization of this process should solve it (as I proposed in RFC),
>> ie. all tasks below:
>> - registering callback monitoring given resource,
>> - unregistering the callback,
>> - registering the resource,
>> - unregistering the resource,
>> should be serialized.
>> There is still a question about granulation of serialization:
>> it could be done at framework level but it could be done
>> also per resource.
> Serialization doesn't help here.  If a resource is unregistering and a
> callback is called it's likely that the callback will want to do
> something like disable the thing that's trying to free itself which is
> potentially messy.

No, callback is called always when resource is available:
- just after registering resource,
- just before unregistering resource,
so consumer can do anything with the resource in the callback.

And due to serialization resource removal cannot start until callback
finishes.

Regards
Andrzej
