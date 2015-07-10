Return-Path: <khilman@deeprootsystems.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 18526B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 17:25:22 +0000 (UTC)
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 189AC10D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 17:25:21 +0000 (UTC)
Received: by padck2 with SMTP id ck2so6940365pad.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 10:25:20 -0700 (PDT)
From: Kevin Hilman <khilman@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<53223375.qzkvIEse3r@vostro.rjw.lan>
	<2FABAEF0D3DCAF4F9C9628D6E2F968454F18BA5A@BGSMSX102.gar.corp.intel.com>
	<6142539.s1gh8ubrRK@vostro.rjw.lan>
Date: Fri, 10 Jul 2015 10:25:17 -0700
In-Reply-To: <6142539.s1gh8ubrRK@vostro.rjw.lan> (Rafael J. Wysocki's message
	of "Mon, 06 Jul 2015 16:21:23 +0200")
Message-ID: <7hlheo9b7m.fsf@deeprootsystems.com>
MIME-Version: 1.0
Content-Type: text/plain
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

"Rafael J. Wysocki" <rjw@rjwysocki.net> writes:

> On Monday, July 06, 2015 01:49:45 PM Iyer, Sundar wrote:

[...]

>> Is a "single setting somewhere" even appropriate? It is actually the intelligence
>> needed vs executing the actions?
>
> For one example, the default for most of the device/.../power/control files in
> sysfs is "on" (meaning no runtime PM) while it might be "auto" (use runtime PM
> if you can).  Making that change for everybody in one go may lead to various
> issues (that may be regarded as regressions then), but if we made it configurable,
> people might choose to make that change for themselves if they wanted to.

I'd be very supportive of some default knob (or cmdline option) to favor
energy efficiency.  For runtime PM, I suspect the resulting performance
regressions are mostly (relatively) simple fixes, like enabling
autosuspend, etc.   

Also, having a system-wide way to enable this mode would also enable us
to find/report these bugs/regressions in a way that would be easily
repeatable.  With the current pile of knobs/tunables, it's often very
hard to reproduce problems others may be seeing.

Kevin
