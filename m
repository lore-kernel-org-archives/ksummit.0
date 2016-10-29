Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 443644A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Oct 2016 01:12:53 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 25E031B5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Oct 2016 01:12:51 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 29 Oct 2016 04:12:49 +0300
Message-ID: <4769392.kbj68IAfRv@avalon>
In-Reply-To: <CAKdAkRStxcd1TJ0tdDRRV_M7Y_-_+sdXCJjssuTWEifQM5pteg@mail.gmail.com>
References: <CAB=NE6XscoaYq7_0wbEtgdGZt-duhMb6a-o8O+09FrJRy9EkLQ@mail.gmail.com>
	<20161028214431.GB12838@kroah.com>
	<CAKdAkRStxcd1TJ0tdDRRV_M7Y_-_+sdXCJjssuTWEifQM5pteg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Mark Brown <broonie@sirena.org.uk>
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

On Friday 28 Oct 2016 14:51:36 Dmitry Torokhov wrote:
> On Fri, Oct 28, 2016 at 2:44 PM, Greg KH <greg@kroah.com> wrote:
> > On Fri, Oct 28, 2016 at 02:38:13PM -0700, Dmitry Torokhov wrote:
> >> On Fri, Oct 28, 2016 at 2:29 PM, Jiri Kosina <jikos@kernel.org> wrote:
> >> > On Fri, 28 Oct 2016, Greg KH wrote:
> >> >> On Fri, Oct 28, 2016 at 02:16:59PM -0700, Luis R. Rodriguez wrote:
> >> >> > Having some generic device driver load, prior to a specific driver,
> >> >> > and issues / maintenance issues that come with the hacks currently
> >> >> > in
> >> >> > place to support this / re-invent the wheel to support this per
> >> >> > subsystem.
> >> >> 
> >> >> We have hacks for this today?  What do you mean by this, quirks?
> >> > 
> >> > I have to maintain a device-id list that explicitly enumerates "these
> >> > devices can be handled by generic driver, but would better be handled
> >> > by
> >> > specific driver", in the generic driver itself. Which is horrible.
> >> > 
> >> > It'd be nice for the specific driver to be able to claim this property
> >> > somehow.
> >> 
> >> Now that most of the environment is ready to handle hotplug, for HID
> >> it should be doable: have hid-generic probe devices last and have
> >> driver core recognize generic/vs tailored driver (flag?) and if device
> >> matches tailored driver forcibly unbind from generic and allow
> >> tailored to bind to the device. There will be window of time when
> >> device is bound to a "wrong" driver, but because of hotplug who cares.
> > 
> > "forcibly unbind" is the trick here, along with the fact of drivers not
> > being asked to match with devices already bound to a driver.  It might
> > be possible, I'd love to see patches to try it, given that the topic
> > comes up every other year or so...
> 
> We already allow forcibly unbinding via sysfs, so it should be
> possible to do that when loading new driver.

I expect many drivers to crash though, especially if userspace starts using 
the device and races with the unbind. Nothing new under the sun, drivers will 
need to be fixed, and the new CONFIG_DEBUG_TEST_DRIVER_REMOVE should help a 
bit. I however still believe the the cargo cult usage of devm_* functions in 
drivers has only gotten worse since I raised the issue last year.

-- 
Regards,

Laurent Pinchart
