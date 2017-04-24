Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D7068C11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Apr 2017 17:58:49 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4067D1B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Apr 2017 17:58:49 +0000 (UTC)
Date: Mon, 24 Apr 2017 18:58:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20170424175838.ecpqinn725jtxeab@sirena.org.uk>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
	<CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
	<CAKMK7uHNDT4UBKCDH=RJs90+FW53nB0nQ2Ggc6p=T9QFU=kLPA@mail.gmail.com>
	<CACRpkdb5HVcr6aSJwc2cyFVx435ycWCvEeVrs3OEjvrCK54jTg@mail.gmail.com>
	<CAOesGMg8nU4+kaM_eMp_AGxzz=mEvLeqppYE8BFW3uLDZu=hmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f3grvxfnbipyimmn"
Content-Disposition: inline
In-Reply-To: <CAOesGMg8nU4+kaM_eMp_AGxzz=mEvLeqppYE8BFW3uLDZu=hmQ@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--f3grvxfnbipyimmn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 24, 2017 at 10:29:02AM -0700, Olof Johansson wrote:
> On Mon, Apr 24, 2017 at 9:17 AM, Linus Walleij <linus.walleij@linaro.org> wrote:

> > One thing he does is queue an immutable topic branch, announce it and
> > let all affected subsystems pull it in, so that we (e.g. GPIO) can then
> > refactor or apply local fixes in "our" subsystem from that point, even during
> > the development cycle. It is pretty neat.

> Yeah, Lee has been doing a good job there (even though we always
> double-check about immutable branches to make the producer aware that

Yeah, I do the same thing where that comes up (mainly for regulator and
sometimes regmap).  Seems to work pretty well.

> we've picked it up). The clk maintainers (Mike/Stephen) have been
> doing a good job too where they tend to apply patches on a per-driver
> branch that they keep immutable.

That's what I do as well.  It's especially helpful if you discover a
need to do a cross merge after things have been applied, it means that
you probably already have something fairly sensible to send to the other
maintainers involved and don't need to rebase things or duplicate
commits.  Before I started doing this those things were always painful,
now I just need to sign a tag.

--f3grvxfnbipyimmn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlj+PM4ACgkQJNaLcl1U
h9BiCAgAhRYMPaO3BkH+7FZs/y9zwb9JOPbYOJXkXnNQqBM5u3uUU0V0rRA0Z03B
4cQzJkf9jjsiIgyHgbOQoYunBCluuwiyd1YEEKV4WwYoZ4OqKudmRY6Wz89S6YEa
lMaNMdD/mdvo7Ja7qFEq8cV1PeU0Eu3PYC9/o5hKScdIxik5aWJvYvcsdn5EvAiH
WL1Y6PqcH4Njef7FeMfQH45ayFFLpCupKLaarhbD9X/7oeX/mSoPaQh9n1y9IRYr
aZeQsKysXi8P57sLiFnrumGXs7oaaehToPYja/9RgE2fQHDzHLCCe6l5X4WaeODy
qsN3+D+r4cgszGWHO8+mPz31EEvBAQ==
=8GpV
-----END PGP SIGNATURE-----

--f3grvxfnbipyimmn--
