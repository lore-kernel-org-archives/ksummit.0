Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 85303BAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:38:40 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 07900185
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:38:39 +0000 (UTC)
Date: Tue, 14 Jul 2015 16:38:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Fengguang Wu <fengguang.wu@intel.com>
Message-ID: <20150714153831.GZ11162@sirena.org.uk>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<CAMuHMdX6KcmZhibEC6hn2VN7veMSbbj1+P3kf=udY39fjdjj5w@mail.gmail.com>
	<20150708075409.GJ4341@mwanda>
	<20150708095207.GN11162@sirena.org.uk>
	<20150712111547.GB24634@wfg-t540p.sh.intel.com>
	<20150713183441.GJ11162@sirena.org.uk>
	<20150714142241.GB24191@wfg-t540p.sh.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8PwxOTgimcLqatFW"
Content-Disposition: inline
In-Reply-To: <20150714142241.GB24191@wfg-t540p.sh.intel.com>
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	Tyler Baker <tyler.baker@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--8PwxOTgimcLqatFW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 14, 2015 at 10:22:41PM +0800, Fengguang Wu wrote:
> On Mon, Jul 13, 2015 at 07:34:41PM +0100, Mark Brown wrote:

> > Latency seems like it might be an issue here, when I say I'm not seeing
> > things that's issues coming up in the -next build before they're
> > reported by 0day so they might well get fixed before 0day catches up.

> Ah linux-next happen to have lower priority and can take many hours to
> finish. I'll increase its priority due to its importance.

This was actually things in my trees that get merged into -next (or
which Stephen tries to merge into -next and finds problems with) prior
to being reported by 0day.

> > For me personally it'd be more interesting to be able to get them on
> > demand (eg, from a web page) than e-mailed, or e-mailed by a human
> > (possibly with fixes!).  The kernelci.org reporting does a lot of this
> > but doesn't cover anything except raw compiler warnings.

> It should be mostly equivalent if you direct such emails to a local
> mbox and check it on demand. :)

Well, they don't go away automatically when fixed then...

--8PwxOTgimcLqatFW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVpSz2AAoJECTWi3JdVIfQ3yYH/jrF1V7lNxFPZP2WHYN1mdna
jARyJP0NMlNCpgtUzVs75nfIgj5KYtOjYcCjE/gCXmMu0SMC2z7U8KpD9xjQcWQj
6skxXuz9ldI/fIRhsdxjsOj7Z6HCxkin9UxuveAACH6buPQAVA/4g0MUZvcUuEsI
MbW6QG/r2969vNz67uGCeGpnHnOd2XIUJICXMkABvDd40AUsMQ8QlH/o2Ph/0QeK
Kgk1Y6Ex9hBufl6oBrgRfCKudvUUJ2CPAky5Bi4oWkNC3Ab/hEYtnB9N85GEUdKi
GXdfS64txkOyLk4rU+Bv7NDAoWBaVMu5ok09dj8gkE58HYPkjIwDDs4qCEXT9N8=
=wMhM
-----END PGP SIGNATURE-----

--8PwxOTgimcLqatFW--
