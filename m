Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AC41713C7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 10:51:57 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 912831FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 10:51:56 +0000 (UTC)
Date: Tue, 27 Aug 2019 11:51:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190827105153.GB23391@sirena.co.uk>
References: <alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<CAHrFyr6rQHiQAY4Wcv4WzUS2B5tBfrnWvyTjD4ktHvsEBMxkCw@mail.gmail.com>
	<CAD=FV=XGySHprMN+dv6dDKmuTQXnmYg5NStyaOJg+KdNUOFZsQ@mail.gmail.com>
	<CAHk-=whxp0Vm5V6MtaRNC0_ou0=U4-+Y7Ktzq6osU8JgHy_xhQ@mail.gmail.com>
	<20190824230447.GA5163@mit.edu> <20190825031143.GA2590@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iJhwK4DKf9Unwzgv"
Content-Disposition: inline
In-Reply-To: <20190825031143.GA2590@kroah.com>
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


--iJhwK4DKf9Unwzgv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Aug 25, 2019 at 05:11:43AM +0200, Greg Kroah-Hartman wrote:

> When accepting patches from people, my old scripts used to do this
> properly and reply to the sent message-id.  Now that I use git, that's
> lost, except that I now am generating Link: tags in the commit message
> itself, like:
> 	Link: https://lore.kernel.org/r/20190822213659.5501-1-hsiangkao@aol.com

> Hm, I guess I do now keep that info, and I can fix my scripts to
> properly thread things, let me go work on that later today...

What I'm doing for this is that when I apply the patch I save a
git note with the message ID and various other things then when I
push the patch out and generate the "applied, thanks" e-mail I
look for the git note and use that.  My script can also fall back
to patchwork for the lookup but it's not 100% reliable and
greatly increases the network access needs.

--iJhwK4DKf9Unwzgv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1lC0gACgkQJNaLcl1U
h9ASMAf+PZk28YDVl0pP7NXyQGe9J2jjNMT9CR6wP6eOj3+hKDC68lPcY7GDYFb1
yNp6kN72lC0Et1pNpeMoq5jx2DIXBckkYmMdHL8zeGlLtbvTrHrw6B4oI09Lw0KB
zBcy92RUGLZoU6IiNYQ3iAMWwdvMszZMhPLy6OEpC5XmuE5rZRTu/k4SBwiueC3w
7cwHET5dzjdWON92hjOq7THaG7uu4Dr6RWG26Nwy/+F6S1Vbbiyod4VHF+HDU4QF
JIVWww9oq38a4tLqYpCgGY+poseWk9KOp0FGt2stMZil98rq+AX8v7kk3DxArgYU
TkAMXGiN06KgjoHApxHDkH4Gyp0Ofg==
=5j9S
-----END PGP SIGNATURE-----

--iJhwK4DKf9Unwzgv--
