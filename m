Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 92AC721
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:57:32 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 35CAA1FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:57:32 +0000 (UTC)
Date: Fri, 2 May 2014 13:57:22 -0700
From: Mark Brown <broonie@kernel.org>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20140502205721.GY3245@sirena.org.uk>
References: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="KHOyfQ0Vs3k2+qDI"
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--KHOyfQ0Vs3k2+qDI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 02, 2014 at 09:42:04PM +0200, Jiri Kosina wrote:

> I am a responsible maintainer of kernels for SUSE enterprise products. As=
=20
> such, I am dealing with -stable trees on a regular basis. Hence, if there=
=20
> is any discussion related to -stable tree process going to happen, I am=
=20
> highly interested in that discussion.

Likewise for me with my work hat on, I maintain a stable kernel for
Linaro for use on ARM systems.

> I'd like to re-iterate my usual question / discussion topic of=20
> responsibility distribution for -stable patches; my proposal again would=
=20
> be to align the -stable tree workflow with Linus' tree workflow -- i.e.=
=20
> subsystem maintainers preparing 'for-stable' branches and sending pull=20
> requests to the stable team, instead of rather random cherry-picking of=
=20
> the patches from the air as they fly by the stable team members.

With my upstream hat on I have to say this seems like a lot of work and
probably means that most stable fixes that currently go out probably
just won't happen - there are quite a lot of stable trees being
maintained and I personally have next to no immediate interest in most
of them.

--KHOyfQ0Vs3k2+qDI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTZAaqAAoJELSic+t+oim9aa4P+wSdm7Y7XBKrrAgTzCHvNeM+
VamuhiDkTYXfV7nZ7z8IxRK1zbIwXvz6e21O9ybfxF+3dGyE2qLfo+XqmvlV5+hw
yGuvXO2k2x00iiS2YAkVyOgz1OajdJWSmsP9RhUnj48kTakUNE5hkTx42vwGGTnX
QV3RZmVlW2LDHBxk1JSI0KY0iB71x2ZwB/6CJ7T5ha8RaovBasBsSkumAFEt8ZIF
2yoYCcQAyk6yf3Ul0Nv0IqwfqP/splT/qte4KM/4jw0l99bdSSkgfXJ6GCtHXYUB
E7CP4Fe+rlX+RmwfOu/mZuWGShrlsNxLJYeFkf29rDsQapYc5zGfqLyW3OzMHoXd
ggIvUJMcpl+ZNj4JXmw0S09gTKYTzGbibTKorRfOlHRAVqGxKCamFusE7KEw8XFx
2SUpgfgwJj7PQzBl2xZLhA52YuczipZTdlEC63xeTsvEYWgCqafgz6CT1S1K1qLu
KqiZ6tBCqOUITsp3FwAv8HyL5COSTnDd/J2eEntK+zpgiPf+sc2/+yTUTsgYXfYw
fW/saPC9C23P90IgQE8ebWA5UabPqXmnNAt/ba5XYQVoauS2TX7/NEL8Ec/DbmZj
zWSBStAw3NbVAQPFXzlGLqeLbo5NCt+6NfhTg+BdwueM6wA/oQZm3EQsREZ2iij+
Oe1K1BO+LBdxZ+QQ/NnF
=NvPK
-----END PGP SIGNATURE-----

--KHOyfQ0Vs3k2+qDI--
