Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CFF0C95A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:12:20 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id A29FB201AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:12:19 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>
Date: Wed, 14 May 2014 01:29:06 +0200
Message-ID: <1422044.uKrgYIuT6Q@vostro.rjw.lan>
In-Reply-To: <5370F177.7080109@linux.vnet.ibm.com>
References: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
	<2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DABB@BGSMSX102.gar.corp.intel.com>
	<5370F177.7080109@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "Brown, Len" <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH(CORE?) TOPIC] Energy conservation bias
	interfaces
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, May 12, 2014 09:36:15 PM Preeti U Murthy wrote:
> On 05/08/2014 07:53 PM, Iyer, Sundar wrote:
> >> -----Original Message-----
> >> From: Preeti U Murthy [mailto:preeti@linux.vnet.ibm.com]
> >> Sent: Thursday, May 8, 2014 2:30 PM
> >> To: Iyer, Sundar; Peter Zijlstra; Rafael J. Wysocki
> >> Cc: Brown, Len; Daniel Lezcano; Ingo Molnar; ksummit-

[cut]

> 
> The cpuidle sub-system is behaving fairly well on some of the platforms.
> A lot of CPU  power management is platform specific. But by exposing
> arch specific details like the details about the idle states that are
> present, through the cpuidle drivers, the kernel is able to make
> reasonably good predictions about the duration of idleness of a cpu and
> choose the idle state that it must enter into.
>   The point is that we have succeeded in the past in getting the high
> level power management reasonably right in the kernel although they were
> platform dependent.

The problem had fewer dimensions then (so to speak), however.

The set of available C-states might be different, but that pretty much was
all that needed to be taken into account.

Today, there are C-states per core, per package (also per module on some
platforms and so on) and there may be platform dependencies (like some
C-states are not available if certain I/O devices are not in the "right"
states).  That makes the picture a bit less clean and there are more
places where tradeoffs come into play, at least potentially.

Let alone the whole C-states vs P-states issue (Is it better to run at a
lower frequency for time X, or is it better to run at a higher frequency
for time Y, Y < X?).

Thanks!

-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
