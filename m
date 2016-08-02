Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B5630724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 01:03:32 +0000 (UTC)
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3935824F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 01:03:32 +0000 (UTC)
Received: by mail-ua0-f179.google.com with SMTP id 35so118452823uap.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 18:03:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160802005650.GF3296@wotan.suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de>
	<1555444.RIYpEbA2F7@vostro.rjw.lan>
	<20160802005650.GF3296@wotan.suse.de>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Mon, 1 Aug 2016 18:03:29 -0700
Message-ID: <CAKdAkRSgnL_efCUnX+v8Up_OcJq4RcKH=-AHORDwDFWHDXxPAQ@mail.gmail.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: Oded Gabbay <oded.gabbay@gmail.com>,
	=?UTF-8?B?SsO2cmcgUsO2ZGVs?= <jroedel@suse.de>,
	ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Cristina Moraru <cristina.moraru09@gmail.com>,
	Roberto Di Cosmo <roberto@dicosmo.org>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Stefano Zacchiroli <zack@upsilon.cc>,
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

On Mon, Aug 1, 2016 at 5:56 PM, Luis R. Rodriguez <mcgrof@kernel.org> wrote:
> On Tue, Aug 02, 2016 at 02:01:56AM +0200, Rafael J. Wysocki wrote:
>> On Monday, August 01, 2016 09:03:09 PM Luis R. Rodriguez wrote:
>> > On Fri, Jul 29, 2016 at 12:13:03PM +0100, Mark Brown wrote:
>> > > On Fri, Jul 29, 2016 at 09:45:55AM +0200, Hans Verkuil wrote:
>> > >
>> > > > My main problem is not so much with deferred probe (esp. for cyclic dependencies
>> > > > it is a simple method of solving this, and simple is good). My main problem is
>> > > > that you can't tell the system that driver A needs to be probed after drivers B,
>> > > > C and D are probed first.
>> > >
>> > > > That would allow us to get rid of v4l2-async.c which is a horrible hack.
>> >
>> > I'd like to understand the requirement for this a bit better, so someone explaining
>> > this would be good if this moves forward as a tech session.
>>
>> One case I'm familiar with is when a device has two (or more) device IDs, where
>> one is more specific than the other.  The idea being that if the OS has a driver
>> for that particular device, it will use the more specific device ID (say A) to
>> look for it, but otherwise it will use the other "generic" ID (say B) to match
>> against a "generic" driver.
>>
>> Of course, that only works if the driver for A is probed before the driver for B.
>
> That's a good case to keep in mind which is indeed complex.

HID would definitely benefit from specific/generic support. Rigth now
there are somewhat long tables of devices generic hid driver ignores
so that specific drivers have a chance to bind.

Thanks.

-- 
Dmitry
