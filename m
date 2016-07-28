Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 75325413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:32:27 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [178.18.118.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E276EFB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:32:26 +0000 (UTC)
To: Mauro Carvalho Chehab <mchehab@infradead.org>,
	Jonathan Cameron <jic23@kernel.org>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<20160728085846.63971233@recife.lan>
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <a610c627-c747-c29f-8f00-e44a18fea996@jic23.retrosnub.co.uk>
Date: Thu, 28 Jul 2016 23:32:24 +0100
MIME-Version: 1.0
In-Reply-To: <20160728085846.63971233@recife.lan>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Sensors and similar - subsystem
 interactions, divisions, bindings etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 28/07/16 12:58, Mauro Carvalho Chehab wrote:
> Em Wed, 20 Jul 2016 22:18:11 +0100
> Jonathan Cameron <jic23@kernel.org> escreveu:
> 
>> Hi All,
>>
>> This topic would be around the way the various subsystems interact, in the
>> rough area of 'sensors' (I haven't yet had much of an issue with subsystem
>> crossing with output devices but maybe that's just over the next hill!)
> 
> Yeah, there is a gray area here as devices become more complex.
> So, I'm interested on such topic.
> 
>> Scope may well be wider but includes:
>> * input (some of it)
>> * hwmon
>> * iio
>> * comedi(?)
>> * thermal
>> * power/battery
>> * gpio - the blur between gpios and beaglescope / PLC type I/O.
>> * v4l - when does a device jump from being a multi pixel thermopile
>> to a thermal camera? Smart fingerprint scanners etc.  Gesture recognition
>> sensors (effectively 9ish pixel cameras)
> 
> For devices that provide images somehow, I'd say that the best would be
> to implement them as via the V4L2 API. We'll likely need to discuss it
> case by case, specially for early cross-subsystem drivers, though, as
> it is not trivial to identify the subsystem boundaries, and sometimes
> multiple APIs from different subsystems is needed. Also, it is not
> clear where such drivers would fit at the Kernel tree.
Absolutely.  We can come up with some rule's of thumb to at least cut
down on the number of drivers getting written / pitched for totally
the wrong subsystem, but there are always going to be corner cases.
> 
> One interesting case is an input device driver with multi-finger
> support (drivers/input/touchscreen/sur40.c). I suspect we'll have
> more cases like that over time.
Becomes a case of whether we almost 'limit' devices by putting them
in a subsystem dictated by their usecase, or find a way to bridge
between subsystems so the common use case and interfaces are supported
but the more 'interesting' stuff is available underneath - possibly
for other uses.

> 
>> * Lots of random things we haven't seen yet.
I've already seen a few in this thread!

Jonathan
> 
> Thanks,
> Mauro
> 
