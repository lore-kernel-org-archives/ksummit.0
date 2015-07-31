Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2638496
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:03:06 +0000 (UTC)
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8DFB5186
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:03:05 +0000 (UTC)
Received: by pdbbh15 with SMTP id bh15so45404129pdb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 10:03:05 -0700 (PDT)
Date: Fri, 31 Jul 2015 10:03:01 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20150731170301.GE5613@dtor-ws>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165143.GA5613@dtor-ws>
	<alpine.DEB.2.10.1507311855250.2499@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1507311855250.2499@hadrien>
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

On Fri, Jul 31, 2015 at 06:57:17PM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 31 Jul 2015, Dmitry Torokhov wrote:
> 
> > On Fri, Jul 31, 2015 at 06:34:21PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Fri, 31 Jul 2015, Laurent Pinchart wrote:
> > >
> > > > Hello,
> > > >
> > > > It recently came to my attention that the way devm_kzalloc() is used by most
> > > > drivers is broken. I've raised the topic on LKML (see
> > > > http://lkml.org/lkml/2015/7/14/741) in the hope that my findings were simply
> > > > wrong, but it turned out I was unfortunately right. As the topic spans lots of
> > > > subsystems I believe it would be a good technical topic for the Kernel Summit.
> > > >
> > > > The issue occurs when drivers use devm_kzalloc() to allocate data structures
> > > > that can be accessed through file operations on a device node. The following
> > > > sequence of events will then lead to a crash.
> > > >
> > > > 1. Get a device bound to its driver
> > > > 2. Open the corresponding device node in userspace and keep it open
> > > > 3. Unbind the device from its driver through sysfs using for instance
> > > >
> > > > echo <device-name> > /sys/bus/platform/drivers/<driver-name>/unbind
> > > >
> > > > (or for hotpluggable devices just unplug the device)
> > > >
> > > > 4. Close the device node
> > > > 5. Enjoy the fireworks
> > > >
> > > > While having a device node open prevents modules from being unloaded, it
> > > > doesn't prevent devices from being unbound from drivers. If the driver uses
> > > > devm_* helpers to allocate memory the memory will be freed when the device is
> > > > unbound from the driver, but that memory will still be used by any operation
> > > > touching an open device node.
> > >
> > > How is this different from the free happening explicitly in the remove
> > > function?
> >
> > It is not, but often devm* is "sold" as the greatest thing since sliced
> > bread and people use it by default everywhere without a second thought.
> > I see quite a few patches from newer contributors making conversion of
> > drivers to devm and quite a few of them are wrong. I also see quite
> > often suggestions to submitters encouraging using devm* which would be
> > also wrong in those particular scenarios.
> 
> I know about the problem with the interaction with interrupts, but this
> seems to be something else?  Is there a concrete example?  Or are all

I do not have concrete example, but let's say you have driver data that
you allocate with devm and use dev_set_drvdata() to attach to the
device. Then you have character device, and in open you attach your
device to the file structure and in read you do:

	dev = file->private_data;
	drvdata = dev_get_drvdata(dev);


Now that drvdata will not be there once device is unbound, but file may
still be active until userspace closes it.

> cases wrong, because freeing things in the remove function is wrong in the
> first place?

Yes... No... Maybe... ;)

Thanks.

-- 
Dmitry
