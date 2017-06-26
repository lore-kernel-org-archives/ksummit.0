Return-Path: <gregkh@linuxfoundation.org>
Date: Mon, 26 Jun 2017 08:57:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20170626065724.GA31701@kroah.com>
References: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
	<20170626045919.GD17296@kroah.com>
	<98ef581a-1618-623f-d52c-77fec798fb52@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <98ef581a-1618-623f-d52c-77fec798fb52@suse.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] (PCI) driver rebinding
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 26, 2017 at 08:05:53AM +0200, Hannes Reinecke wrote:
> On 06/26/2017 06:59 AM, Greg KH wrote:
> > How will udev and systemd have "races"?  We do this today all the time
> > in USB with the usb-modeswitch userspace code, as you point out.
> > 
> The problem here is that we will be generating lots of invalid devices
> (ie devices which are only present in one mode, but not the other).
> So if we start off with a default mode the driver might be creating lots
> of devices, which will be torn down once the device is switched to the
> configured mode.
> _If_ for some reason one of these invalid devices has the same
> identifier as one of the 'real' devices (think of eg multipathing),
> udev/systemd will start processing this device.
> But then we're killing that device shortly afterwards, making systemd
> very unhappy and the user left with a stalled system.

If you have someone adding/removing a device on a pcie link (or
thunderbolt) really quickly, you are going to have this same "issue", so
it's something you are going to have to handle anyway.  Odds are it's
not going to be all that complex, userspace, if it is sane, should be
fine.

But you are talking "multipath", which is not sane, good luck!  :)

> So I'd rather not go down that way; ideally I would have the driver
> start off in the 'correct' mode so that the above issue doesn't occur.

I agree.

> >> - Inhibit default binding, and load the correct drivers after the
> >> configuration has been read.
> > 
> > You can do that too vfio does it from what I recall.  It's easy in that
> > you can just not do a MODULE_DEVICE_TABLE() export and no driver will
> > automatically be loaded and userspace is required to load what it wants.
> > 
> Yeah; however, if we do this, we either have to kill the module device
> table from the driver (but how would the driver then know which device
> to bind to?) or we have to kill the autoloading from the bus (but then
> _none_ of the drivers will load, impacting the entire system).

No, MODULE_DEVICE_TABLE is only needed for auto-loading of modules, it
does not affect what drivers bind to what devices at all.  Once the
module is loaded, all should "just work", unless you have multiple
drivers that say they bind to the same devices, then you have the same
issue as before.

> While I would prefer this option I'm not sure how we can achieve this
> sanely.
> vfio doesn't really count here, as this is a generic PCI driver which
> would work with any PCI device (at least in theory).

That sounds exactly what vfio does, they handle this all in userspace,
and do crazy stuff with the bind/unbind sysfs attributes.  That might
work here too if you have to do it in the end.

thanks,

greg k-h
