Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0FECFB8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 16:23:32 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 72AC313A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 16:23:30 +0000 (UTC)
Date: Mon, 19 Jun 2017 17:23:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o7rrsr6phgy4727x"
Content-Disposition: inline
In-Reply-To: <01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--o7rrsr6phgy4727x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 19, 2017 at 05:54:34PM +0200, Hannes Reinecke wrote:

> I was under the impression that we do this anyway; even ATM every line
> in the printk buffer is prefixed with a timestamp.
> And we should continue with that.

This is a configuration option (PRINTK_TIME) and isn't 100% reliable,
I've got examples in the syslog of my current system with multiple
prints being issued with the same timestamp.

--o7rrsr6phgy4727x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllH+nQACgkQJNaLcl1U
h9C8SAf9FEBR8YN+x0sT84CGRFaxZMBZXpzD18a+pNlLlCW/96ypMaFS59GQY2NK
C+EKZ7uAVtBYD+9Aft4VPqIYnG31eYXLZ2Tw8BaQbgfjyAn4dwNrs5Rhwsnie8Fe
sdhN60MDOB/xjJK2c69Anki6LqEAWHT34DhE9b8E+hyGqXyT0OCne3ygmqSzl4uS
yADS93qwm3ouwU93PQFABJ7DsbcaXzHI0JrsRzKKT+8yhayT9reze5uYLx+WBTeM
LkI71LO3YaKSY9j0+QAKZcKFQNWsahCLvsm3dtXF+7czDXslb74MvV2cgRAHAYZD
tzhfxpS4ahhylW3hBKsaHeAEoJ008w==
=hFYD
-----END PGP SIGNATURE-----

--o7rrsr6phgy4727x--
