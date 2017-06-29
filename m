Return-Path: <mchehab@s-opensource.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 803475B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 10:03:00 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D24571FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 10:02:59 +0000 (UTC)
Date: Thu, 29 Jun 2017 07:02:52 -0300
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20170629070252.21c782d3@vento.lan>
In-Reply-To: <CAMuHMdXQ3FVOQcRBfbc68f5KWmZw7q=YKyeQYUfKqikqrcAAmQ@mail.gmail.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
	<CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
	<CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
	<20170627231011.GA10543@mail.hallyn.com>
	<CAB=NE6Wd9WWCyRzO=TjaTiPNruSwt24G3BD2qTuUue8B3kRX5g@mail.gmail.com>
	<CA+55aFzgumwC-HqDpsj-OEVoQdhcnRo9Fh2Kg7SMPL6+wP4ctg@mail.gmail.com>
	<CAMuHMdXQ3FVOQcRBfbc68f5KWmZw7q=YKyeQYUfKqikqrcAAmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Cristina Moraru <cristina.moraru09@gmail.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 28 Jun 2017 19:56:01 +0200
Geert Uytterhoeven <geert@linux-m68k.org> escreveu:

> On Wed, Jun 28, 2017 at 2:14 AM, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> > On Tue, Jun 27, 2017 at 5:09 PM, Luis R. Rodriguez <mcgrof@kernel.org> wrote:  
> >> The *easier* thing to do for now was to just map a loaded module to a
> >> kconfig symbol, and she proposed fairly simple patches to do this.  
> >
> > Well, localmodconfig does that today already.
> >
> > And as mentioned, this is *not* even primarily about devices.
> >
> > Devices are actually the easy case. Not only are they generally fairly
> > easy to enumerate (ie lsusb etc), they are things that people are at
> > least more or less aware of.  

That depends. When the devices don't have I2C buses, this is usually
trivial. However, when then have it, it not uncommon that the same
USB/PCI ID to be shipped with different I2C chips for the same function.

That is the case of media drivers: the support for, let's say, a TV
device usually requires 3 or 4 different drivers, one bridge driver
and multiple I2C drivers.

To make things worse, the same brand name and PCI/USB ID is sometimes
shipped with different TV decoders if they're manufactured for Europe,
US, Asia or South America market. There are even some cases where
the same USB ID (with different BCD revision) use completely different
bridge drivers.

> 
> Devices are indeed the easy part.  And on systems using DT, it's fairly easy
> to find out which drivers you need to enable.
> However, many drivers cannot be enabled without enabling a subsystem and
> a few subsystem-specific options first.  Finding out which is already much
> harder. E.g. the media subsystem has many of these.

The media subsystem is harder for DT-based drivers, because it has no
way to know what I2C devices some bridge driver would use. Basically,
any bridge driver could, in thesis, use any available camera sensor.

For PC (e. g. non-platform devices), what's equivalent to DT is hardcoded
at the bridge driver: it has to explicitly bind each I2C device used
on it.

As such driver dependency is known by the Kernel module, we do lots of
efforts to make easier for users to select what they want, trying to
avoid technical questins. That actually required us a lot of magic at 
Kconfig dialect, because select is not recursive. So, we had to do
some sort of "reverse polish notation" type of thing, where possible, in
order to convert select into depends on. Ugly, and harder to maintain,
but it works on several cases.

In the past, the Kconfig questions there were if the user wanted V4L,
V4L2  and/or DVB API, and then a series of other technical questions. 
Now, it starts by asking if the user wants to enable a functionality
visible to him (camera/video, analog TV, digital TV, radio, etc),
with is something that the user likely knows how to answer. With that,
it allows to select adapter per their bus (USB, PCI).

There are still a bunch of more technical questions, though, that we
could possible avoid if were there some Kconfig option that would
tell that the user wants a "simplified" version as he would be compiling
the kernel for a PC or a Laptop.

Yet, the user has to know if his "Win TV" board uses bt8xx, cx88,
cx231xx, em28xx... chipset. 

That's not an easy question for the user. We have a wiki to help,
and we document the PCI/USB IDs for several commonly used drivers.

Once the driver is selected, by default, Kconfig enables the option
"Autoselect ancillary drivers", with basically means that, if the user
selects, for example, the em28xx driver, all possible combinations
of tuners and other I2C devices that all em28xx boards supports
will be selected.

Not optimal, but that warrants that, if the user has an em28xx
driver, it will work out of the box, no matter what variant he
has, preventing us to ask what tuner, analog TV demod, digital TV
demod, camera sensor... such hardware has.

An improvement would be to let the user tell what boards he has
(either via PCI/USB ID running some ancillary script or by presenting 
him a menu of all supported hardware per brand name.

We would likely need a list of all supported boards by their 
brand names (we have that already hardcoded at drivers - either as
string names or as comments), and likely a SAT solver, in order 
to allow selecting the needed drivers for such board.

-

Anyway, if you think selecting media drivers for DT-based drivers is
hard, perhaps you could take a look at the current approach and see
how to extend it to the DT case.

I guess we would need some sort of script that would inspect all
DT files and convert their dependencies into something that we could
import to Kconfig in a way that, for example, one selects OMAP3 driver,
it would, by default, select all sensors that this driver uses, 
according with the existing DT files.

> 
> > The config options that don't enable drivers, but enable particular
> > behavior - *those* are actually the nastiest ones.
> >
> > And you don't see those in module names (well, you obviously sometimes
> > do, since the module might be what implements the behavior, but quite
> > often it's a built-in or just a setting for a module)  
> 
> Module names assume you already have a running system to get a list of modules.
> I don't want to go into systemd bashing (you can probably find other examples),
> but when a Debian upgrade pulled in systemd, I had a hard time finding out
> which Kconfig options I had to enable to make the system boot again.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



Thanks,
Mauro
