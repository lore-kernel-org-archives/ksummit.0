Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5B459413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 07:15:40 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C337C1BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 07:15:39 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Hannes Reinecke <hare@suse.com>
Date: Thu, 04 Aug 2016 17:15:30 +1000
In-Reply-To: <alpine.DEB.2.10.1607220808110.3114@hadrien>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
Message-ID: <87a8gtngx9.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 22 2016, Julia Lawall wrote:
>
> In C, enums are ints.  Is there a Gcc option that checks them?  For
> example, the following program compiles fine with -Wall:
>
> enum one {ONE=3D1, TWO=3D2, THREE=3D3};
> enum two {ONEX=3D7, TWOX=3D8, THREEX=3D9};
>
> int f (int x) {
>   enum one o =3D ONE;
>   enum two t =3D THREEX;
>   if (x) o =3D t; else t =3D o;
>   return 0;
> }

However with this slight change (and line-numbers added for clarity)

     1=09
     2	enum one {ONE=3D1, TWO=3D2, THREE=3D3} __attribute((bitwise));
     3	enum two {ONEX=3D7, TWOX=3D8, THREEX=3D9} __attribute((bitwise));
     4=09
     5	int f (int x) {
     6	  enum one o =3D ONE;
     7	  enum two t =3D THREEX;
     8	  if (x) o =3D t; else t =3D o;
     9	  return 0;
    10	}


sparse complains:

/tmp/test.c:8:14: warning: mixing different enum types
/tmp/test.c:8:14:     int enum two  versus
/tmp/test.c:8:14:     int enum one=20
/tmp/test.c:8:26: warning: mixing different enum types
/tmp/test.c:8:26:     int enum one  versus
/tmp/test.c:8:26:     int enum two=20

Is that what you were hoping for?

NeilBrown

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXouuSAAoJEDnsnt1WYoG5htcQALC/eHMkd80T58BfoSjnKFD/
tN0hi/lCxIL6z+I5ZLbtOBFPyqaVpLLL+mfz1ykQan87CXlHsun2TQO6LDADBmm9
zxvcyQffmrOmKlHBKjQKNW0j4JvtrUKppqz8r+ARgXZ2jLNyZxRblJ0w4GiG2KVH
9wGX7Dl+/J2zqKSgMKZbgyouCYsLCSCmfM8VIElXug+CJuB2y+3QGwGMkco/9zbd
gxQEBc63J5UyyPonpKWs7LFVWbR1bxsWwAX+11JPfxH72CGImpgtz3TAP7fzv1DC
2Kn6IaO6Kf4yr1N46ENfe5Yg6zjy/KuR2JDnntTvHpCu0oTY3o9vgG8ttiJXPe+n
n4yVOz2KcxeRSOqX7Ux6gtVpsGhDV3ZnbdMgyt10VUdbOcKoHqYeBuGX4SxAPhOW
nh0NZ+HmVxzC/NEQI5KmT6SVxXDr4W7z9ulDcFEBVuRcaU/om5z/IRMFgFvY5UM8
c/1vzv/pbK5Grj2RSHS/rf2CJhGE47tyN1jIyluEl21xEoYBSF0KDWG9rh4O/JKq
qrLfs2H1AbVJ/U61jq5nrqQpLVR85XLF8OU3dapUNWmsbi0eJLQW4n7K92wz9ZZG
pgQxhMwYX1f6wlizVNisrnIZHNtXEYSqICm0KlOLrAkUn7bvkiZX6CQlJ2iMkFRB
6M3eR6Wz09krY4xdO/8m
=61BZ
-----END PGP SIGNATURE-----
--=-=-=--
