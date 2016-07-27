Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E72C7952
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 19:20:44 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E46414F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 19:20:44 +0000 (UTC)
Date: Wed, 27 Jul 2016 21:20:40 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160727192040.GL5537@wotan.suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de>
	<20160727180346.GP11806@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160727180346.GP11806@sirena.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
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

On Wed, Jul 27, 2016 at 07:03:46PM +0100, Mark Brown wrote:
> On Wed, Jul 27, 2016 at 07:58:29PM +0200, Luis R. Rodriguez wrote:
> > On Wed, Jul 27, 2016 at 06:26:36PM +0100, Mark Brown wrote:
> > > > to help enable asynchronous probe, however for built-in devices this requires
> > > > very specific platform knowledge otherwise using async probe will blow up
> > > > your kernel -- if you get it right though, using async probe can help with
> 
> > > I'm not sure what specific platform knowledge you're thinking of here?
> > > We have coverage for most things in the form of deferred probe (messy
> > > though it is).
> 
> > Deferred probe is a complete a hack and sub-optimal. Being able to address
> 
> Sure, I don't think anyone disagrees on that but it does mean we don't
> actually blow up easily like we used to - it's messy but it does get
> there safely.

Good point, without learning from the past we would otherwise expect
this is just a sloppy situation, so indeed deferred probe had its
merits, and we're at least now safe. The goal here is then how to
do this better, optimized and make it a non-hack.

> I was specifically querying your statement that things would blow up.

In practice this varies as it depends on the device driver or component,
but the general theme seems to be "relying on something which is not
yet available".

  Luis
