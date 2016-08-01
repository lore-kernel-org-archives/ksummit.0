Return-Path: <lars@metafoo.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15D378A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 20:06:01 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6056C17B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 20:06:00 +0000 (UTC)
To: Andrzej Hajda <a.hajda@samsung.com>, Mark Brown <broonie@kernel.org>
References: <93f7ce34-c2e9-583f-2e6f-1f23ae76a761@xs4all.nl>
	<a4640467-d916-d52c-a905-152a53251f94@metafoo.de>
	<20160801105531.2687069a@recife.lan> <579F6049.9030408@samsung.com>
	<63f6e3b4-3a48-182f-e8d5-87e720b60d5d@metafoo.de>
	<579F6C00.502@samsung.com>
	<f612af4e-ddd1-44e3-9d0a-c7540636351c@metafoo.de>
	<579F766F.1000605@samsung.com> <20160801170613.GV10376@sirena.org.uk>
	<579F9613.4020805@samsung.com> <20160801184832.GA10376@sirena.org.uk>
	<579FA631.9050702@samsung.com>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <c677533f-5dd5-b31e-d14a-2cc5eb5be9ba@metafoo.de>
Date: Mon, 1 Aug 2016 22:05:49 +0200
MIME-Version: 1.0
In-Reply-To: <579FA631.9050702@samsung.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
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

On 08/01/2016 09:42 PM, Andrzej Hajda wrote:
> On 08/01/2016 08:48 PM, Mark Brown wrote:
>> On Mon, Aug 01, 2016 at 08:33:55PM +0200, Andrzej Hajda wrote:
>>> On 08/01/2016 07:06 PM, Mark Brown wrote:
>>>> The device isn't supposed to work, just not crash - this is mainly used
>>>> for things that are exposed to userspace where we need to keep returning
>>>> errors to userspace until they free their reference.  I'm not sure we
>>>> can get out of that one.
>>> Could you give some examples? I suppose this is slightly different issue
>>> than unbinding provider of working resource.
>> Anything where you have a resource open from userspace pretty much - a
>> file stored on media that got removed for example.  The struct
>> representing the open file handle needs to be valid as long as the file
>> is open.
> 
> It seems to be not related directly to the subject - file handle is
> something
> created/controlled by userspace, as well as it's life-time.
> I see no real device dependency here. I guess Lars though rather about
> ghost resources like in clock framework, when after removing provider,
> clock ops are replaced by phony ops.

Both really. In the end they both boil down to the same problem. You have
provider and a consumer and the provider disappears while the consumer still
uses it. In this case the kernel is the provider and userspace the consumer.

We should try to address both issue within the same framework, especially
since there is a dependency chain. Lets say a audio device uses a clock and
the clock becomes unavailable this means the the audio device is no longer
usable for a userspace application.

When I meant there are multiple options I did not mean that we must choose
one of these options and always use it and never use the others. A solution
will most likely involve multiple of them at different levels in the stack.

There have been attempts or ideas in the past to push the handling of
keeping the file descriptor alive while having operations return errors
directly into the fs layer so that individual frameworks don't have to deal
with it. See https://lwn.net/Articles/546537/
