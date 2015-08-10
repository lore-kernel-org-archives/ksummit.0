Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 69E5568
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Aug 2015 07:58:26 +0000 (UTC)
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 06854EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Aug 2015 07:58:25 +0000 (UTC)
Received: by oihn130 with SMTP id n130so84091310oih.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Aug 2015 00:58:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <2111196.TG1k3f53YQ@avalon>
References: <2111196.TG1k3f53YQ@avalon>
Date: Mon, 10 Aug 2015 09:58:25 +0200
Message-ID: <CACRpkdb+ztxS-QNUz8eLaFHB6Ku6ErJXSpeLB0uE=RaVHab5pQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	Russell King <linux@arm.linux.org.uk>, Johan Hovold <johan@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Fri, Jul 31, 2015 at 5:14 PM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:

> The issue occurs when drivers use devm_kzalloc() to allocate data structures
> that can be accessed through file operations on a device node. The following
> sequence of events will then lead to a crash.
>
> 1. Get a device bound to its driver
> 2. Open the corresponding device node in userspace and keep it open
> 3. Unbind the device from its driver through sysfs using for instance
>
> echo <device-name> > /sys/bus/platform/drivers/<driver-name>/unbind
>
> (or for hotpluggable devices just unplug the device)
>
> 4. Close the device node
> 5. Enjoy the fireworks

I've encountered it a few times in review, not in practice, a
relevant part of the question is whether your driver really cannot
live without the bind/unbind attributes in sysfs. I've realized that
I don't use them, and I suspect that for a largeish set of drivers
the developers don't use it.

I've started to think that the .suppress_bind_attrs = true in
struct device_driver is often your friend, simplifying the world.

I've actually thought about trying to set that for *any* GPIO
driver if they enable the sysfs access to GPIOs as these
dangling userspace users is a common problem here, but since
we also want to have hotplug/unplug of these hosts it's maybe
a real bad idea, as these sysfs files are good for testing that.

Yours,
Linus Walleij
