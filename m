Return-Path: <lars@metafoo.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AD4C98A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:33:26 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 017BE2AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:33:25 +0000 (UTC)
To: Hans Verkuil <hverkuil@xs4all.nl>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
	<20160729111303.GA10376@sirena.org.uk> <2525670.QGOuaEkzC4@avalon>
	<93f7ce34-c2e9-583f-2e6f-1f23ae76a761@xs4all.nl>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <a4640467-d916-d52c-a905-152a53251f94@metafoo.de>
Date: Mon, 1 Aug 2016 15:33:22 +0200
MIME-Version: 1.0
In-Reply-To: <93f7ce34-c2e9-583f-2e6f-1f23ae76a761@xs4all.nl>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Cc: "vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
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

On 08/01/2016 03:21 PM, Hans Verkuil wrote:
> 
> 
> On 08/01/2016 03:09 PM, Laurent Pinchart wrote:
>> On Friday 29 Jul 2016 12:13:03 Mark Brown wrote:
>>> On Fri, Jul 29, 2016 at 09:45:55AM +0200, Hans Verkuil wrote:
>>>> My main problem is not so much with deferred probe (esp. for cyclic
>>>> dependencies it is a simple method of solving this, and simple is good).
>>>> My main problem is that you can't tell the system that driver A needs to
>>>> be probed after drivers B, C and D are probed first.
>>>>
>>>> That would allow us to get rid of v4l2-async.c which is a horrible hack.
>>>>
>>>> That code allows a bridge driver to wait until all dependent drivers are
>>>> probed. This really should be core functionality.
>>>>
>>>> Do other subsystems do something similar like
>>>> drivers/media/v4l2-core/v4l2-async.c? Does anyone know?
>>>
>>> ASoC does, it has an explicit card driver to join things together and
>>> that just defers probe until everything it needs is present.  This was
>>> originally open coded in ASoC but once deferred probe was implemented we
>>> converted to that.
>>
>> Asynchronous bindings of components, as done in ASoC, DRM and V4L2, is a 
>> problem largely solved (or rather hacked around), but I'm curious to know how 
>> ASoC handles device unbinding (due to device removal or manual unbinding 
>> through sysfs). With asynchronous binding we can more or less easily wait for 
>> all components to be present before creating circular dependencies, but 
>> breaking them to implement unbinding is an unsolved problem at least in V4L2.
>>
> 
> We need to prevent subdevice drivers from being unbound. It's easy enough to
> do that (set suppress_bind_attrs to true), we just never did that. It's been
> on my TODO list for ages to make a patch adding that flag...
> 
> You can only unbind bridge drivers. Unbinding subdevs is pointless in general
> and should be prohibited. Perhaps in the future with dynamically reconfigurable
> video pipelines (FPGA) you want that, but then you need to do a lot of
> additional work. For everything we have today we should just set
> suppress_bind_attrs to true.

suppress_bind_attrs is the lazy solution and as you pointed out does not
work too well for all cases.

E.g. devicetree overlays is one case where devices, that are normally
static, can be removed at runtime. I'm not sure we can ensure that the
device for the complex/fabric is removed before the devices of the
individual components are removed. We certainly don't do at the moment. So
if you have a audio or video system on a cape and you want to remove that
cape at runtime there is a good chance that things will crash.
