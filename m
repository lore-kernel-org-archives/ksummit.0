Return-Path: <broonie@sirena.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 45C44246C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 15:27:45 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CB8D4881
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 15:27:44 +0000 (UTC)
Date: Mon, 8 Jul 2019 16:27:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20190708152742.GE12731@sirena.co.uk>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
	<102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
	<20190708145045.GC12731@sirena.co.uk>
	<20190708150641.GA1548@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Oiv9uiLrevHtW1RS"
Content-Disposition: inline
In-Reply-To: <20190708150641.GA1548@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Oiv9uiLrevHtW1RS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 08, 2019 at 05:06:41PM +0200, Greg KH wrote:
> On Mon, Jul 08, 2019 at 03:50:45PM +0100, Mark Brown wrote:
> > On Mon, Jul 08, 2019 at 07:05:44AM -0700, Guenter Roeck wrote:

> > > I for my part will most definitely report any such problems, since each
> > > regression in stable releases is used as argument against merging
> > > stable releases (even if the regression rate is negligible), and I am
> > > very interested in getting that regression rate as close to zero as
> > > possible. Reporting each and every regression is an essential part
> > > of that.

> > Me too - but I'm pretty sure for example most of the product
> > teams I've worked with at consumer electronics companies would
> > never even consider it.

> Sweet, want me to come into those teams and give a presentation like I
> did a few months ago for one major company entitled "all the ways your
> kernel is insecure and trivial to break"?

Go wild!  Note that this isn't a case of people not taking
updates, it's often a combination of a general confidentiality
mindset and the fact that if you're taking updates from multiple
sources (eg, LTS and one or more chip vendors) as well as making
your own changes it can be more trouble than it's worth to figure
out where to report anything.

--Oiv9uiLrevHtW1RS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0jYO0ACgkQJNaLcl1U
h9AV/gf/fGwMt7rY9gJMRqIj1vfwATHzDdorYYPB6xp1qpd57xMUtNGQuHqj8U4c
DbWM4no290hTCoFUTHXRmkv60WFAGrMHr6Crn1L74yTCTIR+IwDYWqysx+SxtLXv
wDZyBCh6W5XdNK0xd+G7RNRQYd5ifOeuvQVFRTGu7Bs3OQ1JCrPgVMkcOe3uYyG6
eltR45b6ABc0QMbRUdZ3zrVLu7n+0KexnlE6bb1WfGj/6P/0APQiV0RxhFIRrPI5
acKprHnz8JYaZ5Zb2yNzSGlQpofUZ6un324Ds8FMyYdFGlVbtbSCB1CDty+b4teT
J/Nwl7PgXQKAKkBVM87Aa9euKTivGQ==
=0YNy
-----END PGP SIGNATURE-----

--Oiv9uiLrevHtW1RS--
