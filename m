Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 72D0C892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 18:18:52 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 171A512C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 18:18:52 +0000 (UTC)
Date: Fri, 21 Aug 2015 11:18:33 -0700
From: Mark Brown <broonie@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20150821181833.GN12027@sirena.org.uk>
References: <2111196.TG1k3f53YQ@avalon>
	<CAKdAkRQLGRqMT-CJz6FemPqyo78wFrM6Kc=pR_BKxqLZqEzjQA@mail.gmail.com>
	<alpine.DEB.2.10.1508210805500.2566@hadrien>
	<20150821161409.GA26302@localhost>
	<20150821165852.GH12027@sirena.org.uk>
	<CAKdAkRRrqCNojwBHQ809APetuC-u1XqwViRVp5fBB2tO+naQ_g@mail.gmail.com>
	<20150821174150.GL12027@sirena.org.uk>
	<20150821175231.GM12027@sirena.org.uk>
	<CAKdAkRSywrXnRdwVyn406qoN1hQbTkFCM34Xt4NaC-ZfZ64MQg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yyDlEBSQJ3H1meLT"
Content-Disposition: inline
In-Reply-To: <CAKdAkRSywrXnRdwVyn406qoN1hQbTkFCM34Xt4NaC-ZfZ64MQg@mail.gmail.com>
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
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


--yyDlEBSQJ3H1meLT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 21, 2015 at 11:05:19AM -0700, Dmitry Torokhov wrote:
> On Fri, Aug 21, 2015 at 10:52 AM, Mark Brown <broonie@kernel.org> wrote:

> > More specifically: the managed operations are guaranteed to be run in
> > reverse order so so long as the resources used by the managed input
> > device are also managed we're supposed to be fine.

> That only works if _all_ resources are managed. Here we have an
> example of non-managed operations (such as detaching device from a
> power domain) in the middle of managed ones. And so the ordering gets
> broken.

Right, we need to ensure that managed resources don't depend on
resources that aren't managed (either directly or indirectly by being
handled by some callback which is managed).

--yyDlEBSQJ3H1meLT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJV12t4AAoJECTWi3JdVIfQGmAH/18Q4u/mQ/ip7ZLDPqWAkz6Q
mbl3+uIu5EnSKaAuLVR1LZ1PV9JFE1sCJ7mH1NDWqyaEeYbVlMuIvA17CQHZvAdu
TFeQD3PZ/woV5FKpFcO5eJZek8gF/vNN/9OC1/sRVjavK9FmWCC0nRv01k2+UK0x
foA+tqbpPgRbiPX8quTdlmWPub6clqiSJS4LlWXVytBtsn/DWR7S619g5A4xWcYc
8K3OS6x1SFkhE6d1n/AHHZl5JmfskqkZtoEv1pZfxaRvdUHsT6+gGwNRJbUW9cDu
hD/8V0UIsvHwmjrQpRE1f2t4sMIP1GCVFsncsF3LCgv5BnL4HSbve46OwAT57jM=
=goz2
-----END PGP SIGNATURE-----

--yyDlEBSQJ3H1meLT--
