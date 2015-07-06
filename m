Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B7546BA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 01:35:49 +0000 (UTC)
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id EC66112D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 01:35:48 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 3E54747AD7E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 03:21:35 +0200 (CEST)
Date: Sun, 5 Jul 2015 18:21:25 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20150706012125.GC15108@x>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1489458.8WDRattPkl@vostro.rjw.lan>
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

On Mon, Jul 06, 2015 at 02:22:02AM +0200, Rafael J. Wysocki wrote:
> This is a re-occuring theme, but we discussed it last month during LinuxCon
> Japan with Kristen, Grant and other people and pretty much the only conclusion
> we could reach was to propose it as the KS topic, so here it goes.
> 
> As systems get more and more complex and more and more internally integrated
> over time, every new generation of them requires an increased amount of tuning
> to achieve satisfactory balance between energy usage and performance.  You need
> to know what to tune and how to do that, it needs to be done from user space or
> requires special Kconfig options to be set (or even out-of-the-tree patches to
> be applied in extreme cases) and so on.  All that becomes more and more esoteric
> and quite frankly I'm not sure how many users are able to do that on their new
> systems.
> 
> That leads to a question whether or not a global interface (sysfs-based,
> command line etc.) could be added to the kernel that might be used to make a
> certain amount of the tuning happen already at the kernel level.  For example,
> it might change the default runtime PM control setting for all devices from
> "on" to "auto", automatically enable other runtime power management features
> available from various bus types (SATA link power management, USB LPM, others)
> and generally enable power management techiques disabled by default because
> enabling them may lead to performance regressions.
> 
> So do we need such an interface?  If not, why not?  If so, how should it be
> designed, what should it cover etc.?

Performance regressions alone aren't a good reason to disable power
management by default.  As I understand it, several power management
features are disabled by default because they tend to break things and
we don't have an enormous whitelist or blacklist; for instance, USB LPM.
If there's a power management feature we're not enabling by default
because it decreases performance by epsilon, let's change that.

If someone cares so much about performance that they're willing to burn
a disproportionate amount of power to get it (meaning that they care
more about performance than performance per watt, and can't just solve
the problem by throwing more systems at it instead), then it doesn't
seem unreasonable to reconfigure the kernel for that.  (Though if there
are out-of-tree patches needed to enable that configuration, by all
means let's merge those.)  But let's be consistent in our defaults, and
given the huge number of people who may never change the defaults, I'd
advocate power management by default.  (A distribution could always
offer a kernel flavor for people who want performance at all costs.)

- Josh Triplett
