Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E1F2F4A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Apr 2017 12:45:59 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39A018D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Apr 2017 12:45:59 +0000 (UTC)
Date: Sun, 30 Apr 2017 21:45:46 +0900
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20170430124546.el3zeo43ivxf6j6o@sirena.org.uk>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
	<CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
	<CAKMK7uHNDT4UBKCDH=RJs90+FW53nB0nQ2Ggc6p=T9QFU=kLPA@mail.gmail.com>
	<CACRpkdb5HVcr6aSJwc2cyFVx435ycWCvEeVrs3OEjvrCK54jTg@mail.gmail.com>
	<20170425091058.qhxkpocnhhd4jysh@dell>
	<CAKMK7uFOq-7_3x601kc5BN0o-eZ5RMujrVb=Qs3ye+XWwKiq7w@mail.gmail.com>
	<1493501971.2367.23.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iaenepepgl6bi3c5"
Content-Disposition: inline
In-Reply-To: <1493501971.2367.23.camel@HansenPartnership.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>, Ingo Molnar <mingo@kernel.org>,
	Doug Ledford <dledford@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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


--iaenepepgl6bi3c5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 29, 2017 at 02:39:31PM -0700, James Bottomley wrote:
> On Sat, 2017-04-29 at 23:00 +0200, Daniel Vetter wrote:
> > On Tue, Apr 25, 2017 at 11:10 AM, Lee Jones <lee.jones@linaro.org>

> > > Although common place, immutable branches are still treated as the
> > > last resort.  If patches can be taken via their respective=20
> > > subsystem trees without fear of disruption, they are.  Contributors=
=20
> > > often attempt to have their *new* cross-subsystem functionality=20
> > > taken in via a single tree (requiring an immutable branch), purely=20
> > > because it's convenient and the merge-time becomes deterministic,=20
> > > but we do not allow that unless there are hard/unavoidable build
> > > -time dependencies.

> > Honest question, why exactly?

[Snip a bunch of good reasons from James]

> > At a quick ignorant glance this seems to trade contributor time
> > against maintainer time, which in my opinion means you should ramp up
> > your maintainer training and mentoring to have much more maintainer
> > time available and make contributing to upstream more attractive. But
> > drm !=3D other subsystems, I'd like to hear more of why you picked this
> > tradeoff.

> It's not just maintainer time ... taking patches outside your subsystem
> should always have a good reason because it's not just a
> training/tooling issue; you're potentially impacting some other
> subsystem by this action.

The other thing is that no matter how good the maintainers are at
handling cross tree stuff there's always going to be some cost to the
submitter even if it's just delays as the maintainers talk to each
other.  The less coordination is needed the more chance there is that
things will go smoothly.

--iaenepepgl6bi3c5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlkF3HoACgkQJNaLcl1U
h9AeRQf/YLpPMX3FLzpFy5iQWGaNUilci1IfmPjGjnnC9UWM7K71jczG274Q2FIu
473fBKoGI6lsjsR2QjcF/NMuc2gYJe55FNRfzhTyXp8/4sbUHfC8U5n2F6hXt3By
3yK7X1B7Cq1XB9QG58mPH6uri1p532MxuIn87KgFLq4RfNHNJ9pZDoI3FwEVmnls
wijvs9hWg/+0TrOEW3UnCwTVJb+41/6L1/FcXMWepplbdANsol9Dkry0jfdP79Ie
+/Kimaes150MHtWfp/V4SQ1XuYtOIXbpXnrzwwlclDofggxdaGEkvNB0WMpAu0U+
UukM+k+PjbL1fXJGUjEN7mHiH8f8PA==
=oqnZ
-----END PGP SIGNATURE-----

--iaenepepgl6bi3c5--
