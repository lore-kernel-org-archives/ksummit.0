Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B037BB19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 00:02:18 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 367D814F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 00:02:16 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 06 Jul 2015 02:22:02 +0200
Message-ID: <1489458.8WDRattPkl@vostro.rjw.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Grant Likely <grant.likely@linaro.org>, Len Brown <len.brown@intel.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Kristen Carlson Accardi <kristen@linux.intel.com>
Subject: [Ksummit-discuss] [TECH TOPIC] System-wide interface to specify the
	level of PM tuning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi All,

This is a re-occuring theme, but we discussed it last month during LinuxCon
Japan with Kristen, Grant and other people and pretty much the only conclusion
we could reach was to propose it as the KS topic, so here it goes.

As systems get more and more complex and more and more internally integrated
over time, every new generation of them requires an increased amount of tuning
to achieve satisfactory balance between energy usage and performance.  You need
to know what to tune and how to do that, it needs to be done from user space or
requires special Kconfig options to be set (or even out-of-the-tree patches to
be applied in extreme cases) and so on.  All that becomes more and more esoteric
and quite frankly I'm not sure how many users are able to do that on their new
systems.

That leads to a question whether or not a global interface (sysfs-based,
command line etc.) could be added to the kernel that might be used to make a
certain amount of the tuning happen already at the kernel level.  For example,
it might change the default runtime PM control setting for all devices from
"on" to "auto", automatically enable other runtime power management features
available from various bus types (SATA link power management, USB LPM, others)
and generally enable power management techiques disabled by default because
enabling them may lead to performance regressions.

So do we need such an interface?  If not, why not?  If so, how should it be
designed, what should it cover etc.?

Thanks,
Rafael
