Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A26709BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Oct 2016 21:51:38 +0000 (UTC)
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 170F71B8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Oct 2016 21:51:38 +0000 (UTC)
Received: by mail-vk0-f66.google.com with SMTP id 130so3174999vkg.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Oct 2016 14:51:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161028214431.GB12838@kroah.com>
References: <CAB=NE6XscoaYq7_0wbEtgdGZt-duhMb6a-o8O+09FrJRy9EkLQ@mail.gmail.com>
	<20161028212310.GA25668@kroah.com>
	<alpine.LNX.2.00.1610282325150.31629@cbobk.fhfr.pm>
	<CAKdAkRSoHcACinbU8-EYq+7+nx=DU57OYnALNsOkXW2-UG26Kg@mail.gmail.com>
	<20161028214431.GB12838@kroah.com>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Fri, 28 Oct 2016 14:51:36 -0700
Message-ID: <CAKdAkRStxcd1TJ0tdDRRV_M7Y_-_+sdXCJjssuTWEifQM5pteg@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Schedule slot suggestion- Generic drivers -
 core topic
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 28, 2016 at 2:44 PM, Greg KH <greg@kroah.com> wrote:
> On Fri, Oct 28, 2016 at 02:38:13PM -0700, Dmitry Torokhov wrote:
>> On Fri, Oct 28, 2016 at 2:29 PM, Jiri Kosina <jikos@kernel.org> wrote:
>> > On Fri, 28 Oct 2016, Greg KH wrote:
>> >
>> >> On Fri, Oct 28, 2016 at 02:16:59PM -0700, Luis R. Rodriguez wrote:
>> >> > Having some generic device driver load, prior to a specific driver,
>> >> > and issues / maintenance issues that come with the hacks currently in
>> >> > place to support this / re-invent the wheel to support this per
>> >> > subsystem.
>> >>
>> >> We have hacks for this today?  What do you mean by this, quirks?
>> >
>> > I have to maintain a device-id list that explicitly enumerates "these
>> > devices can be handled by generic driver, but would better be handled by
>> > specific driver", in the generic driver itself. Which is horrible.
>> >
>> > It'd be nice for the specific driver to be able to claim this property
>> > somehow.
>>
>> Now that most of the environment is ready to handle hotplug, for HID
>> it should be doable: have hid-generic probe devices last and have
>> driver core recognize generic/vs tailored driver (flag?) and if device
>> matches tailored driver forcibly unbind from generic and allow
>> tailored to bind to the device. There will be window of time when
>> device is bound to a "wrong" driver, but because of hotplug who cares.
>
> "forcibly unbind" is the trick here, along with the fact of drivers not
> being asked to match with devices already bound to a driver.  It might
> be possible, I'd love to see patches to try it, given that the topic
> comes up every other year or so...

We already allow forcibly unbinding via sysfs, so it should be
possible to do that when loading new driver.

Thanks.

-- 
Dmitry
