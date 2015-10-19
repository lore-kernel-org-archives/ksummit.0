Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3DA2797
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 13:54:01 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5ADA4E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 13:53:59 +0000 (UTC)
Date: Mon, 19 Oct 2015 14:53:48 +0100
From: Mark Brown <broonie@kernel.og>
To: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Message-ID: <20151019135348.GH14956@sirena.org.uk>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="H6VDMcGxLLsLVW3N"
Content-Disposition: inline
In-Reply-To: <20151019103304.27e596a5@recife.lan>
Cc: Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--H6VDMcGxLLsLVW3N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 19, 2015 at 10:33:04AM -0200, Mauro Carvalho Chehab wrote:

> We did a Media Controller Summit in July. During the summit, it was
> pointed that other subsystems like IIO (Linux Industrial I/O) have
> similar needs and also need to track complex pipelines.=20

> The goal of this tech topic is to present the MC next generation
> concepts and how the patches to support MC was written, showing some
> pipeline examples.=20

> The next gen support patches were written in August, with some=20
> additional patches written after that, and it has support for DVB
> and for one ALSA driver (snd-usb-audio).

> The patches are not merged yet at the media development tree and
> at -next, as one of the core developers of the media controller
> is missing time to review patches. So, while it was originally
> targeted to be merged on Kernel 4.4, it is likely that this will be=20
> merged only for Kernel 4.5, in order to give him more time to
> review the patchset.

One fun thing on this that came up at the audio meeting we had in Dublin
after ELC-E is that there is some desire to export the internal topology
of audio devices to userspace using the same format that we're using to=20
load topology information for DSP firmwares (see include/sound/soc-topoloy.=
h).
If we go ahead with that it'd create an alternative topology ABI, it
seems like we should at least consider if it's worth trying to share
things here.

I've not had a chance to look at the new media controller work yet, I've
CCed Lars and Liam who have more knowledge in this area.  Unfortunately
I don't think any of the people working directly on this will be at KS
this year.

--H6VDMcGxLLsLVW3N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWJPXrAAoJECTWi3JdVIfQzKsH/jWkpWnxdYJdZhrQS9kCxQDi
wzjPfATTOdIs2UQjmWGJqp4RDqx5l2yaNcgImonIpxMJ/mtoFCsUYyY51njDXjXk
ReZ68x+jaRThPaZiWLLwVlJib9Rtf6tUEXBZBJbSFVLY29VBhRgMI0Lu0SH8AY9g
3xhAnlxClalRCeVWBn1YeMgBfLCuwaRYqvOsGZV6qolQX/ScdefBQ0W6XVJSOAgb
suttu3/F53bJ5x4dVFQ+s+OPpgR3FpJXDk56A//JCyAUQ0S2Q3OLV2Uw82ibZI6a
2k1jIOquAp51sILr58INUNKiybap3vXefl/Fmkpe2eGe+e0OZY1jy1jza35VY+M=
=igK6
-----END PGP SIGNATURE-----

--H6VDMcGxLLsLVW3N--
