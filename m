Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD2EA409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 10:58:22 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 642ED165
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 10:58:22 +0000 (UTC)
Date: Sat, 1 Aug 2015 11:57:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20150801105743.GQ20873@sirena.org.uk>
References: <alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org>
	<1438362159.2179.42.camel@HansenPartnership.com>
	<20150731170523.GF5613@dtor-ws>
	<1438362797.2179.45.camel@HansenPartnership.com>
	<20150731173335.GI5613@dtor-ws>
	<1438364188.2179.53.camel@HansenPartnership.com>
	<20150731182815.GK5613@dtor-ws>
	<1438368039.2179.62.camel@HansenPartnership.com>
	<20150731194124.GL5613@dtor-ws>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ubuMVesmirrCclZT"
Content-Disposition: inline
In-Reply-To: <20150731194124.GL5613@dtor-ws>
Cc: Christoph Hellwig <hch@infradead.org>,
	Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuah.kh@samsung.com>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Tejun Heo <tj@kernel.org>
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


--ubuMVesmirrCclZT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 31, 2015 at 12:41:24PM -0700, Dmitry Torokhov wrote:
> On Fri, Jul 31, 2015 at 11:40:39AM -0700, James Bottomley wrote:

> > Russell says, this looks to be an orthogonal problem to devm_kzalloc.

> Yes, it is except that devm_* is magical and people expect it to somehow
> release resources only at the right time.

Or alternatively it's a really easy to use pattern that eliminates a
large set of potential mistakes and it's therefore worth looking at when
considering how to solve other simlar problems :)

--ubuMVesmirrCclZT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVvKYmAAoJECTWi3JdVIfQOV4H/0aBhekV2DN8ru8oWwQVSO6m
Ckxk30G3WUgFQ9dAPYD9xklmm/mgvpssUmFH7s5L6KxTuKm48Mwg9tjPh0fpner/
LnVkZn/zqVo7fpEFV+Q4qcxQOQF4wXPjMz+mazfbDPoYiVZHXq4drOT2glrzAXdl
LTB9TMDzn+Vyyv5ZMfScQ1kONrwlle2tOXhjkfhgjHLxDps1mDoW/qUsVGCkqn86
TAn96WAsiwK6CkLHVt1kM6oWw7FWlqFnlDN+QdsqkY8jGBKzL+163pGkUrIDhuUR
7vbX67a5lQHIAb6BWWveYPnt8mQBLf7cEFduDZjAEe+zvuGmtYizJ8S/5ZBvRz8=
=cDm0
-----END PGP SIGNATURE-----

--ubuMVesmirrCclZT--
