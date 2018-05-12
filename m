Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 022E82110
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 12 May 2018 04:04:07 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5C75B14D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 12 May 2018 04:04:05 +0000 (UTC)
Date: Sat, 12 May 2018 14:03:58 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: David Sterba <dsterba@suse.cz>
Message-ID: <20180512140358.7f9fb8cc@canb.auug.org.au>
In-Reply-To: <20180511084701.tosopl7oso5j7wfq@twin.jikos.cz>
References: <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<20180509090346.GY13402@sirena.org.uk>
	<20180509204727.7ff38021@canb.auug.org.au>
	<20180511084701.tosopl7oso5j7wfq@twin.jikos.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_//oFAaz9Pzc5V+u55NtwwjGi";
	protocol="application/pgp-signature"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_//oFAaz9Pzc5V+u55NtwwjGi
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi David,

On Fri, 11 May 2018 10:47:01 +0200 David Sterba <dsterba@suse.cz> wrote:
>
> Please add
>=20
>   git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux.git next-fixes

Added from Monday (as btrfs-fixes).

Thanks for adding your subsystem tree as a participant of linux-next.  As
you may know, this is not a judgement of your code.  The purpose of
linux-next is for integration testing and to lower the impact of
conflicts between subsystems in the next merge window.=20

You will need to ensure that the patches/commits in your tree/series have
been:
     * submitted under GPL v2 (or later) and include the Contributor's
        Signed-off-by,
     * posted to the relevant mailing list,
     * reviewed by you (or another maintainer of your subsystem tree),
     * successfully unit tested, and=20
     * destined for the current or next Linux merge window.

Basically, this should be just what you would send to Linus (or ask him
to fetch).  It is allowed to be rebased if you deem it necessary.

--=20
Cheers,
Stephen Rothwell=20
sfr@canb.auug.org.au

--Sig_//oFAaz9Pzc5V+u55NtwwjGi
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlr2Z64ACgkQAVBC80lX
0GwELwgAoLyNQil6o/x3wggZy1TaBRWzoYiZtT+LnyIgeruC5qjsk6Qz2VhKdnbj
n3/rFt+piaLdf3HD29aiMcoZJCoaFhkOnBi8eXn41kJI49S+1koGLfUgbuLP2Nnf
6WGuNRlESpkXiizfoM+7wEsRzUJjF3kIkzCw6Hk7NL+g88ymsKsAUf7HKghjoVuM
BYqhZ8lwtw5xwMBiUzGWDAJ4NdYBFG0j17zG94K2+jMJ8fMngcQcWDS5tT8K/WRn
CWhR+GB+2PHZTzilFAN2QzGS/5sQPxHpcPRDrheh8lQKUHXdqTOBF1ersTh9MoXA
memkEVLRLUqc4VdoyarIAjBBfhHA9w==
=AdGq
-----END PGP SIGNATURE-----

--Sig_//oFAaz9Pzc5V+u55NtwwjGi--
