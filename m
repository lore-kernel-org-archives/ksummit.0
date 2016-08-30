Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7A37D904
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 16:55:33 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 171D81D8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 16:55:32 +0000 (UTC)
Date: Tue, 30 Aug 2016 17:55:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20160830165517.GF3950@sirena.org.uk>
References: <20160826193331.GA29084@jra3> <20160829115018.GA16353@kroah.com>
	<20160830095737.GC18605@lukather>
	<201608301733.36149.arnd@arndb.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7IgncvKP0CVPV/ZZ"
Content-Disposition: inline
In-Reply-To: <201608301733.36149.arnd@arndb.de>
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


--7IgncvKP0CVPV/ZZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 30, 2016 at 05:33:36PM +0200, Arnd Bergmann wrote:
> On Tuesday 30 August 2016, Maxime Ripard wrote:

> > They used to yes. However, even though I don't really how Linaro works
> > internally, my understanding was that being part of Linaro doesn't
> > imply that you have engineers assigned. It's probably related to some
> > level of membership.

> Correct, the higher membership levels require assigning engineers,
> but that doesn't mean these engineers work on upstreaming code
> of that member company, or even working on the kernel.

To be more concrete: the assignees function essentially as contractors
for Linaro.  They're doing Linaro work on free software products and
infrastructure like direct Linaro employees do, they're not working for
the member company but rather for Linaro when they're assignees.

Linaro does also have landing teams for members at higher levels, these
function in the opposite direction and have their work assigned by the
members but there's no requirement that this work be upstreaming or even
kernel related, it is in some cases (eg, a bunch of the Qualcomm and ST
work upstream is being done by Linaro landing teams) but not all.

> We do provide all kinds of help to member companies and engineers
> to learn everything about upstreaming their code and working with
> the communities, and a lot of member companies use that help, but
> other members don't.

Plus the fact some member companies are large enough that they have
several groups working with Linux and in those cases it may only be one
of those groups that's joined Linaro and the SoCs people generally see
may be from another group.

[Specifically in the context of Linaro working on Allwinner SoCs]
> > Anyway, like I was saying, no one from Linaro ever contributed
> > something meaningful (except some cross-tree patches, and the usual
> > "maintainance" patches).

> I'm not surprised at all. Most of the kernel work we do in
> Linaro is intentionally cross-platform (so it benefits all members
> equally), or it is done on those platforms that the members decide
> are important upstream.

Where possible we'll try to use platforms that already work well
upstream rather than trying to do basic upstreaming work.

--7IgncvKP0CVPV/ZZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXxbp0AAoJECTWi3JdVIfQJdwH/0NN5ugSB94tGCDkjqKBmKKD
/DUzGHwhl8suJC6g3rC7TyQCJz9qOLJQ6D09zzvy+wWHR0cgi39BH4um15aq5zDR
g2dGngdULYy9jqGbGHO6Z0/YeDQx429MqqENGUsnYM863F8Gudza8hv+4JmBFHWR
GrZ51s3UaLE/UWYpOPrcbKesW9IfHSdwK9vMIR6OGdyu0NXpjSHE3Kba/so+Sq8b
ONLqTz5QUeAyt0uU3ILyYSlgqvrlUICxA3gL+ASu6FqKZwNtW0hYxQC7hKtNu4zS
qrimTkiY1S0xRbs/iKfSuUayvXqDmMv4xRYYXKagi2ggKHi+29S681sG7WmQP+A=
=Glb/
-----END PGP SIGNATURE-----

--7IgncvKP0CVPV/ZZ--
