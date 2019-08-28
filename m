Return-Path: <broonie@sirena.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BB1682964
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 10:42:26 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3DC118C2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 10:42:26 +0000 (UTC)
Date: Wed, 28 Aug 2019 11:42:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190828104219.GC4298@sirena.co.uk>
References: <alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
	<CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
	<20190828090837.GA31704@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ABTtc+pdwF7KHXCz"
Content-Disposition: inline
In-Reply-To: <20190828090837.GA31704@kroah.com>
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--ABTtc+pdwF7KHXCz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 28, 2019 at 11:08:37AM +0200, Greg Kroah-Hartman wrote:

> How about this, when sending a v2, you have it be in response to the v1
> patch?  Same for v3, have it be in response for the v2 one.  And so on.

That seems like it might confuse mail readers and have them do
interesting things with threading so they don't group the entire new
version of the series together but instead split it through the earlier
versions.

--ABTtc+pdwF7KHXCz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1mWooACgkQJNaLcl1U
h9A4Rwf/dYHzWfKp2ix/gJ6aptjVCgcs9kioBuwrzrsviO+C8m0ecrSe2QjFVmUa
c81WjLaG6pQ18GP/D+DAM6pe9jUdgLwBkLnEMZREd8h3jKHaIjGSeemy+CAsdlT5
SjYni5xoY5VnO6VpqrSNPvNP0gKahB5DD8ZjohqTqZEdG8wDyen7IS4WSsRZfSNz
eUQmE8yJobhiEzFH11yYvKJdWYv30Jh02il7xaXZ6u78FQJ88+PrfT43phUbG+R2
V2pEF5NVfL/3BQP8rL+hvRjbGti/rCqXvJJynVI5amyDcy9ZqNuKChLYxvckPnY+
V00ZKcAlTid/qdNFLvuxdpZ/jrR0Ug==
=qaht
-----END PGP SIGNATURE-----

--ABTtc+pdwF7KHXCz--
