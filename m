Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7AF8248E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 21:14:04 +0000 (UTC)
Received: from mail-ee0-f47.google.com (mail-ee0-f47.google.com [74.125.83.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A80CE200A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 21:14:03 +0000 (UTC)
Received: by mail-ee0-f47.google.com with SMTP id c13so998031eek.20
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 14:14:02 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Date: Thu, 15 May 2014 23:13:59 +0200
From: Levente Kurusa <levex@linux.com>
To: "H. Peter Anvin" <hpa@zytor.com>,
	Josh Boyer <jwboyer@fedoraproject.org>
Message-ID: <20140515211359.GB10395@linux.com>
References: <20140512164921.GB3509@linux.com> <53710053.4040100@zytor.com>
	<CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>
	<20140513112525.GB10733@kroah.com>
	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>
	<20140513150520.GA15857@kroah.com>
	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>
	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>
	<20140513160743.GA11391@thunk.org> <53751466.1030401@zytor.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="tjCHc7DPkfUGtrlw"
Content-Disposition: inline
In-Reply-To: <53751466.1030401@zytor.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Sarah A Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>, Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--tjCHc7DPkfUGtrlw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 15, 2014 at 12:24:22PM -0700, H. Peter Anvin wrote:
> On 05/13/2014 09:07 AM, Theodore Ts'o wrote:
> > I'll note this discussion has started mutating to a more general "how
> > do we get more useful bug reports in front of developers", which I
> > think is a good thing.
> >=20
> > However, I'm still not sure how useful it would be to have a tech
> > topic (or a core topic) dedicated to the matter, because we've had
> > discussions about and at the end of the day, what's probably really
> > necessary is to have someone, or a small team, dedicated all or most
> > of their time to:
> >=20
> > a) improving kerneloops.org
> > b) finding interesting patterns in the bulk reported data, and then
> > forwarding that on to developers
> > c) finding ways of automating (b)
> >=20
> > QR encoded oops might be a means towards that end, but there might be
> > other things that could be done as well.
> >=20
> > If someone were to *do* all of this work, then reporting on it and
> > then asking for suggestions about how this service could be improved,
> > might make a great tech topic.
> >=20
> > But in the absence of that, can folks suggest ways that this doesn't
> > turn into a "I know, let's put a bell on the cat!" sort of discussion
> > that doesn't lead to anything useful?
> >=20
>=20
> A workflow discussion for gathering fault information in general *might*
> be useful, but I'm not sure we have the right people for it.  As far as
> I understand, kerneloops.org pretty much lost its usefulness when Fedora
> (and other distros?) stopped participating and redirected to their own
> internal sites.

Looking at oops.kernel.org, one of the top guilties is Fedora. Also,
looking at the ABRT FAQ it still seems to send the OOPSes to the site.
So, I guess Fedora didn't stop sending them. But maybe, Josh knows
better?

I am not sure if the site has lost any of its usefulness. It still has
a DB of ~4K oopses in May already. What I think is the problem, is
that maintainers barely look at it. I think there are numerous reasons
behind that, and I see a lot of improvements could be made there.

Regarding the wrong people. While we could not be the best people to
discuss this with, we are the ones, at least I am, who are *willing*
to do some work on the core error reporting and gathering parts of the
kernel.

Thanks,
    Levente Kurusa

--tjCHc7DPkfUGtrlw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJTdS4XAAoJELBqK2lO9dZBOakIAIBC2ghRDR1IYb5lv79ImbZ0
h1MEw0D3UjnAyVZQruLymjXdBmN1Rhl1Gw1RqZ/r2B5ayJw9hsfwFnYpp4/yuPAO
Cdvv+mpdH/24I9SaLgvHwD/rSN1E6V7YClZ7Wl0w/Vy+cIFEfzbgieWH97aS//uc
gAQ0a+Tudl3fldZA0WA+3aeqVbxf/jFC189KWFbk7kHtvpp23ILTIfGe7RYtNr76
24yAzmsb1qMjifXB1zwqmRRgMeYcM/MQ9cOOFsAQ0XjUeMlggsjJUCPPQkjSds+d
dcrnABvGobmkHNi0EQqxcV+6CjBlUjofh5hxQOsaeWDI8OdTUgCu6XSiCct2+xQ=
=jqUD
-----END PGP SIGNATURE-----

--tjCHc7DPkfUGtrlw--
