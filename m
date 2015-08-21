Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 041B77AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 17:30:19 +0000 (UTC)
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A21C1AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 17:30:18 +0000 (UTC)
Received: by oiev193 with SMTP id v193so45651267oie.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 10:30:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150821165852.GH12027@sirena.org.uk>
References: <2111196.TG1k3f53YQ@avalon>
	<CAKdAkRQLGRqMT-CJz6FemPqyo78wFrM6Kc=pR_BKxqLZqEzjQA@mail.gmail.com>
	<alpine.DEB.2.10.1508210805500.2566@hadrien>
	<20150821161409.GA26302@localhost>
	<20150821165852.GH12027@sirena.org.uk>
Date: Fri, 21 Aug 2015 10:30:17 -0700
Message-ID: <CAKdAkRRrqCNojwBHQ809APetuC-u1XqwViRVp5fBB2tO+naQ_g@mail.gmail.com>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: Tejun Heo <tj@kernel.org>, Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuah.kh@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
	or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 21, 2015 at 9:58 AM, Mark Brown <broonie@kernel.org> wrote:
> On Fri, Aug 21, 2015 at 09:14:09AM -0700, Dmitry Torokhov wrote:
>> On Fri, Aug 21, 2015 at 08:07:09AM -0700, Julia Lawall wrote:
>
>> > What is there too the "etc"?  Would it be better to just remove the devm
>> > functions related to interrupts?  They seem to cause a lot of subtle
>> > problems.
>
>> And regulators, clocks, gpios... Even if we won't have interrupt coming
>> in someone may submit request to the device (userspace for example) and
>> we still may try accessing powered off or half-powered-off hardware.
>
> For most of those there's no issue with devm - we're just releasing a
> reference that allows us to control the device, not doing anything that
> affects the state of the device.  We don't have managed functions for
> the state changing operations.

That is true (at least for now), but there is a demand for adding
them. In the meantime they are quite often invoked via a custom devm
action.

They are also often wrapped into other objects. For example input
device might turn off regulators/clocks in it's close() method, which
is called as part of input_unregister_device(). If input device is
managed then that state change happens "some time later".

Thanks.

-- 
Dmitry
