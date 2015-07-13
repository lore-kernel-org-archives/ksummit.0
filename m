Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8B5FFABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 22:40:29 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id B74AAF1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 22:40:28 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 14 Jul 2015 01:07:04 +0200
Message-ID: <1455994.zAMIqEIJx2@vostro.rjw.lan>
In-Reply-To: <CAKMK7uHH=YdktPHMWoo21YEHP8jB_A-369GpYU5syi-a0idPaw@mail.gmail.com>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<7hlheo9b7m.fsf@deeprootsystems.com>
	<CAKMK7uHH=YdktPHMWoo21YEHP8jB_A-369GpYU5syi-a0idPaw@mail.gmail.com>
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

On Sunday, July 12, 2015 12:01:27 PM Daniel Vetter wrote:
> On Fri, Jul 10, 2015 at 7:25 PM, Kevin Hilman <khilman@kernel.org> wrote:
> > "Rafael J. Wysocki" <rjw@rjwysocki.net> writes:
> >
> >> On Monday, July 06, 2015 01:49:45 PM Iyer, Sundar wrote:
> >
> > [...]
> >
> >>> Is a "single setting somewhere" even appropriate? It is actually the intelligence
> >>> needed vs executing the actions?
> >>
> >> For one example, the default for most of the device/.../power/control files in
> >> sysfs is "on" (meaning no runtime PM) while it might be "auto" (use runtime PM
> >> if you can).  Making that change for everybody in one go may lead to various
> >> issues (that may be regarded as regressions then), but if we made it configurable,
> >> people might choose to make that change for themselves if they wanted to.
> >
> > I'd be very supportive of some default knob (or cmdline option) to favor
> > energy efficiency.  For runtime PM, I suspect the resulting performance
> > regressions are mostly (relatively) simple fixes, like enabling
> > autosuspend, etc.
> >
> > Also, having a system-wide way to enable this mode would also enable us
> > to find/report these bugs/regressions in a way that would be easily
> > repeatable.  With the current pile of knobs/tunables, it's often very
> > hard to reproduce problems others may be seeing.
> 
> My approach in drm/i915 is that there's just one default config and
> that's the well-tuned one. Maybe gfx is special, but with todays
> power-envelope constrained chips it's not a question of performance
> _or_ power efficiency, but always _and_: Enabling power saving
> features improves performance.

However, there are places in the kernel where there is a real tradeoff between
power and performance (or power and capacity in general) and there are places
that tend to keep conservative settings for fear of exposing latent bugs to
a wide community of users.

Those might benefit from allowing the users to relax the settings globally
if they want to.

Thanks,
Rafael
