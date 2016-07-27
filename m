Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DCFFC954
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 17:58:33 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C09ED1D8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 17:58:32 +0000 (UTC)
Date: Wed, 27 Jul 2016 19:58:29 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160727175829.GG5537@wotan.suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160727172636.GM11806@sirena.org.uk>
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

On Wed, Jul 27, 2016 at 06:26:36PM +0100, Mark Brown wrote:
> > to help enable asynchronous probe, however for built-in devices this requires
> > very specific platform knowledge otherwise using async probe will blow up
> > your kernel -- if you get it right though, using async probe can help with
> 
> I'm not sure what specific platform knowledge you're thinking of here?
> We have coverage for most things in the form of deferred probe (messy
> though it is).

Deferred probe is a complete a hack and sub-optimal. Being able to address
ordering properly without much overhead would optimize this, to do this
properly though you really need to do a bit of kernel work, so in practice a
bit of delta carried. For instance, if using built-in you'd hope that all
your device ordering is already handled through the current set of init
levels of the kernel. As the kernel boots the later in boot gets the larger
the series of dependencies we can have and as such we end up running either
out of semantics for this, or knowing to to ensure proper link order is
in place. Some of this work is implicit, some explicit -- it depends on
the toolbox we use. The goal here is to evaluate the toolbox, if we should
grow it, and if so how.

> Probably worth me being involved as well, regulators seem to be among
> the devices with most visible PM related ordering issues since they are
> typically on slow buses and ASoC is all about composite devices.

Good to know thanks.

  Luis
