Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A3514D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 15:30:11 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C8D2018E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 15:30:09 +0000 (UTC)
Date: Tue, 20 Oct 2015 13:29:55 -0200
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20151020132955.4294915d@recife.lan>
In-Reply-To: <20151020131330.GY32054@sirena.org.uk>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
	<20151019173419.042d5e8b@recife.lan>
	<20151020131330.GY32054@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/U1GbyHwo/fJQHwjRJpaOWrj";
	protocol="application/pgp-signature"
Cc: Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Lars-Peter Clausen <lars@metafoo.de>, Mark Brown <broonie@kernel.og>,
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

--Sig_/U1GbyHwo/fJQHwjRJpaOWrj
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Em Tue, 20 Oct 2015 14:13:30 +0100
Mark Brown <broonie@kernel.org> escreveu:

> On Mon, Oct 19, 2015 at 05:34:19PM -0200, Mauro Carvalho Chehab wrote:
> > Liam Girdwood <liam.r.girdwood@linux.intel.com> escreveu:
>=20
> > > Having a simple mechanism for dumping topology data is important as we
> > > will need to be able to easily dump this data on Android and Chrome
> > > alongside regular Linux for development and debug purposes. i.e.
> > > cat /sys/some/dump/file > audio_topology
>=20
> > Well, it is not hard to get the topology using the media controller.
> > I wrote a testing program using it at:
> > 	http://git.linuxtv.org/cgit.cgi/mchehab/experimental-v4l-utils.git/tre=
e/contrib/test/mc_nextgen_test.c
>=20
> > The only library optional dependency is libudev, used to get the
> > device node names. The code falls back to use /sys/dev/char/ and
> > /dev to find the device names when compiled without libudev.
>=20
> > So, it should be easy to provide a cat-like program that would be
> > dumping the audio topology on some file.
>=20
> It's still a program that has to be built for and installed on the
> device under test which is the big bar for a lot of users (consider the
> case where an audio expert is doing system tuning on a device using a
> firmware image supplied from elsewhere, it may be difficult for them to
> build new programs for the image or request that they be included in the
> image).

Well, with such assumption, even having a debug option would be
a problem, as the firmware image may not be compiled with such option.

I think that it is actually easier to cross-compile a program with all
libraries required statically linked and then copy it to the target
than convincing the firmware image manufacturer to send an image
compiled with some additional options.

That's said, it shouldn't be hard to add some debugfs module that
would output the MC topology.

> > > What I'd like to propose is that we support both mechanisms for dumpi=
ng
> > > the audio topology data. :-
>=20
> > > 1) Simple file dump using same format that topology is loaded. Used by
> > > kernel/firmware developers only when media controller userspace not
> > > available. Enabled by kernel Kconfig debug option.
>=20
> > Yeah, it sounds reasonable to have a mechanism like that just for
> > debug purposes.
>=20
> > > 2) Media controller API used by everyone else.
>=20
> > Makes sense to me.
>=20
> My main concern here is ending up with two different machine parsable
> formats for exporting the topology information to userspace - it's
> potentially a bit confusing for people to know which one to pick and
> might end up needing multiple tools and libraries to parse depending on
> the situation.  It would be much nicer if we could get a consistent
> format between the two.

I'm open to suggestions. The advantage of the MC next gen API is that it
is subsystem independent, and we're adding some ways for an already
existing MC graph to be used by other subsystems. So, it can provide an
end-to-end graph that represents how the stream is wired on the entire
Kernel.

This is a requirement for some sorts of usages, where userspace may need
to change the stream path on more than one subsystem.

It also helps to lock resources that may be shared by more than one
subsystem. There are such cases between V4L2 and DVB subsystems, for
things like TV tuner. There are also such cases between V4L2 and DRM
subsystems, where the same video codec could be used by both
subsystems, but not at the same time.

So, I guess it is easier to extend the MC to fulfill the needs
for ALSA than doing the reverse or writing some other solution.

Regards,
Mauro

--Sig_/U1GbyHwo/fJQHwjRJpaOWrj
Content-Type: application/pgp-signature
Content-Description: Assinatura digital OpenPGP

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWJl30AAoJEAhfPr2O5OEVgnEQAIMFoRCoSe074qQ1zZx9COkZ
W+l7oOXkJJ9VrdC+tRv9/KqlFgXRsVJ1J2kZ+Dc3jjLtD3k7frVI/OaNZeRX4tFp
DVJR1fv1LrGGckBfiAQpt3fUSug+G5t2BSI6FRhI67fG6GDwC+LVSA+YPeCaKiHE
KjEyYx3qWSPYPmvaFio0SCq9II89t1lVVujPkQafz46Sx6c8/J+2BS8VKvlGVrf7
LOfI0dTaECME97HrkUE4v8uKq++pBTOQT135N1a95y84s7Es+LkbC9vEdg/F52qN
BhD8Cal7b8U9qLhlofO78k5c/Wm0N1eE+fm1AU4sDwDkUYQyUkQd/HvGr69JNOvW
iJr4vukYHd5iP6R7/HNoJww0rvaAR1O8/f/qXlGM7NsPzLSmnCvcMh/pSWKV+PFC
hJDmCT+8s1+707XnC5AnBSanhNDde6Umy3lbTKDz09vFrAdBb9g67bB9xRs/myoa
Xop5jQjjRlS5oiwGkAh2jVbnAvr7ueSi/Q6bABLU14VfeWpBQxwLFAlN3PPQP7Fn
TmrP/hDU+WqJcMD3dRGeVFHx4oSWXc9uJ+4YdR4zNHrFOqq6tj8zIee1F6f/Cxri
HbKyfqzXUGpfe7v2+953qBPb/8/OndjXOCf5ZOKI0oDP5fDfQv0LVjxlR2bdi4Pg
mCwe9TKyD4u40MCA5hx7
=u/iI
-----END PGP SIGNATURE-----

--Sig_/U1GbyHwo/fJQHwjRJpaOWrj--
