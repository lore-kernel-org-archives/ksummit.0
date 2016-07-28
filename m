Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1AAC58D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 19:46:48 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4EB6215
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 19:46:47 +0000 (UTC)
Date: Thu, 28 Jul 2016 20:46:32 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <20160728194632.GM11806@sirena.org.uk>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<2331474.UchXKu7jRM@avalon> <579A54A6.5060303@metafoo.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UdiMmEj9EzJj2jSc"
Content-Disposition: inline
In-Reply-To: <579A54A6.5060303@metafoo.de>
Cc: Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Sensors and similar - subsystem
 interactions, divisions, bindings etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--UdiMmEj9EzJj2jSc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 28, 2016 at 08:53:26PM +0200, Lars-Peter Clausen wrote:

> But our kernel frameworks are designed around application specific tasks.

> * ALSA is for audio data capture/playback
> * V4L2 is for video data capture/playback
> * DRM is for video display
> * IIO is for sensor data capture/playback

Plus as we were discussing elsewhere hwmon, power_supply, input and
probably others that aren't springing to mind right now that also
represent sensor values out to userspace.

> And this is not just hypothetical I've seen questions how to make this
> work repeatedly. And I also expect that in a time constraint environment
> people will go ahead with a custom solution where they capture audio
> data through V4L2 and just ignore all data type hints V4L2 provides and
> re-interprets the data since their specialized application knows what
> the data layout looks like.

I've also seen cases (indeed I've got one myself right now) where the
opposite case applies and it's a lot easier to put a chip into a
hardware class it wasn't really designed for because the userspace
interfaces we offer are much more appropriate for that application.  In
that case it's a chip that really wants to be hwmon but libiio is
*really* nice.

> So going forward we might have to address this by creating a more
> generic interface that allows us to exchange data between a peripheral
> and a application without assigning any kind of meaning to the data
> itself. And then have that meaning provided through side channels. E.g.
> a V4L2 device could say this over there is my data capture device and
> the data layout is the following. Similar for the other frameworks that
> allow capture/playback.

Those side channels are the most tricky bit I fear.

> This of course would be a very grand task and maybe we'll loose
> ourselves in endless discussions about the details and all the corner
> cases that need to be considered. But if we want to find a solution that
> keeps up with the current trend that the hardware landscape seems to be
> going in we might have no other choice. Otherwise I'd say it is
> inevitable that we see more and more hardware which has multiple
> drivers, each driver handling a different type of application.

It's a worthwhile goal to bring things together.  I wonder how hard
it'd be to get ALSA to interact with the v4l buffer style...

--UdiMmEj9EzJj2jSc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXmmEXAAoJECTWi3JdVIfQdt8IAICeGbWFu4i/rTjJkCiZ7hpa
n21k1tsMsf32u8RvkTkrilyWKvdwfShUBG4ycXk2OEdm+mhTKWG/nLFALHU73p1b
abnSXA09AqOYlaPT3/hRUWY0+4+KZx5Nlxx8u2QUqoZRCz1dNkH55zkgjQbgfqPy
aIKAdIj9O9g22i7JeQx+yAThUCv6eJTXvZApfHmXbJKfRd3O+qLVnoY0L5Rf52zN
gm+NGhS2Sq55BmtfocNclZtt8QBbg/LjIFxDN3eUa/adMUVMEK6NVGOu+vM/ZD6y
gXP/dJDzD9ob0VOBMIj5sR948wrl740XuYqFx+pFwa1ED7mO6DBbZpcWyPYa6OI=
=4Id6
-----END PGP SIGNATURE-----

--UdiMmEj9EzJj2jSc--
