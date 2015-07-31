Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 243BA3C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:57:23 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E77E38D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:57:21 +0000 (UTC)
Date: Fri, 31 Jul 2015 18:57:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
In-Reply-To: <20150731165143.GA5613@dtor-ws>
Message-ID: <alpine.DEB.2.10.1507311855250.2499@hadrien>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165143.GA5613@dtor-ws>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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



On Fri, 31 Jul 2015, Dmitry Torokhov wrote:

> On Fri, Jul 31, 2015 at 06:34:21PM +0200, Julia Lawall wrote:
> >
> >
> > On Fri, 31 Jul 2015, Laurent Pinchart wrote:
> >
> > > Hello,
> > >
> > > It recently came to my attention that the way devm_kzalloc() is used by most
> > > drivers is broken. I've raised the topic on LKML (see
> > > http://lkml.org/lkml/2015/7/14/741) in the hope that my findings were simply
> > > wrong, but it turned out I was unfortunately right. As the topic spans lots of
> > > subsystems I believe it would be a good technical topic for the Kernel Summit.
> > >
> > > The issue occurs when drivers use devm_kzalloc() to allocate data structures
> > > that can be accessed through file operations on a device node. The following
> > > sequence of events will then lead to a crash.
> > >
> > > 1. Get a device bound to its driver
> > > 2. Open the corresponding device node in userspace and keep it open
> > > 3. Unbind the device from its driver through sysfs using for instance
> > >
> > > echo <device-name> > /sys/bus/platform/drivers/<driver-name>/unbind
> > >
> > > (or for hotpluggable devices just unplug the device)
> > >
> > > 4. Close the device node
> > > 5. Enjoy the fireworks
> > >
> > > While having a device node open prevents modules from being unloaded, it
> > > doesn't prevent devices from being unbound from drivers. If the driver uses
> > > devm_* helpers to allocate memory the memory will be freed when the device is
> > > unbound from the driver, but that memory will still be used by any operation
> > > touching an open device node.
> >
> > How is this different from the free happening explicitly in the remove
> > function?
>
> It is not, but often devm* is "sold" as the greatest thing since sliced
> bread and people use it by default everywhere without a second thought.
> I see quite a few patches from newer contributors making conversion of
> drivers to devm and quite a few of them are wrong. I also see quite
> often suggestions to submitters encouraging using devm* which would be
> also wrong in those particular scenarios.

I know about the problem with the interaction with interrupts, but this
seems to be something else?  Is there a concrete example?  Or are all
cases wrong, because freeing things in the remove function is wrong in the
first place?

thanks,
julia

>
> >
> > (For some reason, I can't access the lkml discussion).
>
> Me neither.
>
> >
> > julia
> >
> >
> > >
> > > Tejun Heo commented that "this really is a general lifetime management
> > > problem. [...] If a piece of memory isn't attached to the harware side but the
> > > userland interface side [...], that shouldn't be allocated via devm - it has
> > > "dev" in its name for a reason."
> > >
> > > While I agree that this is how devres operates today, I'm not sure we should
> > > throw the baby out with the bath water. Using devm_kzalloc() as currently done
> > > has value, and reverting drivers to the pre-devm memory allocation code would
> > > make error handling and cleanup code paths more complex again.
> > >
> > > Should we introduce a managed allocator for that purpose that would have a
> > > lifespan explicitly handled by drivers (or, even better, handled automatically
> > > in a way that would suit our use cases) ? Tejun commented that "a better
> > > approach would be implementing generic revoke feature and sever open files on
> > > driver detach so that everything can be shutdown then".
>
> Revoke will be useful for file-based access, but I am sure there are
> other cases where lifetime of one of interfaces implemented by the
> driver will last past the point where we unbind the driver from the
> device. Maybe it is subsystem fault in the end.
>
> Note that even though I am one of (or the only?) devm "haters" I do
> believe that the API is quite useful if used with consideration and
> definitely do not want to throw out the baby with the bath water.
>
> Thanks.
>
> --
> Dmitry
>
