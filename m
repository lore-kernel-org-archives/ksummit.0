Return-Path: <linux+ksummit-discuss=lists.linuxfoundation.org@arm.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C67003EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Aug 2015 10:23:43 +0000 (UTC)
Received: from pandora.arm.linux.org.uk (pandora.arm.linux.org.uk
	[78.32.30.218])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B9B5AE8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Aug 2015 10:23:42 +0000 (UTC)
Date: Mon, 10 Aug 2015 11:23:30 +0100
From: Russell King - ARM Linux <linux@arm.linux.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20150810102330.GQ7557@n2100.arm.linux.org.uk>
References: <2111196.TG1k3f53YQ@avalon>
	<CACRpkdb+ztxS-QNUz8eLaFHB6Ku6ErJXSpeLB0uE=RaVHab5pQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdb+ztxS-QNUz8eLaFHB6Ku6ErJXSpeLB0uE=RaVHab5pQ@mail.gmail.com>
Sender: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Johan Hovold <johan@kernel.org>
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

On Mon, Aug 10, 2015 at 09:58:25AM +0200, Linus Walleij wrote:
> I've encountered it a few times in review, not in practice, a
> relevant part of the question is whether your driver really cannot
> live without the bind/unbind attributes in sysfs. I've realized that
> I don't use them, and I suspect that for a largeish set of drivers
> the developers don't use it.

>From the development point of view, it's useful to be able to unbind/rebind
a driver after something has gone wrong as part of the debugging strategy,
especially if the driver is built into the kernel.

> I've actually thought about trying to set that for *any* GPIO
> driver if they enable the sysfs access to GPIOs as these
> dangling userspace users is a common problem here, but since
> we also want to have hotplug/unplug of these hosts it's maybe
> a real bad idea, as these sysfs files are good for testing that.

sysfs itself should be fine - the problem is what you do with sysfs.
I think sysfs's protection comes from kernfs's deactivation, tested by
kernfs_get_active() before passing any operation up.

So, when kobject_del() has been called, which calls sysfs_remove_dir()
and kernfs_remove(), this deactivates the file, and waits (via
kernfs_drain()) for the active users to go away.  Once that returns,
no further calls should occur via sysfs.

When you unexport a GPIO, you do this:

                put_device(dev);
                device_unregister(dev);

device_unregister() calls device_del() which in turn calls kobject_del().
So, by the time device_unregister() returns, you should no longer receive
any calls to your attributes - and this figures, because the sysfs/kernfs
code does not take a reference on the struct device anymore, so once
you drop all other references to the struct device, it's freed, and the
struct device which _would_ have been passed into your dev_attr code
would no longer be valid.

So, I think provided you properly delete kobjects/devices or unregister
the sysfs attributes prior to private data going away, there should not
be any use-after-del cases with sysfs attributes.

Having read the fs/kernfs, fs/sysfs, lib/kobject code this morning, I'm
now left wondering why people are saying that there's a problem here:
it seems there isn't if your driver removes any attributes in the
->remove path which it registered in the ->probe path - either by
deleting the attributes themselves, or by deleting the object they are
attached to.

-- 
FTTC broadband for 0.8mile line: currently at 10.5Mbps down 400kbps up
according to speedtest.net.
