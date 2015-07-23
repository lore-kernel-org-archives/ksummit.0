Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 25322475
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 15:40:27 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AC6BD2AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 15:40:26 +0000 (UTC)
Date: Thu, 23 Jul 2015 16:40:14 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150723154014.GD11162@sirena.org.uk>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hN8Iq+wt62fgbJcp"
Content-Disposition: inline
In-Reply-To: <20150723084251.54da2be0@gandalf.local.home>
Cc: Bjorn Andersson <Bjorn.Andersson@sonymobile.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	riverful.kim@samsung.com, kyungmin.park@samsung.com,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--hN8Iq+wt62fgbJcp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 23, 2015 at 08:42:51AM -0400, Steven Rostedt wrote:

> Although is this something to be a core topic or a tech topic? Does
> this affect all subsystems, or just a set of drivers? Note, a core
> topic wont get as much time for discussion as a tech topic would.

It's basically all subsystems that get impacted, at the minute I'd say
it's more a plan of action and process discussion than a technical one
though in the context of KS planning that's quite probably the same
thing.

> Also, what is expected to be solved at KS?

Tim Bird (Cced) has been running some sessions at other conferences
scoping the problem and discussing ways to move forward on this, another
similar session might be useful.

--hN8Iq+wt62fgbJcp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVsQrdAAoJECTWi3JdVIfQNBYH/iW5eDjdOXOwweCXV7apTcHd
94FVVtyV8lkrrNd8/gzR+59TBj74ddKZTaWWcmXOLFDNocZlsqMcGlLdDH4lvs2r
sIETSRj/MA2Rdg1rBNd7ygqOorO7SDtR+O5KLu9u3DZO63QirdY+dWoEyKeWz3nk
iQ2wPlqW2nHzCr5bghTrPWF/rcOFYUs4ViqidKLj0F2oMFInP1QLDQZAo/3vw+OZ
RscHD2zBQ5PfdHCGcXjSjMGmhfDa7aoWYgcjH0bwFRP1ApCpuvP6O7HzcewZXj0e
+ezfcVp74o4HaTIpOZT+75RTB1NsosG9sXeSFFKuZaoVLTxz/dRfDHxowT2FpYg=
=hg/6
-----END PGP SIGNATURE-----

--hN8Iq+wt62fgbJcp--
