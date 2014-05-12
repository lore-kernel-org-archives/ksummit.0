Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E5177A8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:49:26 +0000 (UTC)
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4777A20311
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:49:26 +0000 (UTC)
Received: by mail-ee0-f50.google.com with SMTP id e51so4978954eek.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 09:49:24 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Date: Mon, 12 May 2014 18:49:21 +0200
From: Levente Kurusa <levex@linux.com>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20140512164921.GB3509@linux.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<20140512155320.GW12708@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="St7VIuEGZ6dlpu13"
Content-Disposition: inline
In-Reply-To: <20140512155320.GW12708@titan.lakedaemon.net>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--St7VIuEGZ6dlpu13
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 12, 2014 at 11:53:20AM -0400, Jason Cooper wrote:
> On Sun, May 11, 2014 at 07:18:24PM +0200, Levente Kurusa wrote:
> > Hi,
> >=20
> > On Sun, May 11, 2014 at 06:37:47PM +0200, Laurent Pinchart wrote:
> > > On Sunday 11 May 2014 18:29:18 Levente Kurusa wrote:
> ...
> > > > Not sure about how would we create the bugzilla entry? I mean, which
> > > > section, urgency, etc. how would we decide on those solely based on
> > > > the OOPS? Or should we ask the user to fill it out?
> > >=20
> > > Filling a complex form on a handheld device can be pretty tedious. A =
two steps=20
> > > procedure that would allow entering long text on a real computer coul=
d be an=20
> > > interesting option.
> > >=20
> >=20
> > Makes sense.
> >=20
> > What about only asking for an email address and then sending them
> > an automated message with a link where they can continue to add more
> > information to the report? (i.e. fill out the bugzilla)
>=20
> Agree.
>=20
> > I guess we should also be careful with the bugzilla. We really don't
> > want propertiary driver crashes added to the bugzilla automatically.
>=20
> Correct, but the data is still worth recording.
>=20
> > Nor do we want the same oops added twice, right?
>=20
> We don't want two bugzilla entries, but we do want to know how many
> times this event has happened.
>=20
> > How would we differentiate between the two - essentially the same -
> > oopses?
>=20
> Hmm, oops cookie?  hex string of 32/64 bits read off of the entropy
> pool?  This would give us an accurate number of events even if a user
> scans multiple times.

Hmm, I've been wondering about this too. I guess 32 bits are enough to
differentiate between oopses, and adding this to the QR code is
relatively easy as well.

What I wonder is how could we get the server back-end to not
allow the same oopses from bad users.

Having a link like:

oops.kernel.org/submit_oops.php?qr=3D$ENTROPY$BASE64DATA

would mean that malicious users could edit the $ENTROPY part and
hence effectively report the same oops twice. Maybe some checksum?
Or will it be too much for an already damaged kernel?

Thanks,
    Levente Kurusa

--St7VIuEGZ6dlpu13
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJTcPuRAAoJELBqK2lO9dZB4DgIAKCDvOH0hCgUu48uwHvNRqB5
oe3GwSQCqC9LjgBGZYwBRJTruy4zdQ38Qe91ofxsYJmGwZaNwAVo/wFYtybpgVt6
oXJbJm+IR1CcFgOH1loVmggzu/xOywoxQh8A4rH3WRK5KwRy3a4C2R+1CtXVrSLi
/EOGVY7xkMiWRw27OmPInpiXVm7JxrcZgGel9/4jLWHKPWrljXWbRe8eucRXJKG9
vAE4MLaGLK8zrtzluGAelgZOLu83PbibgZi6Ei8BYrewgjf58NQLcb+od6KGr74R
/RLyflQ80EJ/vj8siIygCxYNaRXfjKzRxi+wYuWjZ0Xdl+vBQwCqFrBvQS9CnyE=
=7ZIb
-----END PGP SIGNATURE-----

--St7VIuEGZ6dlpu13--
