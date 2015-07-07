Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 18440BA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 12:07:00 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 15887EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 12:06:46 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Jiri Kosina <jkosina@suse.com>
Date: Tue, 07 Jul 2015 14:33:12 +0200
Message-ID: <1447490.YSpEUg0Pqm@vostro.rjw.lan>
In-Reply-To: <alpine.LNX.2.00.1507070948590.10183@pobox.suse.cz>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<6142539.s1gh8ubrRK@vostro.rjw.lan>
	<alpine.LNX.2.00.1507070948590.10183@pobox.suse.cz>
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

On Tuesday, July 07, 2015 09:53:44 AM Jiri Kosina wrote:
> On Mon, 6 Jul 2015, Rafael J. Wysocki wrote:
> 
> > For one example, the default for most of the device/.../power/control 
> > files in sysfs is "on" (meaning no runtime PM) while it might be "auto" 
> > (use runtime PM if you can).  Making that change for everybody in one go 
> > may lead to various issues (that may be regarded as regressions then), 
> 
> I don't believe that the current default settings are set the way they are 
> set because we intentionally want to prefer performance to power efficiency.

No, this is not the intent, but having those defaults favors performance as
a consequence (and increasingly so as the integration of systems increases).

> The real problem is that it's really the only "safe" default, 
> because turning power-management features on is likely to cause 
> unpredictable issues (being it either real bugs in code, or just bad user 
> experience stemming from unexpected system behavior).
> 
> Such as suspended keyboard losing first keypress during wakeup (very 
> common). Or wireless power management not working properly between the 
> client and AP. Etc etc.

Agreed.

On the other hand, though, there are systems without those problems and their
users should be able to choose a more power-oriented behavior relatively
easily.

Thanks,
Rafael
