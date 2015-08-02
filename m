Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C0AA974
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Aug 2015 23:32:19 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A8982FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Aug 2015 23:32:18 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
Date: Mon, 03 Aug 2015 02:33 +0300
Message-ID: <1762959.7jPJk9WeIL@avalon>
In-Reply-To: <20150801163047.GC7557@n2100.arm.linux.org.uk>
References: <2111196.TG1k3f53YQ@avalon> <65396948.VLxKPYsgi9@avalon>
	<20150801163047.GC7557@n2100.arm.linux.org.uk>
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

On Saturday 01 August 2015 17:30:48 Russell King - ARM Linux wrote:
> On Sat, Aug 01, 2015 at 01:55:54PM +0300, Laurent Pinchart wrote:
> > On Friday 31 July 2015 18:27:32 Russell King - ARM Linux wrote:
> > > I completely agree - this has *nothing* to do with devm_ at all.  Any
> > > bugs that are there as a result of converting to devm_kzalloc() where
> > > there before.  99.9% of the devm_kzalloc() conversions are merely
> > > replacing the kmalloc()/kzalloc() in the probe function with
> > > devm_kzalloc()
> > > and removing the free() in the remove function.
> > 
> > In those cases I agree that the bug is not introduced by the conversion.
> > However, as we're selling devm_kzalloc() as solving all problems (or, at
> > least, as many developers believe it will), many new drivers get submitted
> > with blind devm_kzalloc() usage without any thought about proper lifetime
> > management for objects allocated by the driver.
> 
> I don't think anyone has ever said that devm_* solves all problems.  What
> I've seen, it has been sold as avoiding problems with memory leaks in the
> failed probe path, and as a way to make resource management at driver
> unbind time easier.
> 
> I don't think it's ever been touted as "the worlds solution to hunger" or
> anything of the sort -

Maybe the message has been received differently by different developers then, 
or altered along the path.

> and as you've already confessed to being a hater of devm_*, I can only think
> that the reason you're soo inspired to want to connect devm_* with this
> problem is because you have an alterior motive.

What could have possibly given you that impression ? I've converted drivers to 
devm_* myself and regularly asked for new submissions to use devm_* during 
review.

> > This gets past (at least some) subsystem maintainers, showing that even
> > if the devm_kzalloc() API forbids this kind of usage, the message is not
> > conveyed properly.
> 
> Again, that's not the problem.  Empty release methods for kobjects get past
> subsystem maintainers too.  Some subsystem maintainers even create empty
> release methods.  It's all exactly the same problem: many kernel developers
> _and_ subsystem maintainers do not understand reference counted resource
> tracking - that's the _common_ issue here.
> 
> That's not necessarily the fault of the subsystem maintainers; if a
> subsystem maintainer is overloaded with work, or tired out towards the end
> of the day, reviews aren't going to be as thorough as they should be, which
> leads to things being missed - and to properly analyse the lifetime of every
> structure in a driver submission is Hard.

I don't think anyone blamed them. What I'm interested in is how we can improve 
that situation.

> I know full well, that a lot of subsystem maintainers struggle with getting
> finding the basic review points, so expecting them to properly analyse
> structure lifetime is, I think, expecting too much.
> 
> Maybe a way forward on this should be that we decide that:
> 
> - any structure which gets passed into a driver open() method should be
>   kref-counted.
> - that structure should be allocated using standard kzalloc()
> - the structure should only ever be freed after the last release after
>   the driver has been unbound.
> 
> It sounds like there is scope there for set of "driver data" helpers,
> maybe something like:
> 
> struct drvdata {
> 	struct kref kref;
> 	u64 data[0];
> };
> 
> static void *drvdata_fops_data_alloc(size_t size)
> {
> 	struct drvdata *d;
> 
> 	d = kzalloc(sizeof(*d) + size, GFP_KERNEL);
> 	if (!d)
> 		return NULL;
> 
> 	kref_init(&d->kref);
> 	d->real_fops = fops;
> 	return d->data;
> }
> 
> static void drvdata_fops_release_data(struct kref *kref)
> {
> 	struct drvdata *d = container_of(kref, struct drvdata, kref);
> 	kfree(d);
> }
> 
> void drvdata_fops_put(void *drvdata)
> {
> 	struct drvdata *d = container_of(drvdata, struct drvdata, data);
> 	kref_put(&d->kref, drvdata_fops_release_data);
> }
> 
> void *drvdata_fops_open(struct file *file)
> {
> 	struct drvdata *d = container_of(file->private_data, struct drvdata, 
data);
> 
> 	kref_get(&d->kref);
> 
> 	return d->data;
> }
> 
> void drvdata_fops_release(struct file *file)
> {
> 	drvdata_fops_put(file->private_data);
> }
> 
> The idea being that drvdata_fops_data_alloc() gets called in the driver
> probe function, with drvdata_fops_put() in the release function.  Both
> of these _could_ have devm_* equivalents to ease driver authors burden
> when it comes to error cleanup in the probe.

I had something similar in mind, but with a callback to the driver for 
drvdata_fops_release_data(), to allow for other custom cleanup to be performed 
when it's time to turn the light off.

The way to tie this with file open/release also needs to be a bit more 
complex, as not all drivers store the main private data pointer in file-
>private_data. Some subsystems also hijack file->private_data, so it's not 
always usable even when no per-open data needs to be allocated and managed.

> To get at the driver data, a driver would call drvdata_fops_open() in
> their fops open() method, and drvdata_fops_release() in their fops
> release() method - it would be nice to hide that from drivers so they
> don't have to think about it once they opt-in to this management, though
> that makes it too much of a framework rather than a library.
> 
> We can make sure that happens if we offset file->private_data with a
> (random?  build-time?) cookie to catch anyone who thinks they can
> dereference it directly.
> 
> > > Well, accessing hardware is even more of a problem.  Consider that
> > > ioremap()s will also be cleaned up at the same time (whether in
> > > ->remove() or in devm cleanup processing - again, not a devm problem)
> > > thereby removing the mapping for accessing the hardware.
> > 
> > Drivers are usually in a bit of a better shape when it comes to hardware
> > access. Most developers understand that the remove() function is supposed
> > to stop the hardware,
> 
> I think you missed the point.
> 
> What if a file-operations method provokes some kind of hardware access.
> For example, the read() method dereferences the driver data (which has
> been freed), obtains a stale pointer to where the hardware was mapped,
> and then tries to read a status register to check whether any data has
> become available.
>
> The result is, of course, an oops because the io memory has been freed by
> the devm_ioremap_resource() cleanup.
> 
> What I'm trying to point out where is that this is absolutely no different
> from the devm_* problem you're complaining about - exactly the same issues
> exist with _any_ accessible resource which is shared between the driver
> lifetime and the file-operations lifetime.
> 
> That, again, has absolutely nothing to do with the "evil devm" stuff.  We
> have _always_ cleaned up such resources in the driver unbind path with an
> iounmap(), and I bet that most of these are buggy in almost all drivers
> which also access this memory region via the file-operations methods.

It really depends on the subsystem (and of course on individual drivers). V4L2 
for instance prevents file operation calls from reaching the driver after 
video devices have been unregistered, which happens at remove() time. The 
driver will then have no occasion to access ioremap'ed regions. This can't be 
extended to solve the driver allocate data problem, as the unregistration 
check performed in the V4L2 core uses the video device structure, which must 
thus be kept until after the last file handle is closed.

I haven't performed a survey of other subsystems to see how they deal with 
device removal, but I assume that some level of assistance to drivers should 
be possible.

> So, I think you ought to get off the "devm is evil" bandwagon, and realise
> that the problem you have raised has absolutely nothing at all to do with
> devm_* but is much more of a general "people don't understand resource
> lifetime issues" problem.

Once again I've never meant to imply that devm is evil. My only point is that 
we have a life time management issue that is often mistakenly assumed to be 
handled by devm, and I'd like to find the best way to get out of that 
situation.

> Even I will hold my hand up to having written buggy drivers with exactly
> the kind of issues raised in this thread (I'm looking at one right now,
> though not in mainline...)

Let's not hold a contest of who has written the most code that doesn't handle 
life time properly, I may win ;-)

> Here's an example of a driver which is buggy as we've been describing
> here, but does not use devm*: drivers/uio/uio_pruss.c.  In pruss_cleanup(),
> it kfree()s the array of struct uio_info structures, which are used by
> drivers/uio/uio.c.  This structure can be accessed via the mmap(), write(),
> release(), poll(), etc file-operations methods.  None of them would be
> safe if the driver has been unbound with the chardev open - and it'd be
> dangerous to close the port once the driver had been unbound.

-- 
Regards,

Laurent Pinchart
