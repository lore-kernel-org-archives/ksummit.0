Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30DF68CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 17:06:04 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AC02C20324
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 17:06:03 +0000 (UTC)
Date: Tue, 12 Aug 2014 17:49:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Grant Likely <grant.likely@secretlab.ca>
Message-ID: <20140812164922.GS17528@sirena.org.uk>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<53EA3DA0.2070407@roeck-us.net>
	<CACxGe6vYNjEAZT6YhB5WNyh40urSEVRbmVaWjEt6nQNUbgMbPw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="dWMXAF89RIylgdWI"
Content-Disposition: inline
In-Reply-To: <CACxGe6vYNjEAZT6YhB5WNyh40urSEVRbmVaWjEt6nQNUbgMbPw@mail.gmail.com>
Cc: shuah.kh@samsung.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--dWMXAF89RIylgdWI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 12, 2014 at 05:23:28PM +0100, Grant Likely wrote:
> On Tue, Aug 12, 2014 at 5:15 PM, Guenter Roeck <linux@roeck-us.net> wrote:

> > Do you have that public yet ? I might want to use that for my -stable sanity
> > tests.

> Nothing yet. It's currently hacked into my build environment script.
> I'm working on getting it into a form usable by others. Ideally I
> think it should go into the kernel tools/testing directory.

While we're working on things like this it's probably worth getting the
scripts Kevin, Olof and I use for build and boot test reporting (I only
run them, I've not contributed anything) or something like them into
scripts/ - they're pretty good and having a common format makes things
easier when looking at multiple reports.

--dWMXAF89RIylgdWI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJT6kWPAAoJELSic+t+oim9zzAP/0A9/w2tWeOJnGaCxlxqvpFx
UbRj9sk2NbwPxGu6eY2GGqJjdXyRvRWU6D7gyZlZORVxHrhHAzwWEN+toCgH3Lc5
S1obzAXccIKmolUPFE1A4Ik4e5dsWz12B1AuJlw6KtaKQkyvlVw65jPYafEl9K7o
gyvnLNd/LM81EVehkUOx/vQ2K4eGACOZLJxOha3vd8xIxFxe9Lleqr4VQzq7oQYz
8cBSGAj9vvBLCjzFtJ6xoWh8+DRBwiMv5mnqmer+7ApdfUJdqddFjU2WyQsAkADC
OJ5WIDP+qMu4r1cMILRTjQck620iZxXQthn9BMFZDAWec62a8+Vv85aNWORzkp5L
Cbjd7NFVEcF42kzMc74qTAKOQMUYBIpFxqsOlm80FBfjHxzEB65M+Kx8DALkszIZ
yaQWDi/dvNF5E+14IiMFjkNjbftZ1iV7arlPJfmQq77WWxrt1jBhigFcn3SQCzqE
z3BNMpDFWuCEqYLtgDGu59xJVj5rFpaVVxekspjmMUqkpqnkQbn0ku3pMAekJsNv
aEDQM3HJlKF/KfFrhaIGHl9lA+mvTzmuKVUNAgMk3ShOFukV2rrJrnN5zH0DWC0x
UWCLtn3mueVGnwnfcsjlXPT7l2Nt3ccygRbJ3TonedxwcuPFzoJQ19anLHMHqch/
Hu+5EtdMuXevndtk7LyO
=8cUl
-----END PGP SIGNATURE-----

--dWMXAF89RIylgdWI--
