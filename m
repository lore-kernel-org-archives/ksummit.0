Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B7029898
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 06:59:35 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A5273FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 06:59:34 +0000 (UTC)
Date: Sun, 25 Jun 2017 23:49:47 -0700
From: Tony Lindgren <tony@atomide.com>
To: NeilBrown <neilb@suse.com>
Message-ID: <20170626064947.GF23064@atomide.com>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87shinzkp9.fsf@notabene.neil.brown.name>
Cc: Sebastian Reichel <sebastian.reichel@collabora.co.uk>,
	ksummit-discuss@lists.linuxfoundation.org, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

* NeilBrown <neilb@suse.com> [170625 16:56]:
> On Sun, Jun 25 2017, Pavel Machek wrote:
> > Situation around mobile phones is only improving very slowly. We now
> > have hardware that is supported in the mainline kernel in useful way
> > (Mitac Mio A701, Nokia N900, N9, N950). Graphics acceleration is still
> > missing.

Also droid 4 should be getting there eventually too with 3G data working
and audio driver in progress.

> > But there are major pieces missing: first is userspace. That's not for
> > us to solve. Then there's some kind of hardware abstraction layer;
> > kernel currently does NOT provide enough information for userland to
> > autoconfigure everything.
> >
> > There are big questions about kernel / user interface. We have whole
> > subsystems missing. They include:
> >
> > 1) Who is responsible for shutting machine down on low battery, and
> > not bringing it up unless safe?
> 
> My laptop hibernates when the battery level gets too low. Why should a
> phone be any different?  User-space monitoring and policy seems a
> suitable answer.

Some of the battery monitors actually have a low battery and almost
empty battery interrupts that can be used to do orderly_reboot().

If no interrupts exist, we should probably have kernel based
low voltage monitoring and batteryd/libbattery as documented in
Documentation/power/power_supply_class.txt.

The reason why I think we need kernel based voltage monitoring for is
that some devices may need a higher voltage for the MMC file system
for example while the rest of the system could still keep running with
a lower voltage and file system corruption can happen.

Maybe setting up the battery as a regulator for the drivers would
be the simplest solution to allow drivers to do something when the
battery voltage is low enough?

> I think the "not bring up unless safe" decision needs to be made in
> the boot-loader.  Once Linux boots, it tends to turn everything on,
> then the unneeded things back off.  That is no good if all you want to
> do is start the battery charging.  Changing this approach would need
> a lot of work and buy-in from lots of people.  I doubt it will happen.

Yes I agree. And for kernel, if the battery voltage is known to
device drivers, they can refuse to mount file system and whatever
needs to be done.

> > 2) How to handle GSM audio?
> 
> What is the issue here?  Isn't GSM audio just another audio source/sink
> which user-space can send where-ever it likes?

At least some modems output no audio data on signal dropouts :)

> > 3) How to handle differences between GSM modems and between GPS
> > receivers? Is AT commands/NMEA good enough? What about AGPS upload?
> 
> My limited exposure to the different varieties of GSM and GPS protocols
> that are supported suggests that this needs to be done in user-space.
> There isn't any suitable abstract protocol that we could implement in a
> kernel interface.
> gpsd handles multiple GPS protocols and meets a lot of needs.  If it
> isn't perfect, it can probably be improved.
> An equivalent "gsmd" with pluggable back-ends seems like the right
> approach.  I think there are several contenders already.

Some of these might be using the old serial multiplexing protocol
27.010 that we have drivers/tty/n_gsm.c?

> > 4) How to handle accelerated RGB LEDs?
> 
> This does sound like a kernel issue.   The hardware has limited
> programmability so that different patterns and colors are possible.
> Maybe we want to enhance the LED trigger mechanism to apply to
> colour LEDs.
> I guess that we need a concrete proposal so that it can be assessed.
> 
> >
> > 5) Do we need suspend-to-RAM to handle power management? If so, how
> > can we handle automatic sleep an still be compatible with Unix?
> 
> My feeling is that until someone proves otherwise, suspend-to-RAM should
> be assumed necessary.  It should be possible to get the same power
> saving with runtime suspend, but that requires all of user-space to
> co-operated, which is like "herding wild cats".

Well runtime suspend still works way better _if implemented_ :p
It does not leave out the option for suspend, it's just that nobody
cares to implement proper runtime suspend based power management
for a SoC that will be around for two years.

> I don't really know what "compatible with Unix" means in this context.

Timers don't run when a device is suspended :)

> There are really two options:
> 1/ applications which specific cpu-availability needs explicitly
>    after for the CPU to be kept available - i.e. "wake locks"
> 2/ applications that don't have specific cpu-availabilty needs
>    don't use the cpu at all when they don't need it.

3/ If proper runtime suspend based PM is implemented, it's possible to
   SIGSTOP non-critical apps when screen blanks or whatever the policy
   is :)

> The first means we suspend-to-RAM, but have "wake lock" calls
> in code.
> The second means that all code is very careful not to be wasteful, and
> we rely on runtime PM.
> Neither are very "Unixy".

Yeah these are needed for 1 & 2 above.

> Is this a kernel issue at all?  User-space can take either approach, and
> struggle with the difficulties.

Probably we have most of the pieces already in kernel, it's just a
quetion how much PM gets implemented for any give device.

> > 6) Do we provide compatibility for old v4l2 apps on complex hardware,
> > or do we wait for libv4l to get support? How do we provide information
> > such as camera aperture to the userspace?
> 
> I cannot comment on this one.
> 
> >
> > ...and probably many more.
> >
> > Plus of course, there's a lot of work to be done to get different
> > phones supported.

Yeah it's the typical Linux kernel popularity contest where the devices
that people use get (and should get) more support. We've already seen
who little the vendors care about upstreaming support for their
devices, probably no easy way around that.

Regards,

Tony
