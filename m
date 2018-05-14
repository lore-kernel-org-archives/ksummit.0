Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82EA22707
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 21:45:08 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9BEF86A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 21:45:07 +0000 (UTC)
Date: Tue, 15 May 2018 07:45:03 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Ulf Hansson <ulf.hansson@linaro.org>
Message-ID: <20180515074503.35ec6658@canb.auug.org.au>
In-Reply-To: <CAPDyKFrhRtLUFfmNNg0iPtJ+Tj5ZzDq6EsYPFc=PY7CmqkFX-g@mail.gmail.com>
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
	<CAPDyKFrhRtLUFfmNNg0iPtJ+Tj5ZzDq6EsYPFc=PY7CmqkFX-g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/nofJIjpfIzlhIonduYhKAWa";
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

--Sig_/nofJIjpfIzlhIonduYhKAWa
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Ulf,

On Mon, 14 May 2018 10:36:04 +0200 Ulf Hansson <ulf.hansson@linaro.org> wro=
te:
>
> I will ping the kernelci folkz to request them to include your new
> fixes branch for daily builds.

Excellent, thanks.

> For mmc, please add my fixes branch according to below.
>=20
> git://git.kernel.org/pub/scm/linux/kernel/git/ulfh/mmc.git fixes

Added from today.

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

--Sig_/nofJIjpfIzlhIonduYhKAWa
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlr6A18ACgkQAVBC80lX
0GwIaAgApYTmL+dWa+5871wsgGFrgIYW/DFTyePVGLr5j5wRZRyTP9uNmbru1IWl
/uvYZn7IT1O3gmCd0QMnSuhqk6VKr/B/DYzAiy3iIRg0gbByDgpXUOoBU/DJXt4z
1zZxVJcmlnxKJzNvtWaJkNjIqF89KdCrXcqoPR1uk0yBn3mlMqTnxRT/neK3kQyt
JQ85vxKSCoSOxhIOfAFvFqVmJFe3NAGK8uDNrFlrQbR4oPUMzNGlx+fdXez82/U8
lvVoAT0WqNh/ruA33M5skzgMpvcnl3QNgmO6oFzZJO8tOasJ4oLjoVMhCN5tVg5D
6MLlnF5ojog08uBq8z8n0ol7RNqhQA==
=FjhI
-----END PGP SIGNATURE-----

--Sig_/nofJIjpfIzlhIonduYhKAWa--
