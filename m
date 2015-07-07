Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 642B49F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 07:54:08 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9A244AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 07:54:07 +0000 (UTC)
Date: Tue, 7 Jul 2015 09:53:44 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
In-Reply-To: <6142539.s1gh8ubrRK@vostro.rjw.lan>
Message-ID: <alpine.LNX.2.00.1507070948590.10183@pobox.suse.cz>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<53223375.qzkvIEse3r@vostro.rjw.lan>
	<2FABAEF0D3DCAF4F9C9628D6E2F968454F18BA5A@BGSMSX102.gar.corp.intel.com>
	<6142539.s1gh8ubrRK@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Mon, 6 Jul 2015, Rafael J. Wysocki wrote:

> For one example, the default for most of the device/.../power/control 
> files in sysfs is "on" (meaning no runtime PM) while it might be "auto" 
> (use runtime PM if you can).  Making that change for everybody in one go 
> may lead to various issues (that may be regarded as regressions then), 

I don't believe that the current default settings are set the way they are 
set because we intentionally want to prefer performance to power 
efficiency. The real problem is that it's really the only "safe" default, 
because turning power-management features on is likely to cause 
unpredictable issues (being it either real bugs in code, or just bad user 
experience stemming from unexpected system behavior).

Such as suspended keyboard losing first keypress during wakeup (very 
common). Or wireless power management not working properly between the 
client and AP. Etc etc.

-- 
Jiri Kosina
SUSE Labs
