Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 03A65273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 15:19:07 +0000 (UTC)
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6268F13B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 15:19:05 +0000 (UTC)
Received: by oip136 with SMTP id 136so104944113oip.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 08:19:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <s5hbnee2h2s.wl-tiwai@suse.de>
References: <2111196.TG1k3f53YQ@avalon>
	<CACRpkdb+ztxS-QNUz8eLaFHB6Ku6ErJXSpeLB0uE=RaVHab5pQ@mail.gmail.com>
	<20150810102330.GQ7557@n2100.arm.linux.org.uk>
	<s5hbnee2h2s.wl-tiwai@suse.de>
Date: Tue, 11 Aug 2015 17:19:05 +0200
Message-ID: <CAKMK7uE3N89Y5G0vUrxtsvTWYwYPkFHnYQcHHnR+qmVGfV97CA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Takashi Iwai <tiwai@suse.de>
Content-Type: text/plain; charset=UTF-8
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	Russell King - ARM Linux <linux@arm.linux.org.uk>,
	Johan Hovold <johan@kernel.org>,
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

On Tue, Aug 11, 2015 at 1:35 PM, Takashi Iwai <tiwai@suse.de> wrote:
> On Mon, 10 Aug 2015 12:23:30 +0200,
> Russell King - ARM Linux wrote:
>>
>> On Mon, Aug 10, 2015 at 09:58:25AM +0200, Linus Walleij wrote:
>> > I've encountered it a few times in review, not in practice, a
>> > relevant part of the question is whether your driver really cannot
>> > live without the bind/unbind attributes in sysfs. I've realized that
>> > I don't use them, and I suspect that for a largeish set of drivers
>> > the developers don't use it.
>>
>> >From the development point of view, it's useful to be able to unbind/rebind
>> a driver after something has gone wrong as part of the debugging strategy,
>> especially if the driver is built into the kernel.
>>
>> > I've actually thought about trying to set that for *any* GPIO
>> > driver if they enable the sysfs access to GPIOs as these
>> > dangling userspace users is a common problem here, but since
>> > we also want to have hotplug/unplug of these hosts it's maybe
>> > a real bad idea, as these sysfs files are good for testing that.
>>
>> sysfs itself should be fine - the problem is what you do with sysfs.
>> I think sysfs's protection comes from kernfs's deactivation, tested by
>> kernfs_get_active() before passing any operation up.
>>
>> So, when kobject_del() has been called, which calls sysfs_remove_dir()
>> and kernfs_remove(), this deactivates the file, and waits (via
>> kernfs_drain()) for the active users to go away.  Once that returns,
>> no further calls should occur via sysfs.
>>
>> When you unexport a GPIO, you do this:
>>
>>                 put_device(dev);
>>                 device_unregister(dev);
>>
>> device_unregister() calls device_del() which in turn calls kobject_del().
>> So, by the time device_unregister() returns, you should no longer receive
>> any calls to your attributes - and this figures, because the sysfs/kernfs
>> code does not take a reference on the struct device anymore, so once
>> you drop all other references to the struct device, it's freed, and the
>> struct device which _would_ have been passed into your dev_attr code
>> would no longer be valid.
>>
>> So, I think provided you properly delete kobjects/devices or unregister
>> the sysfs attributes prior to private data going away, there should not
>> be any use-after-del cases with sysfs attributes.
>>
>> Having read the fs/kernfs, fs/sysfs, lib/kobject code this morning, I'm
>> now left wondering why people are saying that there's a problem here:
>> it seems there isn't if your driver removes any attributes in the
>> ->remove path which it registered in the ->probe path - either by
>> deleting the attributes themselves, or by deleting the object they are
>> attached to.
>
> I thought that the original problem is about the normal device file
> accesses.  So, if we have a drain function for normal device files, it
> should work well like sysfs/kernfs, too.
>
> Some subsystems have their own ways to do a similar thing, but a
> generic framework wound be nice to have, IMO.

I do remember drm drivers blowing up on sysfs reads of connector
status files. Might just be a problem with drm unload sequence being
terminally broken wrt correct ordering, I never looked too much into
it really since the real one is /dev char node access. There's also
other problems in drm driver load/unload which makes fixing this all
more complicated than necessary.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
