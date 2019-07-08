Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D5EB524CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 11:59:51 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [88.99.104.3])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3B4CB884
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 11:59:51 +0000 (UTC)
Date: Mon, 8 Jul 2019 13:59:50 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20190708115949.GC1050@kunai>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aT9PWwzfKXlsBJM1"
Content-Disposition: inline
In-Reply-To: <CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--aT9PWwzfKXlsBJM1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Geert,

> > 1) we need a better distinction between Acked-by: and Reviewed-by: and =
encourage
> >    stricter use of that
>=20
> Before we had "Reviewed-by", "Acked-by" meant "looks OK to me".
> Then we got "Reviewed-by" for more thorough reviews.

This is what still makes most sense to me. You can express e.g. that you
like a patch series and approve the general approach taken but haven't
gone for the gory details -> Acked-by (a short explaining paragraph
would make sense, then, too)

Is that old fashioned?

Acked-by only for maintainers doesn't make sense to me. Neiher does when
Acked-by has a different meaning for maintainers and non-maintainers.

> > 3) trivial patches should rather get Acked-by
>=20
> These days when given by a maintainer, "Acked-by" means that the
> maintainer is happy for the patch going in through another subsystem.

I still see this as a "looks OK to me" variant. A patch is good enough
to enter my subsystem. Sometimes, I also use "Reviewed-by" for this,
namely when I thoroughly looked at (=3Dreviewed) a patch.

> > 2) A short paragraph will usually do. Of course, trust helps a lot, but=
 it
> > doesn't solve everything. Trusted people can be in a hurry, too, etc. A=
nd for
> > people I don't know, the plain tag doesn't tell me much. Examples for s=
hort
> > descriptions: "I can't say much about the media part, but the I2C part =
is
> > proper" or "I also checked the documentation and I think this is a good
> > approach to overcome the issue" or "All my concerns in the preceding
> > discussions have been addressed"
>=20
> Definitely good to have, but hard to enforce, without making the process
> heavier.

As I wrote before, I don't want to enforce that. But spread the word
that it is good to have and should be done and common sense should apply.

> I have a fifth thesis: many people (incl. guilty me) browse quickly
> through many patches flying by on mailing lists, but don't always go to
> the effort of replying if they don't see something wrong immediately.
> This means we don't catch a share of the reviews happening.

For me, Acked-by would do here.

Thanks,

   Wolfram


--aT9PWwzfKXlsBJM1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0jMDUACgkQFA3kzBSg
KbYKLg/+I7GGmryC7CozEep9ep/YaPc5FcWY2HNsbYN2TrMnUboaXQEJ0UrK5CAi
oqEjbmZVzd99Q2EmuORDDUs9SMf35RcrnOqrobg/2q3O0Yd8y9yXl8YMeiaodllv
QHWSuvVgG9GPwZvT92sS0SfEpgcBgpC0/uSrpygc4dEvfHBYU+UJOMXB3HnPQ3d9
EO4w/M7B4mSynr+LjcZm5/KMt4YrKKK/ZlaxOJKVNmDzpDAuuJxgrs3Gm3XZWDDd
NlGiHbYcQA4uk0+LC25eEFIPyNjWXP1NJ2H10KtL+6tIEARD3RYdA7X9cvH1rXFH
a+DasSAAHzvTZ5xn2YP3zA19bubGpbHQf/s3ZiVpYBCOQMwpjdcoaHCNgo5Jp5lf
h564oaDAnMaXigwhTrik8FTqFkhqxD9uLJWt25O/D6T7i1IYSKzjg0erzUV64m1b
e0atlOGPKjPIvBkk+Yp8Sq/FriqYljNODExpCvBBbtd5Dqz0WK8l6UCsvbLhjmRs
byxJisbEbRt4zX1bh42Kb9q3wtRNILTUinlMzEPAyjEPQrHeN10If/up8BqHJELF
gl60Bmcb8ZzGe5cxbQg76QCRGPQHq+hbCo+y+Ia+BhVWyRJocCKZOIgVh4CzcxvV
szyQoFGa+px4kN8jtJ91PB4EmgITurQmmFLgzRI3XrYfUXgo7Xo=
=cAD1
-----END PGP SIGNATURE-----

--aT9PWwzfKXlsBJM1--
