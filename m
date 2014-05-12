Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4D048988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 14:15:51 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [89.238.76.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AD58F2024E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 14:15:50 +0000 (UTC)
Date: Mon, 12 May 2014 16:15:46 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20140512141545.GB6860@katana>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506175842.GF20776@cloud>
	<1399404095.4218.51.camel@jlt4.sipsolutions.net>
	<2617712.JANppmYUxZ@avalon>
	<CAKMK7uE3212a8hvrqFRtod7hh-7s27ZzMTUJKLTBfv8vMtF2sw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JYK4vJDZwFMowpUq"
Content-Disposition: inline
In-Reply-To: <CAKMK7uE3212a8hvrqFRtod7hh-7s27ZzMTUJKLTBfv8vMtF2sw@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--JYK4vJDZwFMowpUq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 07, 2014 at 02:36:27PM +0200, Daniel Vetter wrote:
> On Wed, May 7, 2014 at 12:12 PM, Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> > We have seen several review, test and documentation procedures being de=
veloped
> > for different subsystems in the recent past (two examples are the DRM i=
915
> > driver API test rules explained by Daniel Vetter in a reply to this mail
> > thread, and the V4L test suite and documentation procedure) but I have =
seen
> > little effort to consolidate good practice rules. The kernel would cert=
ainly
> > benefit from both sharing information about how various subsystems tack=
le the
> > API review/test/documentation problem.
> >
> > Forcing all subsystems to adhere and enforce a superset of rules would =
likely
> > put too much burden on maintainers and developers, especially for the s=
maller
> > subsystems. However, I believe we could help by gathering and consolida=
ting
> > the good practice rules in a single location under Documentation/. Main=
tainers
> > could then implement those rules (or a subset thereof) without having to
> > reinvent the wheel. Rules such as "return -EINVAL when a reserved param=
eter is
> > set" are not complex to implement in code, the real challenge is to imp=
lement
> > them in the brain of all developers and reviewers.
>=20
> I'd be very interested in a discussions about existing best practices
> already developed in different subsystems and figuring out what
> minimal standards we should requires across the board.

+1

I'd like to have some procedures for my subsystem as well and was
wondering what other people have experienced so far. I already started
digging and trying to find a scheme where that stuff could be collected.
Never got too far sadly :(


--JYK4vJDZwFMowpUq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQIcBAEBAgAGBQJTcNeRAAoJEBQN5MwUoCm2ANUP/08B0k+VkQdUzOfrgjoh48ha
C91UV3pyNbL7e6EmPQfidT6OJK95bCSbCbtXHiujW/jaleZx5KFw+IdXdZ0Oq8fi
bMmU/LEea7cXGtSMrz/rXeIEdHNeLHh6l4a11SwtiT8ytsqdGxNL+Axh/u5zkzcJ
vJz1BbFa5an9OqdoQCwMzCxsuZ3fFMBXdGfRoy6lW5LkwyAGB6CUhbvedLQ/8zu7
mtUWs3ZOKlleDA13WLgfYwcTcMwefugE9Z4iNxOPVzqby/XyPaE5YuwWaDAf/NIb
gUGWJDaxfxf4O8Txrmv3RDHylllVYpW0+2Ck994iwcS4ModC9gE95RPUwn0i1yLk
iDdBBzV7QinTyrY1pHNnLuByFly6tE1oHP+fCAIO4lfi3dwSdK0HB4s+viNf5aCX
civs0OBnza/RcQhtbbFMZIApW6Yq3MbhSHOTDX8OlZziQCwbkC8wDGstRzZeh3IC
RCzNvI68ioyVrNWA0xNe/qS9UuEK0zBnh6zCqjKBKdndkoKoRe/fy+UHuZAEoDWH
auJI+o0f2C+aWyLblRFqbdtQKxw+6QZUZ9jONAMcN6NS+5qipTdRhBZxvxYhO15h
kutIyibP/bF9b/9K9eY+W6eAhs29Z1/qDfqMwWle3DcxbSKioyg6rUZHpEGcczxb
F5ClafgSLX+TcotJczZI
=39MM
-----END PGP SIGNATURE-----

--JYK4vJDZwFMowpUq--
