Return-Path: <gregkh@linuxfoundation.org>
Date: Mon, 26 Jun 2017 06:59:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20170626045919.GD17296@kroah.com>
References: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
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

On Sun, Jun 25, 2017 at 05:39:34PM +0200, Hannes Reinecke wrote:
> Hi all,
> 
> here's a thing which came up recently on the SCSI ml:
> 
> How should we handle devices with _several_ possible drivers?

Go kick the hardware developers for trying to come up with such complex
beasts :)

> Case in point are some HBAs, for which the plan is to have distinct
> drivers for either target or initiator mode.
> 
> There are several options how this could be handled:
> - Have a default driver, and manually rebind the 'real' driver once the
> configuration could be read and acted upon.

Yes, do this.

> That would have the drawback that we do an initialisation in the 'wrong'
> mode, and later have to switch configuration. Which at best will 'just'
> induce some pointless initialisation, at worst confuse attached devices
> to no end. Not to mention introducing lots of interesting races with
> udev and systemd

How will udev and systemd have "races"?  We do this today all the time
in USB with the usb-modeswitch userspace code, as you point out.

> - Inhibit default binding, and load the correct drivers after the
> configuration has been read.

You can do that too vfio does it from what I recall.  It's easy in that
you can just not do a MODULE_DEVICE_TABLE() export and no driver will
automatically be loaded and userspace is required to load what it wants.

> Would be a deviation from the original scenario (where the driver are
> bound/loaded as soon as the device becomes available). Has the drawback
> that one would need to inhibit automatic bindings on the _bus_ level (ie
> PCI), which will be even more interesting.
> - Add some bus-specific (or even general?) device configuration syntax,
> which would allow to pass in the required configuration from the
> command-line (or reasonably early, anyway). For which we need a syntax
> first, anyway. And need to figure out if we can have an abstract syntax
> or would need to have a bus- (or even driver-) specific configuration.

Hah, good luck with that :)

greg k-h
