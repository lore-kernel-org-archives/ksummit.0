Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E36FCDD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 11:44:29 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CA6842D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 11:44:28 +0000 (UTC)
Date: Fri, 7 Sep 2018 12:44:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Message-ID: <20180907114421.GD17459@sirena.org.uk>
References: <20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<s5h36ulrdps.wl-tiwai@suse.de> <87zhwtybr3.fsf@intel.com>
	<alpine.DEB.2.20.1809071135090.3036@hadrien>
	<87r2i5y6n6.fsf@intel.com> <20180907102519.GX13888@piout.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vni90+aGYgRvsTuO"
Content-Disposition: inline
In-Reply-To: <20180907102519.GX13888@piout.net>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
 replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--vni90+aGYgRvsTuO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 07, 2018 at 12:25:19PM +0200, Alexandre Belloni wrote:
> On 07/09/2018 12:54:37+0300, Jani Nikula wrote:

> > The only real downside that I can see is that it centralizes the
> > deprecation information in the semantic patch instead of the functions
> > themselves.

> Which is not bad because how do you expect maintainers to learn about
> the deprecation?
> I don't think anyone will go and read the strcpy's code or
> documentation.

Right, this is the most common pain point I see with these transitions -
people hear about these things through word of mouth which creates
confusion.  This thread is the first time I heard about strscpy()
existing, let alone that the other variants were deprecated in favour of
it.  A similar thing happened with the SPDX tags, people were querying
what was going on with the patches and links to mailing list posts were
getting passed around.

--vni90+aGYgRvsTuO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluSZJQACgkQJNaLcl1U
h9DzlAf8D45BllSQse1VCrG34I4NxN2Is5zjpO5vYkV92oT0wxRbbgnz0Mn79vXx
nQJRkI6OY6gTBh0kgIc5GxkJjb7OcwjTM0ZxHlhWOZ3J4YejjJLoGQhBW34UYp0d
vSctSzlPrRvOsVmbq5YjZsO4Xg3EqjxV7S08Q6ifiFOLBGF3xPbK21w7o2AOLneQ
FgyXPckCs71usGcz1AcsjWK3KgIZEA5bWdBItCnqMcR9+3jef0dT27B8LWKIzxEl
x1BkDuUybHkBynT0iXDVooRQtkItOsSouH5asedvkVusBr1lw8r9/sFzKWsI88wk
ucwBt0a4O3YzVcJiVGNNZIhNwctuRA==
=yYDl
-----END PGP SIGNATURE-----

--vni90+aGYgRvsTuO--
