Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AEF2D942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 22:07:42 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2305F203CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 22:07:42 +0000 (UTC)
Date: Mon, 12 May 2014 23:07:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Tomasz Figa <tomasz.figa@gmail.com>
Message-ID: <20140512220729.GZ12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <20140512201438.GE12304@sirena.org.uk>
	<1890814.sS5FutD9xo@avalon> <20140512203153.GH12304@sirena.org.uk>
	<53713A49.9070400@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="BL3MMUfc3vsyMeVL"
Content-Disposition: inline
In-Reply-To: <53713A49.9070400@gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--BL3MMUfc3vsyMeVL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 12, 2014 at 11:16:57PM +0200, Tomasz Figa wrote:
> On 12.05.2014 22:31, Mark Brown wrote:

> > It also solves the system suspend dependencies.  Why don't the
> > runtime PM dependencies just work with reference counting?

> Runtime PM dependencies work with reference counting just fine, but
> only for topologies matching Linux driver model, e.g. devices with
> exactly one device they depend on, e.g. SPI controller and SPI devices
> on the bus driven by it. Add there an IOMMU and other various strange
> things that should be transparent to the drivers and it stops working.

There's no reason why runtime PM references have to follow the topology
- you do get a default reference count up to any parent (though we break
that sometimes, as is the case with SPI controllers being suspended even
though the devices below them are active) but there's nothing stopping
references being taken outside the topology.

> I'm still investigating this issue, so more uses cases are yet to be
> found, but I also guess this is the purpose of this thread. Anyway,
> for some reason .suspend_late() and .resume_early() callbacks exist in
> dev_pm_ops struct and I believe that at least some of the cases
> "solved" by them might be related to the issue being discussed here.

Yes, they're partly solving a particular common case for this sort of
interdependency (though I guess they do also do things like allow us to
make sure the hardware came back in a state where it won't be harmful
to the rest of the system if we start enabling things).

--BL3MMUfc3vsyMeVL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTcUYeAAoJELSic+t+oim9RAIP/38exufd0yRKiXg9KMlZcfgn
vNkHAWeC/cc9VqEx6FjkNhcL+OkC1F0bEQ85qVN3vJuvjAlro55f1w9M1trhAWQk
TUQQ/kYOvt42MmVNg1YkZJqKkT3rHNuOtACGkNQDelBwMBnXtv6mc//2Rks90PwJ
L1bNU4M63GnnLVDNyhb4Q46oThPByY3wzBtP3u8HZhBXezaIC9YNV1ITahAiguGR
mkUUS23PuD5B4MSZrHjOcwArkTao/hQWW2iEAbPtB5xCgDBJslQhgs0htTXt5j79
xrlUwow5gc/n/1yLUBjRWTzW4ZBTzIsFjhBgVD6WKO099snqLtDAQQAu+lR/WVYN
bufMjmiKxpUjKuLfWvscD0VsO8DURNQPa1uX7rZbAi9FaBwyvegPJ+EfmSz53d6B
Dfsg47z9FBPhyayCWmgBPG1u0ZN8DZMtB/cHX1e4OlPMp0FVLThH/WdKPMzzxLd7
G1ibyNKyyNVxuIgfgaZWfy85bnx3OdghmmSbimNKBwGvpCKjVH2RGbQhs6xQNX8n
dudfKl99ityOiZbABq4Vg+iGi7ZdgZFppXBtGlE67GWix90J8XOFp5hhvZHeQ4sr
CJw/ZhP3DPOaOtKIGlvFJtorPUIW2+s0KnOf5UTuzhTj23EPx9MBbhynsVBSCVOV
5gF44z8TfX4c2pyn0Nwe
=6LYm
-----END PGP SIGNATURE-----

--BL3MMUfc3vsyMeVL--
