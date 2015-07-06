Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 172FCBCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 13:45:46 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 9C9D2118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 13:45:44 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: NeilBrown <neilb@suse.com>
Date: Mon, 06 Jul 2015 16:12:10 +0200
Message-ID: <53223375.qzkvIEse3r@vostro.rjw.lan>
In-Reply-To: <20150706114017.463ef472@noble>
References: <1489458.8WDRattPkl@vostro.rjw.lan> <20150706114017.463ef472@noble>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Grant Likely <grant.likely@linaro.org>, Len Brown <len.brown@intel.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Kristen Carlson Accardi <kristen@linux.intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Monday, July 06, 2015 11:40:17 AM NeilBrown wrote:
> On Mon, 06 Jul 2015 02:22:02 +0200 "Rafael J. Wysocki"
> <rjw@rjwysocki.net> wrote:
> 
> > Hi All,
> > 
> > This is a re-occuring theme, but we discussed it last month during LinuxCon
> > Japan with Kristen, Grant and other people and pretty much the only conclusion
> > we could reach was to propose it as the KS topic, so here it goes.
> > 
> > As systems get more and more complex and more and more internally integrated
> > over time, every new generation of them requires an increased amount of tuning
> > to achieve satisfactory balance between energy usage and performance.  You need
> > to know what to tune and how to do that, it needs to be done from user space or
> > requires special Kconfig options to be set (or even out-of-the-tree patches to
> > be applied in extreme cases) and so on.  All that becomes more and more esoteric
> > and quite frankly I'm not sure how many users are able to do that on their new
> > systems.
> > 
> > That leads to a question whether or not a global interface (sysfs-based,
> > command line etc.) could be added to the kernel that might be used to make a
> > certain amount of the tuning happen already at the kernel level.  For example,
> > it might change the default runtime PM control setting for all devices from
> > "on" to "auto", automatically enable other runtime power management features
> > available from various bus types (SATA link power management, USB LPM, others)
> > and generally enable power management techiques disabled by default because
> > enabling them may lead to performance regressions.
> > 
> > So do we need such an interface?  If not, why not?  If so, how should it be
> > designed, what should it cover etc.?
> > 
> 
> This sounds like an important topic, but I don't think I quite
> understand the question.
> We already have ".../power/runtime_enabled" and various other tunables.
> What more could you need in a kernel interface?

The problem is that the defaults for all of those tunables are performance-oriented,
so you need to flip many of them (if not all) to become power-oriented.

That usually mean flipping a number of knobs every time you boot the system.

> I can see that much more than an interface is needed - we need a tool
> that makes use of that interface.

That is one possible approach, but that tool would need to be developed in
a lockstep with the kernel anyway, so it knows about all of the new features
added to the kernel over time that have non-trivial power vs performance
characteristics.

> Maybe a database of different systems together with tuning settings for
> different goals.
> Then some tools detects the particular hardware it is running on, and
> applies the tuning rules.
> 
> (a tiny bit like a devicetree database which contains configuration
> rules).
> 
> Or have I missed the point completely?

No, I don't think you have missed it, but then most of subsystems and drivers
in the kernel know what it means to be "power-friendly", so they should be able
to choose their defaults on the basis of one single setting somewhere.

Thanks,
Rafael
