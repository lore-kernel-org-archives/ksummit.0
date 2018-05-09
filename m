Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7015ECE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 21:58:32 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 829FA680
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 21:58:31 +0000 (UTC)
Date: Thu, 10 May 2018 07:58:28 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Boris Brezillon <boris.brezillon@bootlin.com>
Message-ID: <20180510075828.32167ead@canb.auug.org.au>
In-Reply-To: <20180509213528.54bad29b@bbrezillon>
References: <CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<20180509090346.GY13402@sirena.org.uk>
	<20180509204727.7ff38021@canb.auug.org.au>
	<20180509213528.54bad29b@bbrezillon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/wJg1F16Hn9qJQJcUeJNMO7u";
	protocol="application/pgp-signature"
Cc: Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/wJg1F16Hn9qJQJcUeJNMO7u
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Boris,

On Wed, 9 May 2018 21:35:28 +0200 Boris Brezillon <boris.brezillon@bootlin.=
com> wrote:
>
> I see that the nand/fixes and spi-nor/fixes branch are already there [1].
> You can add:
>=20
> mtd-fixes	git	git://git.infradead.org/linux-mtd.git#master

Added from today.

> You can also remove the mtd entry [2], since mtd-2.6.git is just a sym
> link to linux-mtd.git, so it will just be a duplicate of the mtd-fixes
> entry. You can also rename the l2-mtd entry [3] into mtd.

All done.

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

--Sig_/wJg1F16Hn9qJQJcUeJNMO7u
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlrzbwQACgkQAVBC80lX
0Gwdxwf9HWzPcwbaddsDWl4yjDDlRsL4RERn+NPFO1jVWtO8bxEjZsayREmUYgIB
hSvemPip3eSkZ+zPoPUWdGjN7nAa50YzsEwcr591lPX/QEkJGDRy4s46OUmvutCU
kEd3Pv4tWtFZQx+8fP9/LvjtYzToOm/EtmXGZ0handM8mclIgIh/oLoDWFFMV/2q
GROxYCVCckcjRHJs/8vckn9dJT4ReaJDVgvY3vmF4hcDAPdbvcH8GJJBuM2WOuw/
avGxi1hmLvI08b1zd9REbMjA4Dklr4SIRfqkT01/cxdEcxRbNxDuY+rvh1GRSefr
eNtfRrvYShn44eFQKCE0hu2i2yLw8Q==
=XT7Z
-----END PGP SIGNATURE-----

--Sig_/wJg1F16Hn9qJQJcUeJNMO7u--
