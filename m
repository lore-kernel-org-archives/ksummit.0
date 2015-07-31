Return-Path: <linux+ksummit-discuss=lists.linuxfoundation.org@arm.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 37F90267
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 15:56:26 +0000 (UTC)
Received: from pandora.arm.linux.org.uk (pandora.arm.linux.org.uk
	[78.32.30.218])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6CB2209
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 15:56:24 +0000 (UTC)
Date: Fri, 31 Jul 2015 16:56:13 +0100
From: Russell King - ARM Linux <linux@arm.linux.org.uk>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20150731155613.GY7557@n2100.arm.linux.org.uk>
References: <2111196.TG1k3f53YQ@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2111196.TG1k3f53YQ@avalon>
Sender: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: Tejun Heo <tj@kernel.org>, ksummit-discuss@lists.linuxfoundation.org,
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

On Fri, Jul 31, 2015 at 06:14:14PM +0300, Laurent Pinchart wrote:
> It recently came to my attention that the way devm_kzalloc() is used by most 
> drivers is broken.

I think blaming devm_kzalloc() is actually wrong here.

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

Now think about the pre-devm_kzalloc() or pre-devm_* method - replace
the above devm_kzalloc() with a plain kmalloc() + memset() as we used
to have in drivers.

Then realise that such drivers would kfree() in their removal function
which gets called from the unbind operation.

It's really no different - the problem is just the same.

> While having a device node open prevents modules from being unloaded, it 
> doesn't prevent devices from being unbound from drivers. If the driver uses 
> devm_* helpers to allocate memory the memory will be freed when the device is 
> unbound from the driver, but that memory will still be used by any operation 
> touching an open device node.

Correct, and when the new module loading code came along, these issues
were known about at that time, because a lot of them really aren't new -
they were known from analysis of module removal.  It's just that there's
soo much going on in the kernel today that those who did know are swamped
and can't look at and analyse everything, and there's no real way to pass
that knowledge on.

> Tejun Heo commented that "this really is a general lifetime management 
> problem. [...] If a piece of memory isn't attached to the harware side
> but the userland interface side [...], that shouldn't be allocated via
> devm - it has "dev" in its name for a reason."

I think that's completely missing the problem.  This has very little to
do with devm_*, as I've illustrated above, and more to do with people
being aware of and properly handling the lifetimes of data structures.

It's been well proven that many kernel programmers just don't have a grasp
of data structure lifetimes - you only have to look at the struggle we've
had with stuff like users of the driver model not implementing a proper
->release callback (eg, lets provide an empty function to shut the kernel's
warning up!)

Even if we went through every driver today, and fixed up these bugs, we
would still be bogged down with lots of people just not having a clue
about this.  I think we need some other solution to it - one where driver
authors don't have to even think about this lifetime issue, though exactly
what that would be, I don't have any idea at the moment.  The alternative
is that we do handle it the way the driver model does, but rather than
repeating the mistake of having the ->release function called as soon as
the refcount falls to zero, it's delayed by a random amount of time to
catch people who think that an empty ->release function is acceptable -
and make that non-optional.

> People who might be interested:
> 
> - Tejun Heo <tj@kernel.org>
> - Shuah Khan <shuah.kh@samsung.com> (for the media controller devres WIP)
> - Russell King <linux@arm.linux.org.uk> (for the component framework)

I don't believe the component helpers are affected by this as they don't
talk to userland in any way.

-- 
FTTC broadband for 0.8mile line: currently at 10.5Mbps down 400kbps up
according to speedtest.net.
