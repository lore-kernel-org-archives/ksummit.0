Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 56E7A955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 17:26:50 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A3A06240
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 17:26:49 +0000 (UTC)
Date: Wed, 27 Jul 2016 18:26:36 +0100
From: Mark Brown <broonie@kernel.org>
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20160727172636.GM11806@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Jtds+vpI57xq70EV"
Content-Disposition: inline
In-Reply-To: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
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


--Jtds+vpI57xq70EV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 27, 2016 at 09:50:04AM -0700, Luis R. Rodriguez wrote:

> Rafael has proposed has a set of patches to help deal with functional
> dependencies between devices to help with power management. Mauro has

This wasn't purely for PM, it should also help with probe ordering
(hopefully).

> spoken briefly before over the media controller feature graph used to help
> build relationship between complex dynamic dependencies. Dmitry has taken on

> to help enable asynchronous probe, however for built-in devices this requires
> very specific platform knowledge otherwise using async probe will blow up
> your kernel -- if you get it right though, using async probe can help with

I'm not sure what specific platform knowledge you're thinking of here?
We have coverage for most things in the form of deferred probe (messy
though it is).

> This begs a few questions:

>  o Are there generic issues here ?
>  o Are there generic solutions possible ?
>  o What advanced techniques are out there to deal with this and how
>    are efforts in those domains going ?

There's definitely a lot of overlap in the runtime PM and probe parts of
things, and the various composite devices (media controller, ASoC and so
on) also share a lot.

> Folks required to help with these topics:

>   o Dmitry Torokhov <dmitry.torokhov@gmail.com> (async probe)
>   o "Rafael J. Wysocki" <rafael.j.wysocki@intel.com> (functional dependencies)
>   o Marek Szyprowski <m.szyprowski@samsung.com> (taking on some of
> Rafael's previous work)
>   o Mauro Carvalho Chehab <mchehab@osg.samsung.com> (feature graph)
>   o Vegard Nossum <vegard.nossum@gmail.com> (SAT)
>   o Valentin Rothberg <valentinrothberg@gmail.com>  (wary of some
> kconfig issues)

Probably worth me being involved as well, regulators seem to be among
the devices with most visible PM related ordering issues since they are
typically on slow buses and ASoC is all about composite devices.

--Jtds+vpI57xq70EV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXmO7LAAoJECTWi3JdVIfQaZ4H/0RPZYyXefnFX0a8zXVlKG+t
EO1Uj2HPYsejeEDWwH1uxrx0LkWWmvOc1uudxb0N8f0Z/K2B0QpPlEvo0CkNcff+
+SB40NMlf7Boj9AeJf3Dl/OMqGKFsJzIHKkhzGRwgLsgwDb9q1BVaZ+MUGUUwaDV
YIbyqXp7UuOdlBVzBPf3dtyoCzsYnVTqPpZA25r7sg1oaQS1wCa5MBFBlHDcgg8U
Swn0BMQKmXXbX6IZ8iLw+Pt3ytkQ9ql0hM/jOtD2SmlkPMUo1k520irFqaenmAvY
T8NZX5kU5Wd5Ir8nUsKzSWRDDIL2eo5Q/S7OMi1va3VeME+/B/MoTwpEKvuK6mM=
=Qmuh
-----END PGP SIGNATURE-----

--Jtds+vpI57xq70EV--
