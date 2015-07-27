Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B72140B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 27 Jul 2015 13:03:31 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 4251779
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 27 Jul 2015 13:03:29 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Josh Triplett <josh@joshtriplett.org>
Date: Mon, 27 Jul 2015 15:30:24 +0200
Message-ID: <1591143.F5lcGfdGXX@vostro.rjw.lan>
In-Reply-To: <20150726001600.GA19810@x>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<3566742.dUiIOvU9qh@vostro.rjw.lan> <20150726001600.GA19810@x>
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

On Saturday, July 25, 2015 05:16:00 PM Josh Triplett wrote:
> On Sun, Jul 26, 2015 at 02:03:55AM +0200, Rafael J. Wysocki wrote:
> > On Saturday, July 25, 2015 12:50:16 PM Josh Triplett wrote:

[cut]

> > 
> > Say the user has a new machine and doesn't know which tunables can be safely
> > enabled on it.  The only way to check is to toggle all of them and see if
> > anything breaks.  The difficulty here is that the user actually needs to
> > know about all of them which takes quite a bit of research and if nothing
> > breaks really that's a fair amount of work pretty much in vain.  A global
> > switch would make it somewhat easier for the lucky users whose systems
> > don't break after toggling it.
> 
> Odds are at least one thing will break, though, and if the user doesn't
> know about all of the tunables they just changed, they won't necessarily
> know how to diagnose the reason, especially if the failure is more
> subtle and doesn't completely break the system.
> 
> Perhaps, as a start towards this, we could document all the "might or
> might not work" power management tunables in one place, and document
> what might go wrong if they don't work on your system.  That could then
> easily become an /etc/sysctl.d file to toggle them all.  And even if we
> offer a single global "dangerous PM tunables" switch, that document
> would help identify what might go wrong and help re-disable the things
> that don't work.

That sounds like a good idea to me.

Thanks,
Rafael
