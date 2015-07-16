Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 57D3EAAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:53:11 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BC2D7EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:53:10 +0000 (UTC)
Date: Thu, 16 Jul 2015 08:53:02 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Kristen Accardi <kaccardi@gmail.com>
Message-ID: <20150716155302.GA2304@jtriplet-mobl1>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<1455994.zAMIqEIJx2@vostro.rjw.lan>
	<CAKMK7uHfcwLe-HWz72LJDhe-HvKTBu65DaJmR3tW3TOze4uyVQ@mail.gmail.com>
	<2869041.AWiygZspUy@vostro.rjw.lan> <20150716011056.GA8931@x>
	<1437038341.6856.22.camel@infradead.org>
	<CAH3eK3QS6-2spYEKO3dpFFS_Y0czA0vPk9Wfx7iPHmr4ZFFZ2A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH3eK3QS6-2spYEKO3dpFFS_Y0czA0vPk9Wfx7iPHmr4ZFFZ2A@mail.gmail.com>
Cc: "Brown, Len" <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Kristen Carlson Accardi <kristen@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] System-wide interface to specify
 the level of PM tuning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 16, 2015 at 03:44:57PM +0000, Kristen Accardi wrote:
> On Thu, Jul 16, 2015 at 2:19 AM David Woodhouse <dwmw2@infradead.org> wrote:
> 
> > On Wed, 2015-07-15 at 18:10 -0700, Josh Triplett wrote:
> > >
> > > > The point here is whether or not we want to have a way to make all of
> > them be
> > > > enabled by default instead and see what happens, for example.
> > >
> > > To some degree that seems like an admission of defeat: we can't possibly
> > > do the right thing by default, so we give up and add a way for the user
> > > to configure it.
> > >
> > > We should be selecting the most sensible combination of power and
> > > performance by default; we should not punt that question to the average
> > > user, *or* to the distros.
> >
> > Not to the user, perhaps. But it's not *so* unreasonable to let each of
> > the distros tune things for *their* class of users. We might want base
> > profiles for 'server', 'desktop' and 'laptop on battery' that distros
> > work from.
> >
> >
> We need to be able to give even the distros more help than they have now.
> The problem is that the distros simply don't have the knowledge to tune
> *all* the knobs appropriately.  If we gave them one knob as you suggested
> (and what Rafael is suggesting) set to a sane default determined by the
> kernel - they could then use whatever userspace tool to change it based on
> whatever parameters they want.

Even if there's a single knob, that *still* doesn't let us turn on power
management features that break with certain devices.

> But although that's complex, it's not the real problem.
> >
> > The real problem, as others have said, is when we have power management
> > features which work fine for 99% of the population, but fail
> > occasionally on broken hardware.
> >
> > We can't easily blacklist the known-broken devices or whitelist the
> > good ones, and we end up having to turn the feature off by default.
> >
> > Sure, a DMI match on "HP" and "TO BE FILLED BY OEM" would often go a
> > long way for a certain class of problem, but even that's not sufficient
> > :)
> >
> 
> driver maintainers don't want to maintain blacklist/whitelist because it's
> hard.  It'd be nice to be able to load a black list or white list of
> devices from the filesystem like we do with firmware.

If the devices are identifiable from userspace, udev or similar could
set these settings from a rules file.

But the kernel already has quirk tables for various hardware, and that
seems appropriate to continue putting in the kernel.

- Josh Triplett
