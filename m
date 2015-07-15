Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B7BFCB1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 22:17:24 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id EEDC21ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 22:17:23 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 16 Jul 2015 00:44:01 +0200
Message-ID: <2869041.AWiygZspUy@vostro.rjw.lan>
In-Reply-To: <CAKMK7uHfcwLe-HWz72LJDhe-HvKTBu65DaJmR3tW3TOze4uyVQ@mail.gmail.com>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<1455994.zAMIqEIJx2@vostro.rjw.lan>
	<CAKMK7uHfcwLe-HWz72LJDhe-HvKTBu65DaJmR3tW3TOze4uyVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Tuesday, July 14, 2015 06:51:31 PM Daniel Vetter wrote:
> On Tue, Jul 14, 2015 at 1:07 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> > However, there are places in the kernel where there is a real tradeoff between
> > power and performance (or power and capacity in general) and there are places
> > that tend to keep conservative settings for fear of exposing latent bugs to
> > a wide community of users.
> >
> > Those might benefit from allowing the users to relax the settings globally
> > if they want to.
> 
> Well that's the approach I don't like personally. Essentially we
> should be the experts on what works and what doesn't. But then kernel
> developers chicken out and dump this problem onto users, which happily
> enable all kinds of options they hear about. And then when it eats
> their data or crashes machines everyone shrugs and says "oh well you
> probably have one of the broken machines, don't enable this" and moves
> on.
> 
> There's certainly the case that some tuning stuff in core kernel has
> real downsides to either perf or power, but generally (for device
> drivers) I feel like simply not enabling the all the power features is
> a cheap way to chicken out of bugs reports and responsibility. I'm
> somewhat opionated on this ;-)

But that's what's happening.  Many PM features are not enabled by default for
this reason or another.

The point here is whether or not we want to have a way to make all of them be
enabled by default instead and see what happens, for example.

Thanks,
Rafael
