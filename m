Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42EE7DE1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 21:25:59 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5E6A7FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 21:25:58 +0000 (UTC)
Date: Fri, 23 Aug 2019 22:25:55 +0100
From: Mark Brown <broonie@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190823212555.GV23391@sirena.co.uk>
References: <CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<20190823193832.GE4791@pendragon.ideasonboard.com>
	<alpine.DEB.2.21.1908232150580.1939@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VmyrZ50r30oK77nV"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908232150580.1939@nanos.tec.linutronix.de>
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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


--VmyrZ50r30oK77nV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 23, 2019 at 11:15:55PM +0200, Thomas Gleixner wrote:

> For the maintainer side there was something mentioned about some git-am
> option which allows to insert the link somehow with some extra hook
> magic. IIRC, it's in one of the ksummit threads, but I can't find it right
> now.

It was to have this:

. git-sh-setup
perl -pi -e 's|^Message-Id:\s*<?([^>]+)>?$|Link: https://lore.kernel.org/r/$1|g;' "$1"

in your .git/hooks/applypatch-msg.

--VmyrZ50r30oK77nV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1gWeIACgkQJNaLcl1U
h9Agugf/XnTjHkM5DfY80KLvV0G6fXiGoe09k1flScgFlIAGq23fURny8O3hvq/j
Yom44hSrMQE+IJL4NG39EpUUiAWzlsdN5lbdvlm9V9tBp/FqwycjGxBAZenA0uAe
c1VbndPyfbB4sXZHRrfvFazBOY99VH/Y0zP6xt9rJ4GQg7y1jLOcsaEt4KQQOo/9
fUCv46kNxG6LMvTUXkZEDh78TbpjqGH/A/gHfUuv9d0kD4aYbDHNtJYmHn0ixDt3
8J7lEQmuiA5h1WIFHsSsDadRH43cOd1kdnWdT67D+kjwcZgIjRHinbNqSz7T6S18
grxAz1aIOKDnRLVqi12jKlsgSJO3ug==
=wIL4
-----END PGP SIGNATURE-----

--VmyrZ50r30oK77nV--
