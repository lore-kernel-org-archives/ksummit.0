Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 51281BB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:34:55 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D07401AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:34:54 +0000 (UTC)
Date: Mon, 13 Jul 2015 19:34:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Fengguang Wu <fengguang.wu@intel.com>
Message-ID: <20150713183441.GJ11162@sirena.org.uk>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<CAMuHMdX6KcmZhibEC6hn2VN7veMSbbj1+P3kf=udY39fjdjj5w@mail.gmail.com>
	<20150708075409.GJ4341@mwanda>
	<20150708095207.GN11162@sirena.org.uk>
	<20150712111547.GB24634@wfg-t540p.sh.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TaVmUy7e9TYb82al"
Content-Disposition: inline
In-Reply-To: <20150712111547.GB24634@wfg-t540p.sh.intel.com>
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


--TaVmUy7e9TYb82al
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jul 12, 2015 at 07:15:47PM +0800, Fengguang Wu wrote:

> If 0day failed to catch the error, it might be due to

> - regressions in 0day itself -- it's still in active development,
>   in the past year I did 1k patches to 0day build/boot scripts and
>   2k patches to the follow up LKP (Linux Kernel Performance) tests.

> - the "report once" logic, it's tricky and can possibly hide issues

> - failed bisect, rare but possible

I think some of the issues have been due to bisection getting confused
by issues appearing in merge commits but ICBW.

> - machine hang, network/disk fails, etc. maintenance incidents

> "Loading" may add latency, however it's not the cause to miss errors.

Latency seems like it might be an issue here, when I say I'm not seeing
things that's issues coming up in the -next build before they're
reported by 0day so they might well get fixed before 0day catches up.

> > > Are people ignoring them?

> > They're not reliably followed through on, no, and one of the things with
> > 0day is that it just generates a one time report so if things don't get
> > followed up on then that's that.  A regular "these are all the issues"
> > mail helps chase down those issues.

> 0day has such report type. It will be sent after each git push (unless
> you push too quickly) and it looks like this. Just drop me a note and
> list the git trees/branches you wish to receive such notice emails.

For me personally it'd be more interesting to be able to get them on
demand (eg, from a web page) than e-mailed, or e-mailed by a human
(possibly with fixes!).  The kernelci.org reporting does a lot of this
but doesn't cover anything except raw compiler warnings.

--TaVmUy7e9TYb82al
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVpATAAAoJECTWi3JdVIfQXeIH/j7FRfUdQnfT+d1981onc5+u
RCAh4XHoM74Lt9wEkmlLUaJtlQB7w6jKgPfCMj+5r6FcBAE6MyNmjK7thTHjpCm5
I3zoLGlbdleH2++XfnCINUX/wVd7GsF2XceDCOuagMj/tcbAlqiV9qo9BAJ59yuV
urFhuU2d5bzKunziTjMDFpJdt4mLfEJOyk+75vxk/Ee3pbJ7F0wiGFAVNe81jwQS
GdxPE9VvYcThxliIC0jRzmqQ4mzlDzQaS82VFrg1vtfxJVrg+MiRMlV5RbEjzi7F
AyIdf3KWJkR09gDd7zLOlvQDie3/+irIUbTkluOC9MDFxAVu7TwDL4VPk+WtWl8=
=K8Hh
-----END PGP SIGNATURE-----

--TaVmUy7e9TYb82al--
