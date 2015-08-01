Return-Path: <linux+ksummit-discuss=lists.linuxfoundation.org@arm.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B25F9323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 16:31:02 +0000 (UTC)
Received: from pandora.arm.linux.org.uk (pandora.arm.linux.org.uk
	[78.32.30.218])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 315737C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 16:31:00 +0000 (UTC)
Date: Sat, 1 Aug 2015 17:30:48 +0100
From: Russell King - ARM Linux <linux@arm.linux.org.uk>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20150801163047.GC7557@n2100.arm.linux.org.uk>
References: <2111196.TG1k3f53YQ@avalon> <20150731170416.GI20873@sirena.org.uk>
	<20150731172732.GB7557@n2100.arm.linux.org.uk>
	<65396948.VLxKPYsgi9@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <65396948.VLxKPYsgi9@avalon>
Sender: Russell King - ARM Linux <linux@arm.linux.org.uk>
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

On Sat, Aug 01, 2015 at 01:55:54PM +0300, Laurent Pinchart wrote:
> On Friday 31 July 2015 18:27:32 Russell King - ARM Linux wrote:
> > I completely agree - this has *nothing* to do with devm_ at all.  Any
> > bugs that are there as a result of converting to devm_kzalloc() where
> > there before.  99.9% of the devm_kzalloc() conversions are merely
> > replacing the kmalloc()/kzalloc() in the probe function with devm_kzalloc()
> > and removing the free() in the remove function.
> 
> In those cases I agree that the bug is not introduced by the conversion. 
> However, as we're selling devm_kzalloc() as solving all problems (or, at 
> least, as many developers believe it will), many new drivers get submitted 
> with blind devm_kzalloc() usage without any thought about proper lifetime 
> management for objects allocated by the driver.

I don't think anyone has ever said that devm_* solves all problems.  What
I've seen, it has been sold as avoiding problems with memory leaks in the
failed probe path, and as a way to make resource management at driver
unbind time easier.

I don't think it's ever been touted as "the worlds solution to hunger" or
anything of the sort - and as you've already confessed to being a hater
of devm_*, I can only think that the reason you're soo inspired to want to
connect devm_* with this problem is because you have an alterior motive.

> This gets past (at least some) subsystem maintainers, showing that even
> if the devm_kzalloc() API forbids this kind of usage, the message is not
> conveyed properly.

Again, that's not the problem.  Empty release methods for kobjects get past
subsystem maintainers too.  Some subsystem maintainers even create empty
release methods.  It's all exactly the same problem: many kernel developers
_and_ subsystem maintainers do not understand reference counted resource
tracking - that's the _common_ issue here.

That's not necessarily the fault of the subsystem maintainers; if a
subsystem maintainer is overloaded with work, or tired out towards the end
of the day, reviews aren't going to be as thorough as they should be, which
leads to things being missed - and to properly analyse the lifetime of every
structure in a driver submission is Hard.  I know full well, that a lot of
subsystem maintainers struggle with getting finding the basic review points,
so expecting them to properly analyse structure lifetime is, I think,
expecting too much.

Maybe a way forward on this should be that we decide that:

- any structure which gets passed into a driver open() method should be
  kref-counted.
- that structure should be allocated using standard kzalloc()
- the structure should only ever be freed after the last release after
  the driver has been unbound.

It sounds like there is scope there for set of "driver data" helpers,
maybe something like:

struct drvdata {
	struct kref kref;
	u64 data[0];
};

static void *drvdata_fops_data_alloc(size_t size)
{
	struct drvdata *d;

	d = kzalloc(sizeof(*d) + size, GFP_KERNEL);
	if (!d)
		return NULL;

	kref_init(&d->kref);
	d->real_fops = fops;
	return d->data;
}

static void drvdata_fops_release_data(struct kref *kref)
{
	struct drvdata *d = container_of(kref, struct drvdata, kref);
	kfree(d);
}

void drvdata_fops_put(void *drvdata)
{
	struct drvdata *d = container_of(drvdata, struct drvdata, data);
	kref_put(&d->kref, drvdata_fops_release_data);
}

void *drvdata_fops_open(struct file *file)
{
	struct drvdata *d = container_of(file->private_data, struct drvdata, data);

	kref_get(&d->kref);

	return d->data;
}

void drvdata_fops_release(struct file *file)
{
	drvdata_fops_put(file->private_data);
}

The idea being that drvdata_fops_data_alloc() gets called in the driver
probe function, with drvdata_fops_put() in the release function.  Both
of these _could_ have devm_* equivalents to ease driver authors burden
when it comes to error cleanup in the probe.

To get at the driver data, a driver would call drvdata_fops_open() in
their fops open() method, and drvdata_fops_release() in their fops
release() method - it would be nice to hide that from drivers so they
don't have to think about it once they opt-in to this management, though
that makes it too much of a framework rather than a library.

We can make sure that happens if we offset file->private_data with a
(random?  build-time?) cookie to catch anyone who thinks they can
dereference it directly.

> > Well, accessing hardware is even more of a problem.  Consider that
> > ioremap()s will also be cleaned up at the same time (whether in
> > ->remove() or in devm cleanup processing - again, not a devm problem)
> > thereby removing the mapping for accessing the hardware.
> 
> Drivers are usually in a bit of a better shape when it comes to hardware 
> access. Most developers understand that the remove() function is supposed to 
> stop the hardware,

I think you missed the point.

What if a file-operations method provokes some kind of hardware access.
For example, the read() method dereferences the driver data (which has
been freed), obtains a stale pointer to where the hardware was mapped,
and then tries to read a status register to check whether any data has
become available.

The result is, of course, an oops because the io memory has been freed by
the devm_ioremap_resource() cleanup.

What I'm trying to point out where is that this is absolutely no different
from the devm_* problem you're complaining about - exactly the same issues
exist with _any_ accessible resource which is shared between the driver
lifetime and the file-operations lifetime.

That, again, has absolutely nothing to do with the "evil devm" stuff.  We
have _always_ cleaned up such resources in the driver unbind path with an
iounmap(), and I bet that most of these are buggy in almost all drivers
which also access this memory region via the file-operations methods.

So, I think you ought to get off the "devm is evil" bandwagon, and realise
that the problem you have raised has absolutely nothing at all to do with
devm_* but is much more of a general "people don't understand resource
lifetime issues" problem.

Even I will hold my hand up to having written buggy drivers with exactly
the kind of issues raised in this thread (I'm looking at one right now,
though not in mainline...)

Here's an example of a driver which is buggy as we've been describing
here, but does not use devm*: drivers/uio/uio_pruss.c.  In pruss_cleanup(),
it kfree()s the array of struct uio_info structures, which are used by
drivers/uio/uio.c.  This structure can be accessed via the mmap(), write(),
release(), poll(), etc file-operations methods.  None of them would be
safe if the driver has been unbound with the chardev open - and it'd be
dangerous to close the port once the driver had been unbound.

-- 
FTTC broadband for 0.8mile line: currently at 10.5Mbps down 400kbps up
according to speedtest.net.
