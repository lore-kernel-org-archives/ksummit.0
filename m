Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 646CDAC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 01:11:05 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B1F9B17E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 01:11:04 +0000 (UTC)
Date: Wed, 15 Jul 2015 18:10:56 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20150716011056.GA8931@x>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<1455994.zAMIqEIJx2@vostro.rjw.lan>
	<CAKMK7uHfcwLe-HWz72LJDhe-HvKTBu65DaJmR3tW3TOze4uyVQ@mail.gmail.com>
	<2869041.AWiygZspUy@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2869041.AWiygZspUy@vostro.rjw.lan>
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

On Thu, Jul 16, 2015 at 12:44:01AM +0200, Rafael J. Wysocki wrote:
> On Tuesday, July 14, 2015 06:51:31 PM Daniel Vetter wrote:
> > On Tue, Jul 14, 2015 at 1:07 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> > > However, there are places in the kernel where there is a real tradeoff between
> > > power and performance (or power and capacity in general) and there are places
> > > that tend to keep conservative settings for fear of exposing latent bugs to
> > > a wide community of users.
> > >
> > > Those might benefit from allowing the users to relax the settings globally
> > > if they want to.
> > 
> > Well that's the approach I don't like personally. Essentially we
> > should be the experts on what works and what doesn't. But then kernel
> > developers chicken out and dump this problem onto users, which happily
> > enable all kinds of options they hear about. And then when it eats
> > their data or crashes machines everyone shrugs and says "oh well you
> > probably have one of the broken machines, don't enable this" and moves
> > on.
> > 
> > There's certainly the case that some tuning stuff in core kernel has
> > real downsides to either perf or power, but generally (for device
> > drivers) I feel like simply not enabling the all the power features is
> > a cheap way to chicken out of bugs reports and responsibility. I'm
> > somewhat opionated on this ;-)
> 
> But that's what's happening.  Many PM features are not enabled by default for
> this reason or another.
> 
> The point here is whether or not we want to have a way to make all of them be
> enabled by default instead and see what happens, for example.

To some degree that seems like an admission of defeat: we can't possibly
do the right thing by default, so we give up and add a way for the user
to configure it.

We should be selecting the most sensible combination of power and
performance by default; we should not punt that question to the average
user, *or* to the distros.

- Josh Triplett
