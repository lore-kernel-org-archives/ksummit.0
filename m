Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A8AADCF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 00:43:47 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2D3417DD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 00:43:47 +0000 (UTC)
Date: Tue, 11 Sep 2018 10:43:39 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180911104339.46143f61@canb.auug.org.au>
In-Reply-To: <20180910212019.GA32269@roeck-us.net>
References: <CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/LbPnsdZwfV5tAloASUrkPYe";
	protocol="application/pgp-signature"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/LbPnsdZwfV5tAloASUrkPYe
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Guenter,

On Mon, 10 Sep 2018 14:20:19 -0700 Guenter Roeck <linux@roeck-us.net> wrote:
>
> On Mon, Sep 10, 2018 at 04:45:19PM -0400, Steven Rostedt wrote:
> >=20
> > The best we can do is make the automated testing of linux-next better
> > such that there's less -rc5 patches that need to go in in the first
> > place.
> >  =20
>=20
> Would that help ? -next has been more or less unusable for a week or so.
> Maybe it is just a bad time (it hasn't been as bad as it is right now
> for quite some time), but
>=20
> Build results:
> 	total: 135 pass: 133 fail: 2
> Qemu test results:
> 	total: 315 pass: 112 fail: 203

I assume that most of that is the mount api changes.  I also assume you
have reported these?

> on next-20180910 doesn't really make me very confident that useful regres=
sion
> tests on -next are even possible. it seems to me that -next is quite often
> used as dumping ground for sparsely tested changes, and is far from "ready
> for upstream".

Well, we do get some of that, but also some things are harder to test
in isolation.
--=20
Cheers,
Stephen Rothwell

--Sig_/LbPnsdZwfV5tAloASUrkPYe
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAluXD7sACgkQAVBC80lX
0Gy70Af+JFSyXyqEOJy12tvkNOi68KS4ht/x9WvzjEABz9nWm+Esds4b9KkImMMe
1C98fHnHE+4RWAZCqWgO7HJIbKYlBw5+754lA2RPUgVjC4+LedGUYspO0pKYi6pd
T6LWih2WaeLWuYXGFhWt3kU9Boev3BGOXxHuCg9aGmm1z3zpE60BZ17BTMQ00QcX
O/3PRG4G8mEMFAnQn6O3+vuVgXywbT9CktAZuzOra5yL5j/jARKszVqPPqDkpfLD
9L0qz/0/NUUmwfb5PdBFVzo/LZX7eXMmK2WZBgzhYAhfgovTVT1NWI33tSW/Pq0d
VjPGZkKF5PHJZhl+KO7rw9LkTGzpig==
=SLhp
-----END PGP SIGNATURE-----

--Sig_/LbPnsdZwfV5tAloASUrkPYe--
