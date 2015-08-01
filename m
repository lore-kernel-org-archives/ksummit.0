Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 916D442A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 11:00:22 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A128B163
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 11:00:21 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Date: Sat, 01 Aug 2015 14:01:02 +0300
Message-ID: <8475257.M7ZLAf3KQe@avalon>
In-Reply-To: <alpine.DEB.2.02.1508011255010.2071@localhost6.localdomain6>
References: <2111196.TG1k3f53YQ@avalon> <1832413.9MBGoll9RW@avalon>
	<alpine.DEB.2.02.1508011255010.2071@localhost6.localdomain6>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
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

Hi Julia,

On Saturday 01 August 2015 12:55:42 Julia Lawall wrote:
> On Sat, 1 Aug 2015, Laurent Pinchart wrote:
> > On Friday 31 July 2015 18:04:16 Mark Brown wrote:
> > > On Fri, Jul 31, 2015 at 06:14:14PM +0300, Laurent Pinchart wrote:
> > > > It recently came to my attention that the way devm_kzalloc() is used
> > > > by most drivers is broken. I've raised the topic on LKML (see
> > > > http://lkml.org/lkml/2015/7/14/741) in the hope that my findings were
> > > > simply
> > > 
> > > lkml.org is down (again) - can you please provide a subject line?
> > 
> > Sure. "Is devm_* broken ?", and
> > http://permalink.gmane.org/gmane.linux.kernel/1996077 if that can help.
> > 
> > > > The issue occurs when drivers use devm_kzalloc() to allocate data
> > > > structures that can be accessed through file operations on a device
> > > > node. The following sequence of events will then lead to a crash.
> > > 
> > > Like Julia says I'm not sure this is really related to devm_ - I would
> > > really expect that the majority of users were already broken prior to
> > > the conversion to devm_ since the natural thing is to free things in the
> > > remove() function which has exactly the same issues, the main problem
> > > here is that the file open after device is removed case is rare for most
> > > devices and requires somewhat obscure handling.
> > 
> > Why do you think it would be rare ? Pretty much any driver that creates a
> > character device will suffer from the issue if userspace decides to keep
> > the device node open. For hot-pluggable devices such as USB I'd even
> > argue that this is a quite common case, the user can easily unplug a
> > webcam while the character device node is in use.
> > 
> > > > While I agree that this is how devres operates today, I'm not sure we
> > > > should throw the baby out with the bath water. Using devm_kzalloc() as
> > > > currently done has value, and reverting drivers to the pre-devm memory
> > > > allocation code would make error handling and cleanup code paths more
> > > > complex again.
> > > > 
> > > > Should we introduce a managed allocator for that purpose that would
> > > > have a lifespan explicitly handled by drivers (or, even better,
> > > > handled automatically in a way that would suit our use cases) ? Tejun
> > > > commented that "a better approach would be implementing generic revoke
> > > > feature and sever open files on driver detach so that everything can
> > > > be shutdown then".
> > > 
> > > Tejun's suggestion seems like the most robust thing here - allocation
> > > issues are only going to be one of the problems with userspace accessing
> > > devices that are going away and there's a complexity cost from having
> > > the partially destroyed cases around.  Off the top of my head there's
> > > anything that attempts to access the hardware if it's genuinely gone
> > > away rather than just been soft unbound for example.  If the device can
> > > just invalidate all open files on the way out then that's going to be
> > > exactly what most things want.
> > 
> > The way we handle the problem in V4L2 at the moment is to reference count
> > the class device and unregister the character device when the last
> > reference goes away, after userspace closes all open file handles. The
> > V4L2 core calls a driver release callback, where the driver is
> > responsible for cleaning up all remaining resources such as memory
> > allocate for driver-specific data structures. This model works fine but
> > is sometimes seen as complex by driver writers, and prevents usage of
> > devm_kzalloc.
> 
> Would it be possible to call the devres cleanup at this point, rather than
> on the remove function?

As devres cleanup will also take care of interrupts and ioremap'ed regions I 
don't think that would be an option. Otherwise we would have trouble when the 
device is reprobed as resources would be busy.

We could possibly create an API to allow drivers to keep references to some 
devres-allocate objects, but that's arguably a hack.

> > If there was a way to synchronously invalidate open files on the way out,
> > ensuring that all pending cdev fops complete and that no new cdev fops
> > call can be made, driver-specific memory could be freed at that point. The
> > cdev instance could then be left dangling and would be freed by the cdev
> > core when the last file handle is closed.

-- 
Regards,

Laurent Pinchart
