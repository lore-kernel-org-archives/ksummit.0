Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19084B50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 17:27:51 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A68BE235
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 17:27:50 +0000 (UTC)
Date: Tue, 20 Jun 2017 18:27:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Message-ID: <20170620172738.zh4maxtfmlwhyrnt@sirena.org.uk>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
	<20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
	<20170620155825.GC409@tigerII.localdomain>
	<3908561D78D1C84285E8C5FCA982C28F612DAC67@ORSMSX114.amr.corp.intel.com>
	<20170620171134.GA444@tigerII.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d6eh77clrx5z7gh5"
Content-Disposition: inline
In-Reply-To: <20170620171134.GA444@tigerII.localdomain>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--d6eh77clrx5z7gh5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 21, 2017 at 02:11:34AM +0900, Sergey Senozhatsky wrote:

> another thing that I found useful is a CPU number of the processor
> that stored a particular line to the logbuf.

At some point we start reinventing ftrace...  there's issues with
joining the two up but there should at least be lessons we can learn.

--d6eh77clrx5z7gh5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllJWwkACgkQJNaLcl1U
h9Dqjwf+IYDDee0i0xzDLh49ePJUupspO0SuolYcfL3dp30Gw9OEj1DQNKX+RCTM
6VEq9Q1WNWrZ58ivlPYTVs7oHxBQ5iVyYQTrh9+8y3k+Hxq6/XANW3Pc5pljctAS
HhqMU3dhdhnEb7VtATAYKxjTYl8wyV3np232bcFg0vzIUoglJkVwzrBovm9gDLgO
seIYUMtcXv6KOeGX8tpcsEcv4eq/ha1IP9riMPpjRKai0k4Xdk24KVWf6z0LWs4P
B9Zezr5Gjw2jre0lKq2smJO6SxmimwJNPzsPgKN0PzR8ZeCc/LNdpzPTJOJaGI72
vmbhXk0Jq/Zvpi1xqtdruMamYT2GUg==
=PR4M
-----END PGP SIGNATURE-----

--d6eh77clrx5z7gh5--
