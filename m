Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BE6828B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 17:42:11 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6683919A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 17:42:11 +0000 (UTC)
Date: Fri, 21 Aug 2015 10:41:50 -0700
From: Mark Brown <broonie@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20150821174150.GL12027@sirena.org.uk>
References: <2111196.TG1k3f53YQ@avalon>
	<CAKdAkRQLGRqMT-CJz6FemPqyo78wFrM6Kc=pR_BKxqLZqEzjQA@mail.gmail.com>
	<alpine.DEB.2.10.1508210805500.2566@hadrien>
	<20150821161409.GA26302@localhost>
	<20150821165852.GH12027@sirena.org.uk>
	<CAKdAkRRrqCNojwBHQ809APetuC-u1XqwViRVp5fBB2tO+naQ_g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Tc49Tft5g1TIuAea"
Content-Disposition: inline
In-Reply-To: <CAKdAkRRrqCNojwBHQ809APetuC-u1XqwViRVp5fBB2tO+naQ_g@mail.gmail.com>
Cc: Tejun Heo <tj@kernel.org>, Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuah.kh@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Tc49Tft5g1TIuAea
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 21, 2015 at 10:30:17AM -0700, Dmitry Torokhov wrote:
> On Fri, Aug 21, 2015 at 9:58 AM, Mark Brown <broonie@kernel.org> wrote:

> > For most of those there's no issue with devm - we're just releasing a
> > reference that allows us to control the device, not doing anything that
> > affects the state of the device.  We don't have managed functions for
> > the state changing operations.

> That is true (at least for now), but there is a demand for adding
> them. In the meantime they are quite often invoked via a custom devm
> action.

At least for regulator I'm seeing very occasional requests for this but
they're really not very strong.

> They are also often wrapped into other objects. For example input
> device might turn off regulators/clocks in it's close() method, which
> is called as part of input_unregister_device(). If input device is
> managed then that state change happens "some time later".

Right, but my understanding is that the integration with devm with the
object reference counting was intended to do the right thing.

--Tc49Tft5g1TIuAea
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJV12LaAAoJECTWi3JdVIfQEgoH/2+dE1PPrwDrAs7I8f1x8nKD
eVtsPuPI4WxJyD1VDpfw4+Xk7xiATjrRApKiVQndM6pyee7Y1dy9k+dJd4tAQxhW
WaAiu4CGhY8ddWIRBg966nOZ3qkQsHiX4h7y91DR34Zz+Nqj7idGXlRn8kcXGmvt
RQPeSztqFOm3mMN6IZeo8U0dEZS4JeAMNA3XuVqQVJkrSFFPY0CFSslYmAteYA3U
KVkNzxK3S+pBjcAxji5OtLxhs1g6kpoWdPqSNl5mtFPQNC0OfSZ08TtZZWgUBUAs
Ln0Oy5/BWupEdiv2Ui0MU5/6QJHuqhjWcpfJJDd5aG1CLjwSqi+9Nh+qYR8+qAA=
=gyKJ
-----END PGP SIGNATURE-----

--Tc49Tft5g1TIuAea--
