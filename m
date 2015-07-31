Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1DA3C98
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 15:13:37 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 46C2B143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 15:13:36 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 31 Jul 2015 18:14:14 +0300
Message-ID: <2111196.TG1k3f53YQ@avalon>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Tejun Heo <tj@kernel.org>, Russell King <linux@arm.linux.org.uk>,
	Shuah Khan <shuah.kh@samsung.com>
Subject: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users, or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

It recently came to my attention that the way devm_kzalloc() is used by most 
drivers is broken. I've raised the topic on LKML (see 
http://lkml.org/lkml/2015/7/14/741) in the hope that my findings were simply 
wrong, but it turned out I was unfortunately right. As the topic spans lots of 
subsystems I believe it would be a good technical topic for the Kernel Summit.

The issue occurs when drivers use devm_kzalloc() to allocate data structures 
that can be accessed through file operations on a device node. The following 
sequence of events will then lead to a crash.

1. Get a device bound to its driver
2. Open the corresponding device node in userspace and keep it open
3. Unbind the device from its driver through sysfs using for instance

echo <device-name> > /sys/bus/platform/drivers/<driver-name>/unbind

(or for hotpluggable devices just unplug the device)

4. Close the device node
5. Enjoy the fireworks

While having a device node open prevents modules from being unloaded, it 
doesn't prevent devices from being unbound from drivers. If the driver uses 
devm_* helpers to allocate memory the memory will be freed when the device is 
unbound from the driver, but that memory will still be used by any operation 
touching an open device node.

Tejun Heo commented that "this really is a general lifetime management 
problem. [...] If a piece of memory isn't attached to the harware side but the 
userland interface side [...], that shouldn't be allocated via devm - it has 
"dev" in its name for a reason."

While I agree that this is how devres operates today, I'm not sure we should 
throw the baby out with the bath water. Using devm_kzalloc() as currently done  
has value, and reverting drivers to the pre-devm memory allocation code would 
make error handling and cleanup code paths more complex again.

Should we introduce a managed allocator for that purpose that would have a 
lifespan explicitly handled by drivers (or, even better, handled automatically 
in a way that would suit our use cases) ? Tejun commented that "a better 
approach would be implementing generic revoke feature and sever open files on 
driver detach so that everything can be shutdown then".

People who might be interested:

- Tejun Heo <tj@kernel.org>
- Shuah Khan <shuah.kh@samsung.com> (for the media controller devres WIP)
- Russell King <linux@arm.linux.org.uk> (for the component framework)
- Anyone who believes that managed memory allocation for driver private 
structures is useful

-- 
Regards,

Laurent Pinchart
