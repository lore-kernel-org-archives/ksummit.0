Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 31268955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 00:49:53 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 7032D21D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 00:49:52 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Date: Thu, 28 Jul 2016 02:54:56 +0200
Message-ID: <10281749.h0nm8HgLR9@vostro.rjw.lan>
In-Reply-To: <20160727192040.GL5537@wotan.suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727180346.GP11806@sirena.org.uk>
	<20160727192040.GL5537@wotan.suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
	and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday, July 27, 2016 09:20:40 PM Luis R. Rodriguez wrote:
> On Wed, Jul 27, 2016 at 07:03:46PM +0100, Mark Brown wrote:
> > On Wed, Jul 27, 2016 at 07:58:29PM +0200, Luis R. Rodriguez wrote:
> > > On Wed, Jul 27, 2016 at 06:26:36PM +0100, Mark Brown wrote:
> > > > > to help enable asynchronous probe, however for built-in devices this requires
> > > > > very specific platform knowledge otherwise using async probe will blow up
> > > > > your kernel -- if you get it right though, using async probe can help with
> > 
> > > > I'm not sure what specific platform knowledge you're thinking of here?
> > > > We have coverage for most things in the form of deferred probe (messy
> > > > though it is).
> > 
> > > Deferred probe is a complete a hack and sub-optimal. Being able to address
> > 
> > Sure, I don't think anyone disagrees on that but it does mean we don't
> > actually blow up easily like we used to - it's messy but it does get
> > there safely.
> 
> Good point, without learning from the past we would otherwise expect
> this is just a sloppy situation, so indeed deferred probe had its
> merits, and we're at least now safe. The goal here is then how to
> do this better, optimized and make it a non-hack.

Well, my patchset uses deferred probing, so it won't help much here I guess.

> > I was specifically querying your statement that things would blow up.
> 
> In practice this varies as it depends on the device driver or component,
> but the general theme seems to be "relying on something which is not
> yet available".

Not only that.

There also is a "relying on something that is not a direct ancestor of the
device you care about" angle of that.

The device hierarchy as we know it is insufficient for representing dependencies
beyond parent-child and that really is part of the problem, and a significant
one IMO.

Thanks,
Rafael
