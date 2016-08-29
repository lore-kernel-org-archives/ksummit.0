Return-Path: <riel@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B34D4308
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 17:42:38 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 67F9F100
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 17:42:38 +0000 (UTC)
Message-ID: <1472492553.32433.108.camel@redhat.com>
From: Rik van Riel <riel@redhat.com>
To: Greg KH <greg@kroah.com>, Wolfram Sang <wsa@the-dreams.de>
Date: Mon, 29 Aug 2016 13:42:33 -0400
In-Reply-To: <20160828074706.GB1370@kroah.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<20160827183550.GB1601@katana> <20160828074706.GB1370@kroah.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-dSqrDlHOMNjZJPN7Hx7m"
Mime-Version: 1.0
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-dSqrDlHOMNjZJPN7Hx7m
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2016-08-28 at 09:47 +0200, Greg KH wrote:
>=C2=A0
> Some specific examples:
> =C2=A0 - huge SMP support.=C2=A0=C2=A0Yes, Alan got basic SMP support wor=
king in
> Linux,
> =C2=A0=C2=A0=C2=A0=C2=A0but in order to scale much larger we had to do di=
fferent
> things.=C2=A0=C2=A0As
> =C2=A0=C2=A0=C2=A0=C2=A0SMP hardware was rare, it took companies that had=
 that hardware
> to
> =C2=A0=C2=A0=C2=A0=C2=A0do the work in the kernel to get things to work b=
etter.=C2=A0=C2=A0Because
> of
> =C2=A0=C2=A0=C2=A0=C2=A0that we got access to RCU, which without that, we=
 would have
> never
> =C2=A0=C2=A0=C2=A0=C2=A0been able to work as well as we have.=C2=A0=C2=A0=
Look at the BSDs for an
> =C2=A0=C2=A0=C2=A0=C2=A0example of this, they don't have access to RCU, a=
nd they can't
> =C2=A0=C2=A0=C2=A0=C2=A0scale.

It is worth remembering why XFS, JFS, and RCU were made available
only under the GPL, and not under eg. a BSD license.

Linux got access to that code because of the GPL's obligation
that further improvements be made available to the whole community.

Companies like IBM and SGI started participating in Linux because
they knew no competitor would run off with their code, improve it
slightly, and offer a proprietary product for sale based it.

GPL compliance efforts keep that expectation alive, and may be a
factor for new companies when deciding whether or not they can
afford to release their code under the GPL.

Persistent GPL violations could be a large negative for companies
worried about being undercut by competitors.

--=20

All Rights Reversed.
--=-dSqrDlHOMNjZJPN7Hx7m
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJXxHQJAAoJEM553pKExN6DF8AH/jMwTfLQt1JHvAlRzIOe3gtW
ybfYwvboh2NS28FF6LNHfNfQbqihXkcNwjn3VjyYLPAz7/K0utzflre7DIjzOdO1
qaJyvPVnGEZwTMHRdgHq7IDnxp8SkKVar+xyo25ynbdlwvLqZqD3kS2c4ltXsvk8
Xuqwn+BYR/PSXKr16rkYwHr6uzrtKrlAbxZh75HaNQe+eKCJ+dYtHR92ylEbQTyp
3qQXsKN2fosjM+OKvkZGIXTO+/Qz4weED2eHKaNY8we/jHlE96GeTdTTmhxEvKIh
L45/8kATsDmLmgUkAKzgsRxXaUzHLaY7IEQvrYaNkBxjGaJdDBQ+dVxe5XnCF7Y=
=GBfF
-----END PGP SIGNATURE-----

--=-dSqrDlHOMNjZJPN7Hx7m--
