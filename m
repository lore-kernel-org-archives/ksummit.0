Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3B0D7409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 10:55:15 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 52F43165
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 10:55:14 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
Date: Sat, 01 Aug 2015 13:55:54 +0300
Message-ID: <65396948.VLxKPYsgi9@avalon>
In-Reply-To: <20150731172732.GB7557@n2100.arm.linux.org.uk>
References: <2111196.TG1k3f53YQ@avalon> <20150731170416.GI20873@sirena.org.uk>
	<20150731172732.GB7557@n2100.arm.linux.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
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

Hi Russell,

On Friday 31 July 2015 18:27:32 Russell King - ARM Linux wrote:
> On Fri, Jul 31, 2015 at 06:04:16PM +0100, Mark Brown wrote:
> > On Fri, Jul 31, 2015 at 06:14:14PM +0300, Laurent Pinchart wrote:
> > > It recently came to my attention that the way devm_kzalloc() is used by
> > > most drivers is broken. I've raised the topic on LKML (see
> > > http://lkml.org/lkml/2015/7/14/741) in the hope that my findings were
> > > simply> 
> > lkml.org is down (again) - can you please provide a subject line?
> 
> I wish people would stop using lkml.org
> 
> > > The issue occurs when drivers use devm_kzalloc() to allocate data
> > > structures that can be accessed through file operations on a device
> > > node. The following sequence of events will then lead to a crash.
> > 
> > Like Julia says I'm not sure this is really related to devm_ - I would
> > really expect that the majority of users were already broken prior to
> > the conversion to devm_ since the natural thing is to free things in the
> > remove() function which has exactly the same issues, the main problem
> > here is that the file open after device is removed case is rare for most
> > devices and requires somewhat obscure handling.
> 
> I completely agree - this has *nothing* to do with devm_ at all.  Any
> bugs that are there as a result of converting to devm_kzalloc() where
> there before.  99.9% of the devm_kzalloc() conversions are merely
> replacing the kmalloc()/kzalloc() in the probe function with devm_kzalloc()
> and removing the free() in the remove function.

In those cases I agree that the bug is not introduced by the conversion. 
However, as we're selling devm_kzalloc() as solving all problems (or, at 
least, as many developers believe it will), many new drivers get submitted 
with blind devm_kzalloc() usage without any thought about proper lifetime 
management for objects allocated by the driver. This gets past (at least some) 
subsystem maintainers, showing that even if the devm_kzalloc() API forbids 
this kind of usage, the message is not conveyed properly. My main concern here 
is that driver developers do the wrong things, and maintainers don't catch the 
problem. In addition to fixing existing code we need to fix that problem.

> If _anything_, converting to devm_kzalloc() means that the lifetime of
> the data structure is _slightly_ longer - because rather than the data
> structure being freed in the remove() callback, it's freed after the
> remove() callback has returned.
> 
> However, both are just as buggy.
> 
> The devm_* aspect of this thread is just an anti-devm_* smoke-screen.
> It's completely irrelevant.
> 
> > Tejun's suggestion seems like the most robust thing here - allocation
> > issues are only going to be one of the problems with userspace accessing
> > devices that are going away and there's a complexity cost from having
> > the partially destroyed cases around.  Off the top of my head there's
> > anything that attempts to access the hardware if it's genuinely gone
> > away rather than just been soft unbound for example.  If the device can
> > just invalidate all open files on the way out then that's going to be
> > exactly what most things want.
> 
> Well, accessing hardware is even more of a problem.  Consider that
> ioremap()s will also be cleaned up at the same time (whether in
> ->remove() or in devm cleanup processing - again, not a devm problem)
> thereby removing the mapping for accessing the hardware.

Drivers are usually in a bit of a better shape when it comes to hardware 
access. Most developers understand that the remove() function is supposed to 
stop the hardware, and most subsystems will prevent operations that touch the 
hardware from reaching drivers after the remove() function unregisters the 
subsystem "class" (for lack of a better word) device. This can still be racy 
if not implemented correctly, but shouldn't be subject to the same issue of 
userspace keeping file handles open long after the device is gone.

This being said, if unregistration/removal/cleanup racing with userspace is a 
problem for which we have solutions, it's still too easy today to implement it 
incorrectly in drivers. That's also something we might want to discuss to 
share best practices among subsystems and come up with a common message we can 
send to driver developers.

-- 
Regards,

Laurent Pinchart
