Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1397FBC8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:01:30 +0000 (UTC)
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0A35FEA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:01:28 +0000 (UTC)
Received: by oiyy130 with SMTP id y130so236911401oiy.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 03:01:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <7hlheo9b7m.fsf@deeprootsystems.com>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<53223375.qzkvIEse3r@vostro.rjw.lan>
	<2FABAEF0D3DCAF4F9C9628D6E2F968454F18BA5A@BGSMSX102.gar.corp.intel.com>
	<6142539.s1gh8ubrRK@vostro.rjw.lan>
	<7hlheo9b7m.fsf@deeprootsystems.com>
Date: Sun, 12 Jul 2015 12:01:27 +0200
Message-ID: <CAKMK7uHH=YdktPHMWoo21YEHP8jB_A-369GpYU5syi-a0idPaw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset=UTF-8
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

On Fri, Jul 10, 2015 at 7:25 PM, Kevin Hilman <khilman@kernel.org> wrote:
> "Rafael J. Wysocki" <rjw@rjwysocki.net> writes:
>
>> On Monday, July 06, 2015 01:49:45 PM Iyer, Sundar wrote:
>
> [...]
>
>>> Is a "single setting somewhere" even appropriate? It is actually the intelligence
>>> needed vs executing the actions?
>>
>> For one example, the default for most of the device/.../power/control files in
>> sysfs is "on" (meaning no runtime PM) while it might be "auto" (use runtime PM
>> if you can).  Making that change for everybody in one go may lead to various
>> issues (that may be regarded as regressions then), but if we made it configurable,
>> people might choose to make that change for themselves if they wanted to.
>
> I'd be very supportive of some default knob (or cmdline option) to favor
> energy efficiency.  For runtime PM, I suspect the resulting performance
> regressions are mostly (relatively) simple fixes, like enabling
> autosuspend, etc.
>
> Also, having a system-wide way to enable this mode would also enable us
> to find/report these bugs/regressions in a way that would be easily
> repeatable.  With the current pile of knobs/tunables, it's often very
> hard to reproduce problems others may be seeing.

My approach in drm/i915 is that there's just one default config and
that's the well-tuned one. Maybe gfx is special, but with todays
power-envelope constrained chips it's not a question of performance
_or_ power efficiency, but always _and_: Enabling power saving
features improves performance. And where it doesn't we just fix those
problems with smarter code (since usually the performance regressions
happen when you ping-pong too badly between different levels, or are
stuck for too long in a given power saving level). The other reason
for that approach is that gfx is complex and we just can't test
arbitrary combinations of options - hence we auto-taint the kernel if
users touch anything at all.

The downside is that you'll get more bug reports and can't hide from
them easily ;-)

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
