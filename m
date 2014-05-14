Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 033DA9A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 20:21:24 +0000 (UTC)
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4F140201B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 20:21:23 +0000 (UTC)
Received: by mail-ie0-f171.google.com with SMTP id rl12so92540iec.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 13:21:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1963221.UGZYU13xOX@vostro.rjw.lan>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<CAP245DXHnmSBnBdcKzuzFUCQc4Q5XpukenE3Zz+jSeB7Cd=_1g@mail.gmail.com>
	<20140513095929.GD5540@e103034-lin>
	<1963221.UGZYU13xOX@vostro.rjw.lan>
Date: Wed, 14 May 2014 22:21:22 +0200
Message-ID: <CAKMK7uFfUrhEe1e9rYh7jdw8smPgKka0hUGKoMisgY4oF=nRvg@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset=UTF-8
Cc: Len Brown <len.brown@intel.com>,
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

On Wed, May 14, 2014 at 1:55 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> In addition to that, the CPU scheduler is not the only subsystem where
> things may not be either on or off.  Take the graphics for example (at
> least in the case of more complicated adapters).  There certainly are
> energy efficiency vs performance tradeoffs there.

There's actually really hilarious interaction issues going on. Up
until recently we've had bugs with the gpu turbo where you had to keep
the cpu unecessarily busy to get the highest gpu frequencies. Which
meant that optimizations in the userspace driver to be more cpu
efficient actually reduced performance. Essentially the gpu wasn't
ramping up because the cpu was slow in delivering new work and the cpu
wasn't ramping up becasue the gpu was slow in processing it and so
resulted in stalls. Keeping one of them artificially busy helped ;-)

Now we do ramp the gpu freq manually in the driver and help out the
cpu side by using io_schedule waits instead of normal ones.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
