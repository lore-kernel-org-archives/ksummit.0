Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A38CF93E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 12:53:45 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1BB32115
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 12:53:45 +0000 (UTC)
Date: Thu, 16 Jul 2015 13:53:31 +0100
From: Mark Brown <broonie@sirena.org.uk>
To: Sasha Levin <sasha.levin@kernel.org>
Message-ID: <20150716125331.GF4039@sirena.org.uk>
References: <55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150714104623.GQ11162@sirena.org.uk>
	<55A51548.4040502@oracle.com>
	<20150714152515.GX11162@sirena.org.uk>
	<55A52B8B.5060606@oracle.com>
	<20150714155648.GA11162@sirena.org.uk>
	<55A55CA5.6050506@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Zi0sgQQBxRFxMTsj"
Content-Disposition: inline
In-Reply-To: <55A55CA5.6050506@oracle.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Zi0sgQQBxRFxMTsj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 14, 2015 at 03:01:57PM -0400, Sasha Levin wrote:
> On 07/14/2015 11:56 AM, Mark Brown wrote:

> > That's still sending a change of course which was what was being
> > objected to.

> Lesser of two evils? I can't really come up with a safer solution rather than
> reverting it (not blindly, the revert will need an ack too, and that's assuming
> that the fix is not trivial).

AFAICT any change of any kind would have got the same response.

--Zi0sgQQBxRFxMTsj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVp6lKAAoJECTWi3JdVIfQ3BEH/0wEPIkiPVmt/e61FW8gKmTP
AOjKj1yWJqZ9lNy/ChqJhsUJAOCg9NIL3UCqESvVq6B1YLBrVREH1Al35AR8EKU+
YrGS8NLobvrW8TblWM2yfO/wXXMz89HzcEhQRzJ2jEnU6m/LwAc2QBkv3oWksB6Q
3BBCLQsGUUoEA5BQjgLZvsB0IrIWWQbAuwjXD7uC6ITKv94b8TNbhG6JxguxcdVd
HOoLUh0O/+bcvMPSuCp7v9KCmJun2P5FChiSifxIrOkDnynrmJK/iJDsmS3SGVEB
jJEVT4kAZkYZ5XanyKg7Z3xBh0thBrYdJ2OLeZWsSm0I02Cr++KBqBoZgArQsZ4=
=39al
-----END PGP SIGNATURE-----

--Zi0sgQQBxRFxMTsj--
